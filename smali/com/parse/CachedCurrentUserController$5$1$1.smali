.class Lcom/parse/CachedCurrentUserController$5$1$1;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$5$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/CachedCurrentUserController$5$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$5$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/CachedCurrentUserController$5$1;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    const/4 v1, 0x1

    .line 243
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 244
    .local v0, "current":Lcom/parse/ParseUser;
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    .local v1, "matchesDisk":Z
    :goto_0
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 247
    :try_start_0
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-object v0, v2, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 248
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-boolean v1, v2, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 249
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    if-eqz v0, :cond_1

    .line 252
    iget-object v3, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 253
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setIsCurrentUser(Z)V

    .line 254
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    .end local v0    # "current":Lcom/parse/ParseUser;
    :goto_1
    return-object v0

    .line 244
    .end local v1    # "matchesDisk":Z
    .restart local v0    # "current":Lcom/parse/ParseUser;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 249
    .restart local v1    # "matchesDisk":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 254
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-boolean v2, v2, Lcom/parse/CachedCurrentUserController$5;->val$shouldAutoCreateUser:Z

    if-eqz v2, :cond_2

    .line 259
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$200(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseUser;

    move-result-object v0

    goto :goto_1

    .line 261
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$5$1$1;->then(Lbolts/Task;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
