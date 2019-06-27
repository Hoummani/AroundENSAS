.class public Lcom/parse/ParseRESTFileCommand$Builder;
.super Lcom/parse/ParseRESTCommand$Init;
.source "ParseRESTFileCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRESTFileCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRESTCommand$Init",
        "<",
        "Lcom/parse/ParseRESTFileCommand$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentType:Ljava/lang/String;

.field private data:[B

.field private file:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/parse/ParseRESTCommand$Init;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->data:[B

    .line 25
    iput-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->contentType:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {p0, v0}, Lcom/parse/ParseRESTFileCommand$Builder;->method(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/ParseRESTCommand$Init;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTFileCommand$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRESTFileCommand$Builder;)[B
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTFileCommand$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->data:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseRESTFileCommand$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTFileCommand$Builder;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parse/ParseRESTFileCommand$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/parse/ParseRESTFileCommand;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/parse/ParseRESTFileCommand;

    invoke-direct {v0, p0}, Lcom/parse/ParseRESTFileCommand;-><init>(Lcom/parse/ParseRESTFileCommand$Builder;)V

    return-object v0
.end method

.method public contentType(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parse/ParseRESTFileCommand$Builder;->contentType:Ljava/lang/String;

    .line 44
    return-object p0
.end method

.method public data([B)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parse/ParseRESTFileCommand$Builder;->data:[B

    .line 39
    return-object p0
.end method

.method public file(Ljava/io/File;)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/parse/ParseRESTFileCommand$Builder;->file:Ljava/io/File;

    .line 49
    return-object p0
.end method

.method public fileName(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 34
    const-string v0, "files/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseRESTFileCommand$Builder;->httpPath(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseRESTFileCommand$Builder;

    return-object v0
.end method

.method bridge synthetic self()Lcom/parse/ParseRESTCommand$Init;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/parse/ParseRESTFileCommand$Builder;->self()Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/parse/ParseRESTFileCommand$Builder;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method
