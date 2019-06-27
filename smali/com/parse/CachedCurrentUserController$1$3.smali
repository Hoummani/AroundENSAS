.class Lcom/parse/CachedCurrentUserController$1$3;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/CachedCurrentUserController$1;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

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
    .line 51
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v1}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-object v0, v1, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 53
    .local v0, "oldCurrentUser":Lcom/parse/ParseUser;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$1$3;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    if-eq v0, v1, :cond_0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->logOutAsync(Z)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/CachedCurrentUserController$1$3$1;

    invoke-direct {v2, p0}, Lcom/parse/CachedCurrentUserController$1$3$1;-><init>(Lcom/parse/CachedCurrentUserController$1$3;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    .line 65
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    return-object p1

    .line 53
    .end local v0    # "oldCurrentUser":Lcom/parse/ParseUser;
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 47
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
