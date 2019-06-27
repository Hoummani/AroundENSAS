.class Lcom/parse/NetworkSessionController$2;
.super Ljava/lang/Object;
.source "NetworkSessionController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkSessionController;->upgradeToRevocable(Ljava/lang/String;)Lbolts/Task;
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
        "Lcom/parse/ParseObject$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkSessionController;


# direct methods
.method constructor <init>(Lcom/parse/NetworkSessionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/NetworkSessionController;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/parse/NetworkSessionController$2;->this$0:Lcom/parse/NetworkSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseObject$State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseObject$State;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 57
    .local v0, "result":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/parse/NetworkSessionController$2;->this$0:Lcom/parse/NetworkSessionController;

    invoke-static {v1}, Lcom/parse/NetworkSessionController;->access$000(Lcom/parse/NetworkSessionController;)Lcom/parse/ParseObjectCoder;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$State$Builder;

    const-string v3, "_Session"

    invoke-direct {v2, v3}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject$State$Builder;

    const/4 v2, 0x1

    .line 58
    invoke-virtual {v1, v2}, Lcom/parse/ParseObject$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject$State$Builder;

    .line 59
    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Builder;->build()Lcom/parse/ParseObject$State;

    move-result-object v1

    .line 57
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
    .line 53
    invoke-virtual {p0, p1}, Lcom/parse/NetworkSessionController$2;->then(Lbolts/Task;)Lcom/parse/ParseObject$State;

    move-result-object v0

    return-object v0
.end method
