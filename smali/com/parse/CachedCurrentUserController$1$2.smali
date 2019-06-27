.class Lcom/parse/CachedCurrentUserController$1$2;
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
    .line 67
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1$2;->this$1:Lcom/parse/CachedCurrentUserController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
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
    .line 70
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$2;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setIsCurrentUser(Z)V

    .line 71
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$2;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->synchronizeAllAuthDataAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
