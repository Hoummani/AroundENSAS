.class Lcom/parse/ParseUserCurrentCoder;
.super Lcom/parse/ParseObjectCurrentCoder;
.source "ParseUserCurrentCoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseUserCurrentCoder;

.field private static final KEY_AUTH_DATA:Ljava/lang/String; = "auth_data"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "session_token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/parse/ParseUserCurrentCoder;

    invoke-direct {v0}, Lcom/parse/ParseUserCurrentCoder;-><init>()V

    sput-object v0, Lcom/parse/ParseUserCurrentCoder;->INSTANCE:Lcom/parse/ParseUserCurrentCoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parse/ParseObjectCurrentCoder;-><init>()V

    .line 35
    return-void
.end method

.method public static get()Lcom/parse/ParseUserCurrentCoder;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/parse/ParseUserCurrentCoder;->INSTANCE:Lcom/parse/ParseUserCurrentCoder;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;
    .locals 8
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;>(TT;",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "builder":Lcom/parse/ParseObject$State$Init;, "TT;"
    const/4 v7, 0x0

    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObjectCurrentCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseUser$State$Builder;

    .line 104
    .local v5, "userBuilder":Lcom/parse/ParseUser$State$Builder;
    const-string v6, "session_token"

    invoke-virtual {p2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "newSessionToken":Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    .line 107
    const-string v6, "auth_data"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    .local v3, "newAuthData":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 109
    invoke-virtual {v5, v7}, Lcom/parse/ParseUser$State$Builder;->authData(Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;

    .line 126
    :cond_0
    return-object v5

    .line 113
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 114
    .local v1, "i":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 118
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v6

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 117
    invoke-virtual {v5, v2, v6}, Lcom/parse/ParseUser$State$Builder;->putAuthData(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 121
    .end local v1    # "i":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .param p3, "encoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "state":Lcom/parse/ParseObject$State;, "TT;"
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObjectCurrentCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v2

    .local v2, "objectJSON":Lorg/json/JSONObject;
    move-object v4, p1

    .line 65
    check-cast v4, Lcom/parse/ParseUser$State;

    invoke-virtual {v4}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "sessionToken":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 68
    :try_start_0
    const-string v4, "session_token"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :cond_0
    check-cast p1, Lcom/parse/ParseUser$State;

    .end local p1    # "state":Lcom/parse/ParseObject$State;, "TT;"
    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->authData()Ljava/util/Map;

    move-result-object v0

    .line 75
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 77
    :try_start_1
    const-string v4, "auth_data"

    invoke-virtual {p3, v0}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :cond_1
    return-object v2

    .line 69
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local p1    # "state":Lcom/parse/ParseObject$State;, "TT;"
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "could not encode value for key: session_token"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    .end local v1    # "e":Lorg/json/JSONException;
    .end local p1    # "state":Lcom/parse/ParseObject$State;, "TT;"
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_1
    move-exception v1

    .line 79
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "could not attach key: auth_data"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
