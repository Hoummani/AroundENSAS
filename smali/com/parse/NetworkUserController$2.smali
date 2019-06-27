.class Lcom/parse/NetworkUserController$2;
.super Ljava/lang/Object;
.source "NetworkUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkUserController;->logInAsync(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
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


# direct methods
.method constructor <init>(Lcom/parse/NetworkUserController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/NetworkUserController;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/parse/NetworkUserController$2;->this$0:Lcom/parse/NetworkUserController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser$State;
    .locals 4
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
    .line 67
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 69
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/parse/NetworkUserController$2;->this$0:Lcom/parse/NetworkUserController;

    invoke-static {v1}, Lcom/parse/NetworkUserController;->access$000(Lcom/parse/NetworkUserController;)Lcom/parse/ParseObjectCoder;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v2}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser$State$Builder;

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Lcom/parse/ParseUser$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser$State$Builder;

    .line 71
    invoke-virtual {v1}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v1

    .line 69
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
    .line 64
    invoke-virtual {p0, p1}, Lcom/parse/NetworkUserController$2;->then(Lbolts/Task;)Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method
