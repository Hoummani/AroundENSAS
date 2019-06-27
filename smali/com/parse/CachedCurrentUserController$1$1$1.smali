.class Lcom/parse/CachedCurrentUserController$1$1$1;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$1$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$2:Lcom/parse/CachedCurrentUserController$1$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/CachedCurrentUserController$1$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

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
    .line 76
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1$1$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
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
    .line 79
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v2, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 81
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    iput-object v2, v0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 82
    monitor-exit v1

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
