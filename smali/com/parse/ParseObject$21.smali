.class Lcom/parse/ParseObject$21;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:Lcom/parse/ParseObject$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

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
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1959
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    iget-object v2, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1961
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

    .line 1968
    .local v0, "newState":Lcom/parse/ParseObject$State;
    :goto_0
    iget-object v1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 1969
    monitor-exit v2

    .line 1970
    const/4 v1, 0x0

    return-object v1

    .line 1966
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject$21;->val$result:Lcom/parse/ParseObject$State;

    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .restart local v0    # "newState":Lcom/parse/ParseObject$State;
    goto :goto_0

    .line 1969
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1956
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
