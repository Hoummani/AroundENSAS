.class Lcom/parse/ParseObject$32;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleDeleteResultAsync()Lbolts/Task;
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

.field final synthetic val$store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 2201
    iput-object p1, p0, Lcom/parse/ParseObject$32;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$32;->val$store:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 2204
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$32;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2205
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$32;->this$0:Lcom/parse/ParseObject;

    iget-boolean v0, v0, Lcom/parse/ParseObject;->isDeleted:Z

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/parse/ParseObject$32;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseObject$32;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore;->unregisterObject(Lcom/parse/ParseObject;)V

    .line 2207
    iget-object v0, p0, Lcom/parse/ParseObject$32;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseObject$32;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 2209
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$32;->val$store:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/ParseObject$32;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v2}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 2211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2201
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$32;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
