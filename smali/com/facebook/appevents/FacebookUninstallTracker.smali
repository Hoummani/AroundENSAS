.class public Lcom/facebook/appevents/FacebookUninstallTracker;
.super Ljava/lang/Object;
.source "FacebookUninstallTracker.java"


# static fields
.field private static final PLATFORM:Ljava/lang/String; = "android"

.field private static final SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOADED_TOKEN_STORE:Ljava/lang/String; = "com.facebook.appevents.FacebookUninstallTracker.UPLOADED_TOKEN"

.field private static final uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const-class v0, Lcom/facebook/appevents/FacebookUninstallTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->TAG:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.appevents.FacebookUninstallTracker.UPLOADED_TOKEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/facebook/appevents/FacebookUninstallTracker;->buildPushDeviceTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/appevents/FacebookUninstallTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static buildPushDeviceTokenRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;
    .locals 11
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "deviceToken"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 117
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s/app_push_device_token"

    new-array v8, v10, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    .line 118
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-static {v5, v6, v5, v5}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 121
    .local v3, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3, v10}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 123
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 125
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    .line 126
    .local v2, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-nez v2, :cond_0

    move-object v3, v5

    .line 139
    .end local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :goto_0
    return-object v3

    .line 129
    .restart local v3    # "postRequest":Lcom/facebook/GraphRequest;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "deviceId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 131
    .local v4, "requestParameters":Landroid/os/Bundle;
    if-nez v4, :cond_1

    .line 132
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 134
    .restart local v4    # "requestParameters":Landroid/os/Bundle;
    :cond_1
    const-string v5, "device_id"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v5, "device_token"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v5, "platform"

    const-string v6, "android"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v3, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static sendToServer(Ljava/lang/String;)V
    .locals 2
    .param p0, "deviceToken"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/FacebookUninstallTracker$1;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/FacebookUninstallTracker$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    return-void
.end method

.method public static updateDeviceToken(Ljava/lang/String;)V
    .locals 10
    .param p0, "deviceToken"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 58
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 61
    .local v1, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getTrackUninstallEnabled()Z

    move-result v3

    .line 65
    .local v3, "nowTrackUninstallEnabled":Z
    sget-object v6, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "uploaded_token"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "uploadedToken":Ljava/lang/String;
    sget-object v6, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "pre_track_uninstall_enabled"

    .line 67
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 68
    .local v4, "preTrackUninstallEnabled":Z
    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    .line 69
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 70
    :cond_2
    invoke-static {p0}, Lcom/facebook/appevents/FacebookUninstallTracker;->sendToServer(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    .line 72
    sget-object v6, Lcom/facebook/appevents/FacebookUninstallTracker;->uploadedTokenSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 73
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "pre_track_uninstall_enabled"

    invoke-interface {v2, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
