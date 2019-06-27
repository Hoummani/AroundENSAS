.class Lcom/parse/OfflineStore$OfflineEncoder$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$OfflineEncoder;->whenFinished()Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$OfflineEncoder;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$OfflineEncoder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/OfflineStore$OfflineEncoder;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

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
    .line 101
    .local p1, "ignore":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    invoke-static {v1}, Lcom/parse/OfflineStore$OfflineEncoder;->access$000(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    invoke-static {v1}, Lcom/parse/OfflineStore$OfflineEncoder;->access$100(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 104
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    :cond_1
    monitor-exit v2

    .line 109
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v0

    .line 108
    :cond_2
    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineEncoder$1;->this$1:Lcom/parse/OfflineStore$OfflineEncoder;

    invoke-static {v1}, Lcom/parse/OfflineStore$OfflineEncoder;->access$100(Lcom/parse/OfflineStore$OfflineEncoder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v2

    goto :goto_0

    .line 110
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
    .line 98
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$OfflineEncoder$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
