.class Lcom/parse/ParseTaskUtils;
.super Ljava/lang/Object;
.source "ParseTaskUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p1, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;
    .locals 1
    .param p2, "reportCancellation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/parse/ParseCallback1",
            "<",
            "Lcom/parse/ParseException;",
            ">;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p1, "callback":Lcom/parse/ParseCallback1;, "Lcom/parse/ParseCallback1<Lcom/parse/ParseException;>;"
    if-nez p1, :cond_0

    .line 72
    .end local p0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object p0

    .restart local p0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    new-instance v0, Lcom/parse/ParseTaskUtils$1;

    invoke-direct {v0, p1}, Lcom/parse/ParseTaskUtils$1;-><init>(Lcom/parse/ParseCallback1;)V

    invoke-static {p0, v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    move-result-object p0

    goto :goto_0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;
    .locals 2
    .param p2, "reportCancellation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TT;",
            "Lcom/parse/ParseException;",
            ">;Z)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .local p1, "callback":Lcom/parse/ParseCallback2;, "Lcom/parse/ParseCallback2<TT;Lcom/parse/ParseException;>;"
    if-nez p1, :cond_0

    .line 131
    .end local p0    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :goto_0
    return-object p0

    .line 100
    .restart local p0    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_0
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 101
    .local v0, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TT;>;"
    new-instance v1, Lcom/parse/ParseTaskUtils$2;

    invoke-direct {v1, p2, v0, p1}, Lcom/parse/ParseTaskUtils$2;-><init>(ZLbolts/TaskCompletionSource;Lcom/parse/ParseCallback2;)V

    invoke-virtual {p0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 131
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    goto :goto_0
.end method

.method static wait(Lbolts/Task;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lbolts/Task;->waitForCompletion()V

    .line 30
    invoke-virtual {p0}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    .line 32
    .local v1, "error":Ljava/lang/Exception;
    instance-of v2, v1, Lcom/parse/ParseException;

    if-eqz v2, :cond_0

    .line 33
    check-cast v1, Lcom/parse/ParseException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 35
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    instance-of v2, v1, Lbolts/AggregateException;

    if-eqz v2, :cond_1

    .line 36
    new-instance v2, Lcom/parse/ParseException;

    invoke-direct {v2, v1}, Lcom/parse/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 38
    :cond_1
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 39
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "error":Ljava/lang/Exception;
    throw v1

    .line 41
    .restart local v1    # "error":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 42
    .end local v1    # "error":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p0}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 45
    :cond_4
    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2
.end method
