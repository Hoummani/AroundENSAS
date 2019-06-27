.class Lcom/parse/ParseObject$43$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$43;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseObject$State;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject$43;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$43;Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject$43;

    .prologue
    .line 2629
    iput-object p1, p0, Lcom/parse/ParseObject$43$1;->this$0:Lcom/parse/ParseObject$43;

    iput-object p2, p0, Lcom/parse/ParseObject$43$1;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/ParseObject$43$1;->val$operations:Lcom/parse/ParseOperationSet;

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
            "Lcom/parse/ParseObject$State;",
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
    .line 2632
    .local p1, "batchTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject$State;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State;

    .line 2633
    .local v0, "result":Lcom/parse/ParseObject$State;
    iget-object v1, p0, Lcom/parse/ParseObject$43$1;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/ParseObject$43$1;->val$operations:Lcom/parse/ParseOperationSet;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$43$1$1;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseObject$43$1$1;-><init>(Lcom/parse/ParseObject$43$1;Lbolts/Task;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

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
    .line 2629
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$43$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
