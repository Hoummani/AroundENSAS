.class Lcom/parse/ParseUser$16;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseUser;

    .prologue
    .line 1389
    iput-object p1, p0, Lcom/parse/ParseUser$16;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$16;->val$operations:Lcom/parse/ParseOperationSet;

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
    .line 1392
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$16;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseUser$16;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-interface {v0, v1, v2}, Lcom/parse/ParseUserController;->logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$16$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$16$1;-><init>(Lcom/parse/ParseUser$16;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 1389
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
