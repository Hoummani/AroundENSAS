.class final Lcom/facebook/internal/FetchedAppGateKeepersManager$1;
.super Ljava/lang/Object;
.source "FetchedAppGateKeepersManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FetchedAppGateKeepersManager;->loadAppGateKeepersAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gateKeepersKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 75
    iget-object v6, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$context:Landroid/content/Context;

    const-string v7, "com.facebook.internal.preferences.APP_GATEKEEPERS"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 78
    .local v4, "gateKeepersSharedPrefs":Landroid/content/SharedPreferences;
    iget-object v6, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "gateKeepersJSONString":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "gateKeepersJSON":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "gateKeepersJSON":Lorg/json/JSONObject;
    .local v1, "gateKeepersJSON":Lorg/json/JSONObject;
    move-object v0, v1

    .line 89
    .end local v1    # "gateKeepersJSON":Lorg/json/JSONObject;
    .restart local v0    # "gateKeepersJSON":Lorg/json/JSONObject;
    :goto_0
    if-eqz v0, :cond_0

    .line 90
    iget-object v6, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 94
    .end local v0    # "gateKeepersJSON":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v6}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$100(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 95
    .local v3, "gateKeepersResultJSON":Lorg/json/JSONObject;
    if-eqz v3, :cond_1

    .line 96
    iget-object v6, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$applicationId:Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->access$000(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 98
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/internal/FetchedAppGateKeepersManager$1;->val$gateKeepersKey:Ljava/lang/String;

    .line 99
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 100
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    :cond_1
    return-void

    .line 86
    .end local v3    # "gateKeepersResultJSON":Lorg/json/JSONObject;
    .restart local v0    # "gateKeepersJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 87
    .local v5, "je":Lorg/json/JSONException;
    const-string v6, "FacebookSDK"

    invoke-static {v6, v5}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
