.class Lcom/parse/NetworkUserController$3;
.super Ljava/lang/Object;
.source "NetworkUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkUserController;->logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseUser$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkUserController;

.field final synthetic val$command:Lcom/parse/ParseRESTUserCommand;


# direct methods
.method constructor <init>(Lcom/parse/NetworkUserController;Lcom/parse/ParseRESTUserCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/NetworkUserController;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/parse/NetworkUserController$3;->this$0:Lcom/parse/NetworkUserController;

    iput-object p2, p0, Lcom/parse/NetworkUserController$3;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser$State;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseUser$State;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 90
    .local v2, "result":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/NetworkUserController$3;->val$command:Lcom/parse/ParseRESTUserCommand;

    invoke-virtual {v4}, Lcom/parse/ParseRESTUserCommand;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc9

    if-ne v4, v5, :cond_0

    move v1, v0

    .line 91
    .local v1, "isNew":Z
    :goto_0
    if-nez v1, :cond_1

    .line 93
    .local v0, "isComplete":Z
    :goto_1
    iget-object v3, p0, Lcom/parse/NetworkUserController$3;->this$0:Lcom/parse/NetworkUserController;

    invoke-static {v3}, Lcom/parse/NetworkUserController;->access$000(Lcom/parse/NetworkUserController;)Lcom/parse/ParseObjectCoder;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v4}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseUser$State$Builder;

    .line 94
    invoke-virtual {v3, v0}, Lcom/parse/ParseUser$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseUser$State$Builder;

    .line 95
    invoke-virtual {v3, v1}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v3

    .line 93
    return-object v3

    .end local v0    # "isComplete":Z
    .end local v1    # "isNew":Z
    :cond_0
    move v1, v3

    .line 90
    goto :goto_0

    .restart local v1    # "isNew":Z
    :cond_1
    move v0, v3

    .line 91
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
    .line 83
    invoke-virtual {p0, p1}, Lcom/parse/NetworkUserController$3;->then(Lbolts/Task;)Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method
