.class Lcom/parse/ParseRESTObjectCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTObjectCommand.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private static createObjectCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "changes"    # Lorg/json/JSONObject;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v1, "classes/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 7
    .param p0, "state"    # Lcom/parse/ParseObject$State;
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 63
    const-string v2, "classes/%s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "httpPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "objectId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/%s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    new-instance v2, Lcom/parse/ParseRESTObjectCommand;

    sget-object v3, Lcom/parse/http/ParseHttpRequest$Method;->DELETE:Lcom/parse/http/ParseHttpRequest$Method;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4, p1}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v1, "classes/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 2
    .param p0, "state"    # Lcom/parse/ParseObject$State;
    .param p1, "operations"    # Lorg/json/JSONObject;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v0, p1, p2}, Lcom/parse/ParseRESTObjectCommand;->createObjectCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1, p1, p2}, Lcom/parse/ParseRESTObjectCommand;->updateObjectCommand(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateObjectCommand(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "changes"    # Lorg/json/JSONObject;
    .param p3, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v1, "classes/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "httpPath":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-direct {v1, v0, v2, p2, p3}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method
