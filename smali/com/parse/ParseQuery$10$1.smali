.class Lcom/parse/ParseQuery$10$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$10;->call()Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$10;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseQuery$10;

    .prologue
    .line 1536
    .local p0, "this":Lcom/parse/ParseQuery$10$1;, "Lcom/parse/ParseQuery$10$1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1539
    .local p0, "this":Lcom/parse/ParseQuery$10$1;, "Lcom/parse/ParseQuery$10$1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseUser;

    .line 1540
    .local v3, "user":Lcom/parse/ParseUser;
    new-instance v4, Lcom/parse/ParseQuery$State$Builder;

    iget-object v5, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v5, v5, Lcom/parse/ParseQuery$10;->val$state:Lcom/parse/ParseQuery$State;

    invoke-direct {v4, v5}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State;)V

    sget-object v5, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    .line 1541
    invoke-virtual {v4, v5}, Lcom/parse/ParseQuery$State$Builder;->setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v4

    .line 1542
    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1543
    .local v0, "cacheState":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v4, Lcom/parse/ParseQuery$State$Builder;

    iget-object v5, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v5, v5, Lcom/parse/ParseQuery$10;->val$state:Lcom/parse/ParseQuery$State;

    invoke-direct {v4, v5}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State;)V

    sget-object v5, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    .line 1544
    invoke-virtual {v4, v5}, Lcom/parse/ParseQuery$State$Builder;->setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v4

    .line 1545
    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v2

    .line 1547
    .local v2, "networkState":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v4, v4, Lcom/parse/ParseQuery$10;->val$delegate:Lcom/parse/ParseQuery$CacheThenNetworkCallable;

    iget-object v5, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v5, v5, Lcom/parse/ParseQuery$10;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v5}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v0, v3, v5}, Lcom/parse/ParseQuery$CacheThenNetworkCallable;->call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    .line 1548
    .local v1, "executionTask":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v4, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v4, v4, Lcom/parse/ParseQuery$10;->val$callback:Lcom/parse/ParseCallback2;

    invoke-static {v1, v4}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    move-result-object v1

    .line 1549
    new-instance v4, Lcom/parse/ParseQuery$10$1$1;

    invoke-direct {v4, p0, v2, v3}, Lcom/parse/ParseQuery$10$1$1;-><init>(Lcom/parse/ParseQuery$10$1;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1536
    .local p0, "this":Lcom/parse/ParseQuery$10$1;, "Lcom/parse/ParseQuery$10$1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$10$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
