.class Lcom/parse/ParseUser$8$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$8;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseUser$8;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseUser$8;

    .prologue
    .line 700
    iput-object p1, p0, Lcom/parse/ParseUser$8$1;->this$1:Lcom/parse/ParseUser$8;

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
    .line 703
    .local p1, "signUpTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    .line 704
    .local v0, "result":Lcom/parse/ParseUser$State;
    iget-object v1, p0, Lcom/parse/ParseUser$8$1;->this$1:Lcom/parse/ParseUser$8;

    iget-object v1, v1, Lcom/parse/ParseUser$8;->this$0:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$8$1;->this$1:Lcom/parse/ParseUser$8;

    iget-object v2, v2, Lcom/parse/ParseUser$8;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseUser;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$8$1$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseUser$8$1$1;-><init>(Lcom/parse/ParseUser$8$1;Lbolts/Task;)V

    .line 705
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 704
    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 700
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$8$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
