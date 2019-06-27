.class Lcom/parse/ParsePinningEventuallyQueue$12;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        "Lbolts/Task",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 465
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {v1}, Lcom/parse/ParsePinningEventuallyQueue;->access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 472
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 469
    .end local v0    # "error":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 474
    .restart local v0    # "error":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$12;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

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
    .line 462
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$12;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
