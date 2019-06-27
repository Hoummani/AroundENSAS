.class Lcom/parse/ParseConfigController$1;
.super Ljava/lang/Object;
.source "ParseConfigController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfigController;->getAsync(Ljava/lang/String;)Lbolts/Task;
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
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseConfigController;


# direct methods
.method constructor <init>(Lcom/parse/ParseConfigController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseConfigController;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parse/ParseConfigController$1;->this$0:Lcom/parse/ParseConfigController;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 37
    .local v1, "result":Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseConfig;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseConfig;

    move-result-object v0

    .line 38
    .local v0, "config":Lcom/parse/ParseConfig;
    iget-object v2, p0, Lcom/parse/ParseConfigController$1;->this$0:Lcom/parse/ParseConfigController;

    invoke-static {v2}, Lcom/parse/ParseConfigController;->access$000(Lcom/parse/ParseConfigController;)Lcom/parse/ParseCurrentConfigController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parse/ParseCurrentConfigController;->setCurrentConfigAsync(Lcom/parse/ParseConfig;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseConfigController$1$1;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseConfigController$1$1;-><init>(Lcom/parse/ParseConfigController$1;Lcom/parse/ParseConfig;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

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
    .line 32
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfigController$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
