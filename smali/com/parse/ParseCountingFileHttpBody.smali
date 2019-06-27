.class Lcom/parse/ParseCountingFileHttpBody;
.super Lcom/parse/ParseFileHttpBody;
.source "ParseCountingFileHttpBody.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000

.field private static final EOF:I = -0x1


# instance fields
.field private final progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCountingFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30
    iput-object p3, p0, Lcom/parse/ParseCountingFileHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    .line 31
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Output stream may not be null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 39
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/parse/ParseCountingFileHttpBody;->file:Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 41
    .local v1, "fileInput":Ljava/io/FileInputStream;
    const/16 v8, 0x1000

    :try_start_0
    new-array v0, v8, [B

    .line 43
    .local v0, "buffer":[B
    iget-object v8, p0, Lcom/parse/ParseCountingFileHttpBody;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 44
    .local v6, "totalLength":J
    const-wide/16 v4, 0x0

    .line 45
    .local v4, "position":J
    :cond_1
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, "n":I
    if-eq v8, v2, :cond_2

    .line 46
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 47
    int-to-long v8, v2

    add-long/2addr v4, v8

    .line 49
    iget-object v8, p0, Lcom/parse/ParseCountingFileHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    if-eqz v8, :cond_1

    .line 50
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v4

    div-long/2addr v8, v6

    long-to-int v3, v8

    .line 51
    .local v3, "progress":I
    iget-object v8, p0, Lcom/parse/ParseCountingFileHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 55
    .end local v0    # "buffer":[B
    .end local v2    # "n":I
    .end local v3    # "progress":I
    .end local v4    # "position":J
    .end local v6    # "totalLength":J
    :catchall_0
    move-exception v8

    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v8

    .restart local v0    # "buffer":[B
    .restart local v2    # "n":I
    .restart local v4    # "position":J
    .restart local v6    # "totalLength":J
    :cond_2
    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 57
    return-void
.end method
