.class Lcom/parse/ParseCountingByteArrayHttpBody;
.super Lcom/parse/ParseByteArrayHttpBody;
.source "ParseCountingByteArrayHttpBody.java"


# static fields
.field private static final DEFAULT_CHUNK_SIZE:I = 0x1000


# instance fields
.field private final progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method public constructor <init>([BLjava/lang/String;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "content"    # [B
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseByteArrayHttpBody;-><init>([BLjava/lang/String;)V

    .line 26
    iput-object p3, p0, Lcom/parse/ParseCountingByteArrayHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    .line 27
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 36
    .local v1, "position":I
    iget-object v4, p0, Lcom/parse/ParseCountingByteArrayHttpBody;->content:[B

    array-length v3, v4

    .line 37
    .local v3, "totalLength":I
    :cond_1
    :goto_0
    if-ge v1, v3, :cond_2

    .line 38
    sub-int v4, v3, v1

    const/16 v5, 0x1000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 40
    .local v0, "length":I
    iget-object v4, p0, Lcom/parse/ParseCountingByteArrayHttpBody;->content:[B

    invoke-virtual {p1, v4, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 41
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 43
    iget-object v4, p0, Lcom/parse/ParseCountingByteArrayHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    if-eqz v4, :cond_1

    .line 44
    add-int/2addr v1, v0

    .line 46
    mul-int/lit8 v4, v1, 0x64

    div-int v2, v4, v3

    .line 47
    .local v2, "progress":I
    iget-object v4, p0, Lcom/parse/ParseCountingByteArrayHttpBody;->progressCallback:Lcom/parse/ProgressCallback;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V

    goto :goto_0

    .line 50
    .end local v0    # "length":I
    .end local v2    # "progress":I
    :cond_2
    return-void
.end method
