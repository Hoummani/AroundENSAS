.class Lcom/parse/ParseCloudCodeController;
.super Ljava/lang/Object;
.source "ParseCloudCodeController.java"


# instance fields
.field final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 0
    .param p1, "restClient"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parse/ParseCloudCodeController;->restClient:Lcom/parse/ParseHttpClient;

    .line 24
    return-void
.end method


# virtual methods
.method public callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1, p2, p3}, Lcom/parse/ParseRESTCloudCommand;->callFunctionCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTCloudCommand;

    move-result-object v0

    .line 32
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/ParseCloudCodeController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseCloudCodeController$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseCloudCodeController$1;-><init>(Lcom/parse/ParseCloudCodeController;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v3, p1, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 47
    check-cast v2, Lorg/json/JSONObject;

    .line 48
    .local v2, "jsonResult":Lorg/json/JSONObject;
    const-string v3, "result"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    .end local v2    # "jsonResult":Lorg/json/JSONObject;
    :cond_0
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    .line 52
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    invoke-virtual {v0, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 53
    .local v1, "finalResult":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 57
    .end local v1    # "finalResult":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v1    # "finalResult":Ljava/lang/Object;
    :cond_1
    move-object v1, p1

    goto :goto_0
.end method
