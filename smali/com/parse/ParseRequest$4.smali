.class Lcom/parse/ParseRequest$4;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TResponse;",
        "Lbolts/Task",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$attemptsMade:I

.field final synthetic val$cancellationToken:Lbolts/Task;

.field final synthetic val$client:Lcom/parse/ParseHttpClient;

.field final synthetic val$delay:J

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$request:Lcom/parse/http/ParseHttpRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lbolts/Task;IJLcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseRequest;

    .prologue
    .line 217
    .local p0, "this":Lcom/parse/ParseRequest$4;, "Lcom/parse/ParseRequest$4;"
    iput-object p1, p0, Lcom/parse/ParseRequest$4;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$4;->val$cancellationToken:Lbolts/Task;

    iput p3, p0, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    iput-wide p4, p0, Lcom/parse/ParseRequest$4;->val$delay:J

    iput-object p6, p0, Lcom/parse/ParseRequest$4;->val$client:Lcom/parse/ParseHttpClient;

    iput-object p7, p0, Lcom/parse/ParseRequest$4;->val$request:Lcom/parse/http/ParseHttpRequest;

    iput-object p8, p0, Lcom/parse/ParseRequest$4;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

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
            "<TResponse;>;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lcom/parse/ParseRequest$4;, "Lcom/parse/ParseRequest$4;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v0, Lcom/parse/ParseException;

    if-eqz v2, :cond_0

    .line 222
    iget-object v2, p0, Lcom/parse/ParseRequest$4;->val$cancellationToken:Lbolts/Task;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parse/ParseRequest$4;->val$cancellationToken:Lbolts/Task;

    invoke-virtual {v2}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object p1

    .line 263
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 226
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    :cond_1
    instance-of v2, v0, Lcom/parse/ParseRequest$ParseRequestException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/parse/ParseRequest$ParseRequestException;

    .end local v0    # "e":Ljava/lang/Exception;
    iget-boolean v2, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    if-nez v2, :cond_0

    .line 231
    :cond_2
    iget v2, p0, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    invoke-static {}, Lcom/parse/ParseRequest;->access$000()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 232
    const-string v2, "com.parse.ParseRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request failed. Waiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/parse/ParseRequest$4;->val$delay:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " milliseconds before attempt #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    new-instance v1, Lbolts/TaskCompletionSource;

    invoke-direct {v1}, Lbolts/TaskCompletionSource;-><init>()V

    .line 236
    .local v1, "retryTask":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TResponse;>;"
    invoke-static {}, Lcom/parse/ParseExecutors;->scheduled()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseRequest$4$1;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseRequest$4$1;-><init>(Lcom/parse/ParseRequest$4;Lbolts/TaskCompletionSource;)V

    iget-wide v4, p0, Lcom/parse/ParseRequest$4;->val$delay:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 260
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p1

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
    .line 217
    .local p0, "this":Lcom/parse/ParseRequest$4;, "Lcom/parse/ParseRequest$4;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
