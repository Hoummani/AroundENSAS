.class Lcom/parse/ParseRESTSessionCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTSessionCommand.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "jsonParameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static getCurrentSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/parse/ParseRESTSessionCommand;

    const-string v1, "sessions/me"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTSessionCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static revoke(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/parse/ParseRESTSessionCommand;

    const-string v1, "logout"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTSessionCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static upgradeToRevocableSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/parse/ParseRESTSessionCommand;

    const-string v1, "upgradeToRevocableSession"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTSessionCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method
