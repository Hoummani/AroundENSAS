.class Lcom/parse/ParseUser$16$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$16;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser$State;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$16;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$16;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseUser$16;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/parse/ParseUser$16$1;->this$1:Lcom/parse/ParseUser$16;

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
            "Lcom/parse/ParseUser$State;",
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
    .line 1395
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    .line 1400
    .local v0, "result":Lcom/parse/ParseUser$State;
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1401
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 1411
    .local v1, "resultTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
    :goto_0
    new-instance v2, Lcom/parse/ParseUser$16$1$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$16$1$2;-><init>(Lcom/parse/ParseUser$16$1;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1403
    .end local v1    # "resultTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser$16$1;->this$1:Lcom/parse/ParseUser$16;

    iget-object v2, v2, Lcom/parse/ParseUser$16;->this$0:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseUser$16$1;->this$1:Lcom/parse/ParseUser$16;

    iget-object v3, v3, Lcom/parse/ParseUser$16;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v0, v3}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$16$1$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$16$1$1;-><init>(Lcom/parse/ParseUser$16$1;Lcom/parse/ParseUser$State;)V

    .line 1404
    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "resultTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
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
    .line 1392
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
