.class Lcom/parse/ParseFileController$3;
.super Ljava/lang/Object;
.source "ParseFileController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFileController;->fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        "Lbolts/Task",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFileController;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$cancellationToken:Lbolts/Task;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$state:Lcom/parse/ParseFile$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseFileController;Ljava/io/File;Lbolts/Task;Lcom/parse/ParseFile$State;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFileController;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/parse/ParseFileController$3;->this$0:Lcom/parse/ParseFileController;

    iput-object p2, p0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    iput-object p3, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:Lbolts/Task;

    iput-object p4, p0, Lcom/parse/ParseFileController$3;->val$state:Lcom/parse/ParseFile$State;

    iput-object p5, p0, Lcom/parse/ParseFileController$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 192
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 211
    :goto_0
    return-object v3

    .line 195
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:Lbolts/Task;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:Lbolts/Task;

    invoke-virtual {v3}, Lbolts/Task;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 204
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseFileController$3;->this$0:Lcom/parse/ParseFileController;

    iget-object v4, p0, Lcom/parse/ParseFileController$3;->val$state:Lcom/parse/ParseFile$State;

    invoke-virtual {v3, v4}, Lcom/parse/ParseFileController;->getTempFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v2

    .line 207
    .local v2, "tempFile":Ljava/io/File;
    new-instance v0, Lcom/parse/ParseFileRequest;

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    iget-object v4, p0, Lcom/parse/ParseFileController$3;->val$state:Lcom/parse/ParseFile$State;

    .line 208
    invoke-virtual {v4}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v2}, Lcom/parse/ParseFileRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Ljava/io/File;)V

    .line 211
    .local v0, "request":Lcom/parse/ParseFileRequest;
    iget-object v3, p0, Lcom/parse/ParseFileController$3;->this$0:Lcom/parse/ParseFileController;

    .line 212
    invoke-virtual {v3}, Lcom/parse/ParseFileController;->fileClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parse/ParseFileController$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    iget-object v6, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:Lbolts/Task;

    .line 211
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/parse/ParseFileRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseFileController$3$1;

    invoke-direct {v4, p0, v2}, Lcom/parse/ParseFileController$3$1;-><init>(Lcom/parse/ParseFileController$3;Ljava/io/File;)V

    .line 234
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v5

    .line 215
    invoke-virtual {v3, v4, v5}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
