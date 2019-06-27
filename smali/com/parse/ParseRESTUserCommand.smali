.class Lcom/parse/ParseRESTUserCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTUserCommand.java"


# static fields
.field private static final HEADER_REVOCABLE_SESSION:Ljava/lang/String; = "X-Parse-Revocable-Session"

.field private static final HEADER_TRUE:Ljava/lang/String; = "1"


# instance fields
.field private isRevocableSessionEnabled:Z

.field private statusCode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/http/ParseHttpRequest$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .param p5, "isRevocableSessionEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/http/ParseHttpRequest$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 98
    iput-boolean p5, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    .line 99
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .param p5, "isRevocableSessionEnabled"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 107
    iput-boolean p5, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    .line 108
    return-void
.end method

.method public static getCurrentUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 4
    .param p0, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "users/me"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static logInUserCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42
    .local v3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "username"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "password"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "login"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    const/4 v4, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static resetPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 5
    .param p0, "email"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "email"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    new-instance v1, Lcom/parse/ParseRESTUserCommand;

    const-string v2, "requestPasswordReset"

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public static serviceLogInUserCommand(Ljava/lang/String;Ljava/util/Map;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 5
    .param p0, "authType"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/parse/ParseRESTUserCommand;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, "authenticationData":Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .local v2, "parameters":Lorg/json/JSONObject;
    const-string v3, "authData"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    const/4 v3, 0x0

    invoke-static {v2, v3, p2}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v3

    return-object v3

    .line 59
    .end local v0    # "authenticationData":Lorg/json/JSONObject;
    .end local v2    # "parameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "could not serialize object to JSON"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p0, "parameters"    # Lorg/json/JSONObject;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 68
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "users"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static signUpUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6
    .param p0, "parameters"    # Lorg/json/JSONObject;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 35
    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "users"

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected addAdditionalHeaders(Lcom/parse/http/ParseHttpRequest$Builder;)V
    .locals 2
    .param p1, "requestBuilder"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/parse/ParseRESTCommand;->addAdditionalHeaders(Lcom/parse/http/ParseHttpRequest$Builder;)V

    .line 117
    iget-boolean v0, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "X-Parse-Revocable-Session"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/parse/http/ParseHttpRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 120
    :cond_0
    return-void
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/parse/ParseRESTUserCommand;->statusCode:I

    return v0
.end method

.method protected onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 1
    .param p1, "response"    # Lcom/parse/http/ParseHttpResponse;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseRESTUserCommand;->statusCode:I

    .line 126
    invoke-super {p0, p1, p2}, Lcom/parse/ParseRESTCommand;->onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
