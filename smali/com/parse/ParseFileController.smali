.class Lcom/parse/ParseFileController;
.super Ljava/lang/Object;
.source "ParseFileController.java"


# instance fields
.field private final cachePath:Ljava/io/File;

.field private fileClient:Lcom/parse/ParseHttpClient;

.field private final lock:Ljava/lang/Object;

.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;Ljava/io/File;)V
    .locals 1
    .param p1, "restClient"    # Lcom/parse/ParseHttpClient;
    .param p2, "cachePath"    # Ljava/io/File;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFileController;->lock:Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/parse/ParseFileController;->restClient:Lcom/parse/ParseHttpClient;

    .line 34
    iput-object p2, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    .line 35
    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 74
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 80
    :cond_0
    return-void

    .line 77
    :cond_1
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 78
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 7
    .param p1, "state"    # Lcom/parse/ParseFile$State;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .param p3, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseFile$State;",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    .local p4, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController;->getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v2

    .line 183
    .local v2, "cacheFile":Ljava/io/File;
    new-instance v0, Lcom/parse/ParseFileController$4;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseFileController$4;-><init>(Lcom/parse/ParseFileController;Ljava/io/File;)V

    .line 188
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 183
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v6

    new-instance v0, Lcom/parse/ParseFileController$3;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseFileController$3;-><init>(Lcom/parse/ParseFileController;Ljava/io/File;Lbolts/Task;Lcom/parse/ParseFile$State;Lcom/parse/ProgressCallback;)V

    .line 188
    invoke-virtual {v6, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method fileClient(Lcom/parse/ParseHttpClient;)Lcom/parse/ParseFileController;
    .locals 2
    .param p1, "fileClient"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/parse/ParseFileController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseFileController;->fileClient:Lcom/parse/ParseHttpClient;

    .line 53
    monitor-exit v1

    .line 54
    return-object p0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method fileClient()Lcom/parse/ParseHttpClient;
    .locals 2

    .prologue
    .line 42
    iget-object v1, p0, Lcom/parse/ParseFileController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseFileController;->fileClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->fileClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFileController;->fileClient:Lcom/parse/ParseHttpClient;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFileController;->fileClient:Lcom/parse/ParseHttpClient;

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;
    .locals 3
    .param p1, "state"    # Lcom/parse/ParseFile$State;

    .prologue
    .line 58
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getTempFile(Lcom/parse/ParseFile$State;)Ljava/io/File;
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseFile$State;

    .prologue
    .line 62
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDataAvailable(Lcom/parse/ParseFile$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/parse/ParseFile$State;

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController;->getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public saveAsync(Lcom/parse/ParseFile$State;Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseFile$State;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseFile$State;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseFile$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p5, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 148
    :goto_0
    return-object v1

    .line 137
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Lcom/parse/ParseRESTFileCommand$Builder;

    invoke-direct {v1}, Lcom/parse/ParseRESTFileCommand$Builder;-><init>()V

    .line 142
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseRESTFileCommand$Builder;->fileName(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, p2}, Lcom/parse/ParseRESTFileCommand$Builder;->file(Ljava/io/File;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseRESTFileCommand$Builder;->contentType(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p3}, Lcom/parse/ParseRESTFileCommand$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseRESTFileCommand$Builder;

    .line 146
    invoke-virtual {v1}, Lcom/parse/ParseRESTFileCommand$Builder;->build()Lcom/parse/ParseRESTFileCommand;

    move-result-object v0

    .line 148
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/ParseFileController;->restClient:Lcom/parse/ParseHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p5}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFileController$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseFileController$2;-><init>(Lcom/parse/ParseFileController;Lcom/parse/ParseFile$State;Ljava/io/File;)V

    .line 171
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 153
    invoke-virtual {v1, v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public saveAsync(Lcom/parse/ParseFile$State;[BLjava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseFile$State;
    .param p2, "data"    # [B
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseFile$State;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseFile$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p5, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    invoke-static {p1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 102
    :goto_0
    return-object v1

    .line 91
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 95
    :cond_1
    new-instance v1, Lcom/parse/ParseRESTFileCommand$Builder;

    invoke-direct {v1}, Lcom/parse/ParseRESTFileCommand$Builder;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseRESTFileCommand$Builder;->fileName(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1, p2}, Lcom/parse/ParseRESTFileCommand$Builder;->data([B)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v1

    .line 98
    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseRESTFileCommand$Builder;->contentType(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, p3}, Lcom/parse/ParseRESTFileCommand$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseRESTFileCommand$Builder;

    .line 100
    invoke-virtual {v1}, Lcom/parse/ParseRESTFileCommand$Builder;->build()Lcom/parse/ParseRESTFileCommand;

    move-result-object v0

    .line 102
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/ParseFileController;->restClient:Lcom/parse/ParseHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p5}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFileController$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseFileController$1;-><init>(Lcom/parse/ParseFileController;Lcom/parse/ParseFile$State;[B)V

    .line 125
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 107
    invoke-virtual {v1, v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method
