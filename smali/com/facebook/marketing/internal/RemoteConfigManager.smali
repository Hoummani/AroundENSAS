.class public Lcom/facebook/marketing/internal/RemoteConfigManager;
.super Ljava/lang/Object;
.source "RemoteConfigManager.java"


# static fields
.field private static final SAMPLING_ENDPOINT_PATH:Ljava/lang/String; = "%s/button_auto_detection_device_selection"

.field private static final SAMPLING_RESULT_FIELD:Ljava/lang/String; = "is_selected"

.field private static final TAG:Ljava/lang/String;

.field private static final remoteConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/marketing/internal/RemoteConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/facebook/marketing/internal/RemoteConfigManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/internal/RemoteConfigManager;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/marketing/internal/RemoteConfigManager;->remoteConfigs:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/facebook/marketing/internal/RemoteConfigManager;->getRemoteConfigQueryResponse(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/facebook/marketing/internal/RemoteConfigManager;->parseRemoteConfigFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static getRemoteConfigQueryResponse(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 8
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "advertiserId"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s/button_auto_detection_device_selection"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    invoke-static {v1, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "publishUrl":Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v3, "publishParams":Landroid/os/Bundle;
    const-string v1, "device_id"

    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "fields"

    const-string v4, "is_selected"

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 85
    .local v0, "request":Lcom/facebook/GraphRequest;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 86
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    .end local v0    # "request":Lcom/facebook/GraphRequest;
    .end local v2    # "publishUrl":Ljava/lang/String;
    .end local v3    # "publishParams":Landroid/os/Bundle;
    :goto_0
    return-object v1

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/facebook/marketing/internal/RemoteConfigManager;->TAG:Ljava/lang/String;

    const-string v4, "fail to request button sampling api"

    invoke-static {v1, v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public static getRemoteConfigWithoutQuery(Ljava/lang/String;)Lcom/facebook/marketing/internal/RemoteConfig;
    .locals 1
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 71
    if-eqz p0, :cond_0

    sget-object v0, Lcom/facebook/marketing/internal/RemoteConfigManager;->remoteConfigs:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/marketing/internal/RemoteConfig;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadRemoteConfig()V
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/marketing/internal/RemoteConfigManager$1;

    invoke-direct {v1}, Lcom/facebook/marketing/internal/RemoteConfigManager$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method

.method private static parseRemoteConfigFromJSON(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 6
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    .line 97
    const-string v4, "data"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 98
    .local v0, "data":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 99
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    .local v3, "result":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 101
    const-string v4, "is_selected"

    .line 102
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 103
    .local v1, "enableButtonIndexing":Z
    new-instance v2, Lcom/facebook/marketing/internal/RemoteConfig;

    invoke-direct {v2, v1}, Lcom/facebook/marketing/internal/RemoteConfig;-><init>(Z)V

    .line 104
    .local v2, "remoteConfig":Lcom/facebook/marketing/internal/RemoteConfig;
    sget-object v4, Lcom/facebook/marketing/internal/RemoteConfigManager;->remoteConfigs:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .end local v1    # "enableButtonIndexing":Z
    .end local v2    # "remoteConfig":Lcom/facebook/marketing/internal/RemoteConfig;
    .end local v3    # "result":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
