.class Lcom/parse/NetworkUserController$4;
.super Ljava/lang/Object;
.source "NetworkUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkUserController;->logInAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
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

.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$command:Lcom/parse/ParseRESTUserCommand;


# direct methods
.method constructor <init>(Lcom/parse/NetworkUserController;Lcom/parse/ParseRESTUserCommand;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/NetworkUserController;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parse/NetworkUserController$4;->this$0:Lcom/parse/NetworkUserController;

    iput-object p2, p0, Lcom/parse/NetworkUserController$4;->val$command:Lcom/parse/ParseRESTUserCommand;

    iput-object p3, p0, Lcom/parse/NetworkUserController$4;->val$authType:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/NetworkUserController$4;->val$authData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser$State;
    .locals 5
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
    const/4 v2, 0x1

    .line 109
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 111
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/parse/NetworkUserController$4;->this$0:Lcom/parse/NetworkUserController;

    invoke-static {v1}, Lcom/parse/NetworkUserController;->access$000(Lcom/parse/NetworkUserController;)Lcom/parse/ParseObjectCoder;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v3}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser$State$Builder;

    .line 112
    invoke-virtual {v1, v2}, Lcom/parse/ParseUser$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser$State$Builder;

    iget-object v3, p0, Lcom/parse/NetworkUserController$4;->val$command:Lcom/parse/ParseRESTUserCommand;

    .line 113
    invoke-virtual {v3}, Lcom/parse/ParseRESTUserCommand;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc9

    if-ne v3, v4, :cond_0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/NetworkUserController$4;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/NetworkUserController$4;->val$authData:Ljava/util/Map;

    .line 114
    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseUser$State$Builder;->putAuthData(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v1

    .line 111
    return-object v1

    .line 113
    :cond_0
    const/4 v2, 0x0

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
    .line 106
    invoke-virtual {p0, p1}, Lcom/parse/NetworkUserController$4;->then(Lbolts/Task;)Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method
