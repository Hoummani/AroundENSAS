.class Lcom/parse/ParseFileRequest;
.super Lcom/parse/ParseRequest;
.source "ParseFileRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final tempFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Ljava/io/File;)V
    .locals 0
    .param p1, "method"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "tempFile"    # Ljava/io/File;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;)V

    .line 32
    iput-object p3, p0, Lcom/parse/ParseFileRequest;->tempFile:Ljava/io/File;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseFileRequest;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFileRequest;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/ParseFileRequest;->tempFile:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method protected onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 8
    .param p1, "response"    # Lcom/parse/http/ParseHttpResponse;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getStatusCode()I

    move-result v1

    .line 39
    .local v1, "statusCode":I
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x130

    if-ne v1, v2, :cond_2

    .line 47
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseFileRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    if-eq v2, v3, :cond_4

    .line 48
    const/4 v2, 0x0

    .line 51
    :goto_0
    return-object v2

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/parse/ParseFileRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    if-ne v2, v3, :cond_3

    const-string v0, "Download from"

    .line 43
    .local v0, "action":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/parse/ParseException;

    const/16 v3, 0x64

    const-string v4, "%s file server failed. %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    .line 44
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 43
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 42
    .end local v0    # "action":Ljava/lang/String;
    :cond_3
    const-string v0, "Upload to"

    goto :goto_1

    .line 51
    :cond_4
    new-instance v2, Lcom/parse/ParseFileRequest$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseFileRequest$1;-><init>(Lcom/parse/ParseFileRequest;Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)V

    .line 80
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 51
    invoke-static {v2, v3}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method
