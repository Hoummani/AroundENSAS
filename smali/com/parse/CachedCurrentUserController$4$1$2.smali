.class Lcom/parse/CachedCurrentUserController$4$1$2;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$4$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$2:Lcom/parse/CachedCurrentUserController$4$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/CachedCurrentUserController$4$1;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$4$1$2;->this$2:Lcom/parse/CachedCurrentUserController$4$1;

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
    .line 190
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$4$1$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    .line 193
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 194
    .local v0, "deleted":Z
    :goto_0
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$4$1$2;->this$2:Lcom/parse/CachedCurrentUserController$4$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v1}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$4$1$2;->this$2:Lcom/parse/CachedCurrentUserController$4$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-boolean v0, v1, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 196
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController$4$1$2;->this$2:Lcom/parse/CachedCurrentUserController$4$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iget-object v1, v1, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 197
    monitor-exit v2

    .line 198
    return-object v4

    .line 193
    .end local v0    # "deleted":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    .restart local v0    # "deleted":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
