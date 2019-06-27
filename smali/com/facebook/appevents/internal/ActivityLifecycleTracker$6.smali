.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->checkCodelessSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 366
    const/4 v9, 0x0

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s/app_indexing_session"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;->val$applicationId:Ljava/lang/String;

    aput-object v14, v12, v13

    .line 368
    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 366
    invoke-static {v9, v10, v11, v12}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v6

    .line 372
    .local v6, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v7

    .line 373
    .local v7, "requestParameters":Landroid/os/Bundle;
    if-nez v7, :cond_0

    .line 374
    new-instance v7, Landroid/os/Bundle;

    .end local v7    # "requestParameters":Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 377
    .restart local v7    # "requestParameters":Landroid/os/Bundle;
    :cond_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    .line 381
    .local v3, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 382
    .local v2, "extInfoArray":Lorg/json/JSONArray;
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v9, :cond_2

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 383
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 384
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 388
    :goto_1
    const-string v9, "0"

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 389
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->isEmulator()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "1"

    :goto_2
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 391
    invoke-static {}, Lcom/facebook/internal/Utility;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v5

    .line 392
    .local v5, "locale":Ljava/util/Locale;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 393
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "extInfo":Ljava/lang/String;
    const-string v9, "device_session_id"

    .line 395
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentDeviceSessionID()Ljava/lang/String;

    move-result-object v10

    .line 394
    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v9, "extinfo"

    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {v6, v7}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 399
    if-eqz v6, :cond_1

    .line 400
    invoke-virtual {v6}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v8

    .line 401
    .local v8, "res":Lcom/facebook/GraphResponse;
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 402
    .local v4, "jsonRes":Lorg/json/JSONObject;
    if-eqz v4, :cond_5

    const-string v9, "is_app_indexing_enabled"

    const/4 v10, 0x0

    .line 403
    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    .line 402
    :goto_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1002(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 404
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1000()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    .line 405
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1102(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    .end local v4    # "jsonRes":Lorg/json/JSONObject;
    .end local v8    # "res":Lcom/facebook/GraphResponse;
    :cond_1
    :goto_4
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1302(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 412
    return-void

    .line 382
    .end local v1    # "extInfo":Ljava/lang/String;
    .end local v5    # "locale":Ljava/util/Locale;
    :cond_2
    const-string v9, ""

    goto/16 :goto_0

    .line 386
    :cond_3
    const-string v9, ""

    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 389
    :cond_4
    const-string v9, "0"

    goto :goto_2

    .line 403
    .restart local v1    # "extInfo":Ljava/lang/String;
    .restart local v4    # "jsonRes":Lorg/json/JSONObject;
    .restart local v5    # "locale":Ljava/util/Locale;
    .restart local v8    # "res":Lcom/facebook/GraphResponse;
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 407
    :cond_6
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1200()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V

    goto :goto_4
.end method
