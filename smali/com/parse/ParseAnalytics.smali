.class public Lcom/parse/ParseAnalytics;
.super Ljava/lang/Object;
.source "ParseAnalytics.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseAnalytics"

.field private static final lruSeenPushes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/parse/ParseAnalytics$3;

    invoke-direct {v0}, Lcom/parse/ParseAnalytics$3;-><init>()V

    sput-object v0, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clear()V
    .locals 2

    .prologue
    .line 221
    sget-object v1, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    monitor-enter v1

    .line 222
    :try_start_0
    sget-object v0, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static getAnalyticsController()Lcom/parse/ParseAnalyticsController;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getAnalyticsController()Lcom/parse/ParseAnalyticsController;

    move-result-object v0

    return-object v0
.end method

.method static getPushHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "pushData":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 229
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.parse.Data"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_0
    if-nez v2, :cond_1

    .line 232
    const/4 v3, 0x0

    .line 241
    :goto_0
    return-object v3

    .line 234
    :cond_1
    const/4 v3, 0x0

    .line 236
    .local v3, "pushHash":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v1, "payload":Lorg/json/JSONObject;
    const-string v4, "push_hash"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 238
    .end local v1    # "payload":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "com.parse.ParseAnalytics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse push data: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackAppOpened(Landroid/content/Intent;)V
    .locals 0
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;

    .line 75
    return-void
.end method

.method public static trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->getPushHashFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "pushHashStr":Ljava/lang/String;
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 50
    .local v0, "pushHash":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 51
    sget-object v3, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    monitor-enter v3

    .line 52
    :try_start_0
    sget-object v2, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    .line 60
    :goto_0
    return-object v2

    .line 55
    :cond_0
    sget-object v2, Lcom/parse/ParseAnalytics;->lruSeenPushes:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 58
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseAnalytics$1;

    invoke-direct {v3, v0}, Lcom/parse/ParseAnalytics$1;-><init>(Lbolts/Capture;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static trackAppOpenedInBackground(Landroid/content/Intent;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 88
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 89
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 96
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 97
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    .line 118
    return-void
.end method

.method public static trackEventInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-static {p0, v0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 195
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A name for the custom event must be provided."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    :cond_1
    if-eqz p1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 198
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 201
    .local v0, "dimensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseAnalytics$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseAnalytics$2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 198
    .end local v0    # "dimensionsCopy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackEventInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 109
    invoke-static {p0}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 110
    return-void
.end method

.method public static trackEventInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 144
    return-void
.end method
