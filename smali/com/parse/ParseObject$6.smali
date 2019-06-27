.class Lcom/parse/ParseObject$6;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

.field final synthetic val$result:Lcom/parse/ParseObject$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$6;->val$result:Lcom/parse/ParseObject$State;

    iput-object p3, p0, Lcom/parse/ParseObject$6;->val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1453
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$6;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1456
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    iget-object v2, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1458
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject$6;->val$result:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/parse/ParseObject$6;->val$result:Lcom/parse/ParseObject$State;

    .line 1468
    .local v0, "newState":Lcom/parse/ParseObject$State;
    :goto_0
    iget-object v1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 1469
    monitor-exit v2

    .line 1470
    const/4 v1, 0x0

    return-object v1

    .line 1463
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject$6;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject$6;->val$operationsBeforeSave:Lcom/parse/ParseOperationSet;

    .line 1464
    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject$6;->val$result:Lcom/parse/ParseObject$State;

    .line 1465
    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    .line 1466
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .restart local v0    # "newState":Lcom/parse/ParseObject$State;
    goto :goto_0

    .line 1469
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
