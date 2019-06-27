.class public final Lcom/facebook/marketing/internal/MarketingLogger;
.super Ljava/lang/Object;
.source "MarketingLogger.java"


# static fields
.field static final ACTIVITY_NAME:Ljava/lang/String; = "_activity_name"

.field static final CODELESS_ACTION_GESTURE_TRIGGERED:Ljava/lang/String; = "gesture_triggered"

.field static final CODELESS_ACTION_INDEXING_CANCELLED:Ljava/lang/String; = "indexing_cancelled"

.field static final CODELESS_ACTION_INDEXING_COMPLETE:Ljava/lang/String; = "indexing_complete"

.field static final CODELESS_ACTION_INDEXING_START:Ljava/lang/String; = "indexing_start"

.field static final CODELESS_ACTION_KEY:Ljava/lang/String; = "_codeless_action"

.field static final CODELESS_ACTION_SDK_INITIALIZED:Ljava/lang/String; = "sdk_initialized"

.field static final CODELESS_ACTION_SESSION_READY:Ljava/lang/String; = "session_ready"

.field static final EVENT_NAME_CODELESS_DEBUG:Ljava/lang/String; = "fb_codeless_debug"


# instance fields
.field private final appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1, p2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 47
    return-void
.end method


# virtual methods
.method public logCodelessInitialized()V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessDebugLogEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "_codeless_action"

    const-string v2, "sdk_initialized"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_codeless_debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logGestureTriggered()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessDebugLogEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "_codeless_action"

    const-string v2, "gesture_triggered"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_codeless_debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logIndexingCancelled(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessDebugLogEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "_codeless_action"

    const-string v2, "indexing_cancelled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "_activity_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_codeless_debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logIndexingComplete(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessDebugLogEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "_codeless_action"

    const-string v2, "indexing_complete"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "_activity_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_codeless_debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logIndexingStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessDebugLogEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "_codeless_action"

    const-string v2, "indexing_start"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "_activity_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_codeless_debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public logSessionReady()V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/facebook/FacebookSdk;->getCodelessDebugLogEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "_codeless_action"

    const-string v2, "session_ready"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/facebook/marketing/internal/MarketingLogger;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    const-string v2, "fb_codeless_debug"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    goto :goto_0
.end method
