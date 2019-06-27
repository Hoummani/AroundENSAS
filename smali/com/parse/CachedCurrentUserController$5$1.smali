.class Lcom/parse/CachedCurrentUserController$5$1;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$5;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$5;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/CachedCurrentUserController$5;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "ignored":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-object v0, v2, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 226
    .local v0, "current":Lcom/parse/ParseUser;
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-boolean v1, v2, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 227
    .local v1, "matchesDisk":Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 240
    :goto_0
    return-object v2

    .line 227
    .end local v0    # "current":Lcom/parse/ParseUser;
    .end local v1    # "matchesDisk":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 233
    .restart local v0    # "current":Lcom/parse/ParseUser;
    .restart local v1    # "matchesDisk":Z
    :cond_0
    if-eqz v1, :cond_2

    .line 234
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-boolean v2, v2, Lcom/parse/CachedCurrentUserController$5;->val$shouldAutoCreateUser:Z

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$200(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseUser;

    move-result-object v2

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 237
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/parse/ParseObjectStore;->getAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/CachedCurrentUserController$5$1$1;

    invoke-direct {v3, p0}, Lcom/parse/CachedCurrentUserController$5$1$1;-><init>(Lcom/parse/CachedCurrentUserController$5$1;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

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
    .line 219
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$5$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
