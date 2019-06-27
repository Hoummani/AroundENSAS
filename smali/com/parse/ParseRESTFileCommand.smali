.class Lcom/parse/ParseRESTFileCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTFileCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRESTFileCommand$Builder;
    }
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final data:[B

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/parse/ParseRESTFileCommand$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/parse/ParseRESTFileCommand$Builder;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/parse/ParseRESTCommand;-><init>(Lcom/parse/ParseRESTCommand$Init;)V

    .line 68
    invoke-static {p1}, Lcom/parse/ParseRESTFileCommand$Builder;->access$000(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/parse/ParseRESTFileCommand$Builder;->access$100(Lcom/parse/ParseRESTFileCommand$Builder;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File and data can not be set at the same time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-static {p1}, Lcom/parse/ParseRESTFileCommand$Builder;->access$100(Lcom/parse/ParseRESTFileCommand$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    .line 72
    invoke-static {p1}, Lcom/parse/ParseRESTFileCommand$Builder;->access$200(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/parse/ParseRESTFileCommand$Builder;->access$000(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand;->file:Ljava/io/File;

    .line 74
    return-void
.end method


# virtual methods
.method protected newBody(Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpBody;
    .locals 3
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 81
    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    if-eqz v0, :cond_0

    new-instance v0, Lcom/parse/ParseByteArrayHttpBody;

    iget-object v1, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    iget-object v2, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseByteArrayHttpBody;-><init>([BLjava/lang/String;)V

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Lcom/parse/ParseFileHttpBody;

    iget-object v1, p0, Lcom/parse/ParseRESTFileCommand;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    if-eqz v0, :cond_2

    new-instance v0, Lcom/parse/ParseCountingByteArrayHttpBody;

    iget-object v1, p0, Lcom/parse/ParseRESTFileCommand;->data:[B

    iget-object v2, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/parse/ParseCountingByteArrayHttpBody;-><init>([BLjava/lang/String;Lcom/parse/ProgressCallback;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/parse/ParseCountingFileHttpBody;

    iget-object v1, p0, Lcom/parse/ParseRESTFileCommand;->file:Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParseRESTFileCommand;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lcom/parse/ParseCountingFileHttpBody;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;)V

    goto :goto_0
.end method
