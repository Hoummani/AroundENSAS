.class Lcom/parse/ParseRESTPushCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTPushCommand.java"


# static fields
.field static final KEY_CHANNELS:Ljava/lang/String; = "channels"

.field static final KEY_DATA:Ljava/lang/String; = "data"

.field static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field static final KEY_EXPIRATION_INTERVAL:Ljava/lang/String; = "expiration_interval"

.field static final KEY_EXPIRATION_TIME:Ljava/lang/String; = "expiration_time"

.field static final KEY_PUSH_TIME:Ljava/lang/String; = "push_time"

.field static final KEY_WHERE:Ljava/lang/String; = "where"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static sendPushCommand(Lcom/parse/ParseQuery$State;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTPushCommand;
    .locals 7
    .param p2, "targetDeviceType"    # Ljava/lang/String;
    .param p3, "expirationTime"    # Ljava/lang/Long;
    .param p4, "expirationInterval"    # Ljava/lang/Long;
    .param p5, "pushTime"    # Ljava/lang/Long;
    .param p6, "payload"    # Lorg/json/JSONObject;
    .param p7, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTPushCommand;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "query":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<Lcom/parse/ParseInstallation;>;"
    .local p1, "targetChannels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 42
    .local v1, "parameters":Lorg/json/JSONObject;
    if-eqz p1, :cond_3

    .line 43
    :try_start_0
    const-string v4, "channels"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :goto_0
    if-eqz p3, :cond_7

    .line 62
    const-string v4, "expiration_time"

    invoke-virtual {v1, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    :cond_0
    :goto_1
    if-eqz p5, :cond_1

    .line 68
    const-string v4, "push_time"

    invoke-virtual {v1, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_1
    if-eqz p6, :cond_2

    .line 72
    const-string v4, "data"

    invoke-virtual {v1, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_2
    new-instance v4, Lcom/parse/ParseRESTPushCommand;

    const-string v5, "push"

    sget-object v6, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-direct {v4, v5, v6, v1, p7}, Lcom/parse/ParseRESTPushCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v4

    .line 45
    :cond_3
    const/4 v3, 0x0

    .line 46
    .local v3, "whereJSON":Lorg/json/JSONObject;
    if-eqz p0, :cond_4

    .line 47
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v2

    .line 48
    .local v2, "where":Lcom/parse/ParseQuery$QueryConstraints;
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "whereJSON":Lorg/json/JSONObject;
    check-cast v3, Lorg/json/JSONObject;

    .line 50
    .end local v2    # "where":Lcom/parse/ParseQuery$QueryConstraints;
    .restart local v3    # "whereJSON":Lorg/json/JSONObject;
    :cond_4
    if-eqz p2, :cond_5

    .line 51
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "whereJSON":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .restart local v3    # "whereJSON":Lorg/json/JSONObject;
    const-string v4, "deviceType"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    :cond_5
    if-nez v3, :cond_6

    .line 56
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "whereJSON":Lorg/json/JSONObject;
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 58
    .restart local v3    # "whereJSON":Lorg/json/JSONObject;
    :cond_6
    const-string v4, "where"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 75
    .end local v3    # "whereJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 63
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_7
    if-eqz p4, :cond_0

    .line 64
    :try_start_2
    const-string v4, "expiration_interval"

    invoke-virtual {v1, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method
