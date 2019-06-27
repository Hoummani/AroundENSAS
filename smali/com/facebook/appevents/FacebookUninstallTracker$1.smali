.class final Lcom/facebook/appevents/FacebookUninstallTracker$1;
.super Ljava/lang/Object;
.source "FacebookUninstallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/FacebookUninstallTracker;->sendToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$deviceToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/appevents/FacebookUninstallTracker$1;->val$deviceToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 86
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "appId":Ljava/lang/String;
    iget-object v6, p0, Lcom/facebook/appevents/FacebookUninstallTracker$1;->val$deviceToken:Ljava/lang/String;

    invoke-static {v0, v6}, Lcom/facebook/appevents/FacebookUninstallTracker;->access$000(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v4

    .line 89
    .local v4, "request":Lcom/facebook/GraphRequest;
    if-eqz v4, :cond_0

    .line 90
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v5

    .line 92
    .local v5, "res":Lcom/facebook/GraphResponse;
    :try_start_0
    invoke-virtual {v5}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    .line 93
    .local v3, "jsonRes":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 94
    const-string v6, "success"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "success"

    .line 95
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 96
    invoke-static {}, Lcom/facebook/appevents/FacebookUninstallTracker;->access$100()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 97
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "uploaded_token"

    iget-object v7, p0, Lcom/facebook/appevents/FacebookUninstallTracker$1;->val$deviceToken:Ljava/lang/String;

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pre_track_uninstall_enabled"

    const/4 v8, 0x1

    .line 98
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 99
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "jsonRes":Lorg/json/JSONObject;
    .end local v5    # "res":Lcom/facebook/GraphResponse;
    :cond_0
    :goto_0
    return-void

    .line 101
    .restart local v3    # "jsonRes":Lorg/json/JSONObject;
    .restart local v5    # "res":Lcom/facebook/GraphResponse;
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/FacebookUninstallTracker;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error sending device token to Facebook: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 102
    invoke-virtual {v5}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 101
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v3    # "jsonRes":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/appevents/FacebookUninstallTracker;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error decoding server response."

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
