.class Lcom/parse/CachedCurrentUserController$4$1;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$4;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/CachedCurrentUserController$4;

.field final synthetic val$userTask:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$4;Lbolts/Task;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/CachedCurrentUserController$4;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iput-object p2, p0, Lcom/parse/CachedCurrentUserController$4$1;->val$userTask:Lbolts/Task;

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
    .line 179
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$4$1;->val$userTask:Lbolts/Task;

    new-instance v3, Lcom/parse/CachedCurrentUserController$4$1$1;

    invoke-direct {v3, p0}, Lcom/parse/CachedCurrentUserController$4$1$1;-><init>(Lcom/parse/CachedCurrentUserController$4$1;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 190
    .local v1, "logOutTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$4$1;->this$1:Lcom/parse/CachedCurrentUserController$4;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$4;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;

    move-result-object v2

    invoke-interface {v2}, Lcom/parse/ParseObjectStore;->deleteAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/CachedCurrentUserController$4$1$2;

    invoke-direct {v3, p0}, Lcom/parse/CachedCurrentUserController$4$1$2;-><init>(Lcom/parse/CachedCurrentUserController$4$1;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 201
    .local v0, "diskTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Lbolts/Task;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$4$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
