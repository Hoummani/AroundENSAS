.class public Lgithub/taivo/parsepushplugin/ParsePushPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ParsePushPlugin.java"


# static fields
.field private static final ACTION_GET_INSTALLATION_ID:Ljava/lang/String; = "getInstallationId"

.field private static final ACTION_GET_INSTALLATION_OBJECT_ID:Ljava/lang/String; = "getInstallationObjectId"

.field private static final ACTION_GET_SUBSCRIPTIONS:Ljava/lang/String; = "getSubscriptions"

.field private static final ACTION_REGISTER_CALLBACK:Ljava/lang/String; = "registerCallback"

.field private static final ACTION_REGISTER_FOR_PN:Ljava/lang/String; = "register"

.field public static final ACTION_RESET_BADGE:Ljava/lang/String; = "resetBadge"

.field public static final ACTION_SET_BADGE:Ljava/lang/String; = "setBadge"

.field private static final ACTION_SUBSCRIBE:Ljava/lang/String; = "subscribe"

.field private static final ACTION_UNSUBSCRIBE:Ljava/lang/String; = "unsubscribe"

.field public static final LOGTAG:Ljava/lang/String; = "ParsePushPlugin"

.field private static gEventCallback:Lorg/apache/cordova/CallbackContext;

.field private static gForeground:Z

.field private static gWebView:Lorg/apache/cordova/CordovaWebView;

.field private static helperPause:Z

.field private static pnQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/cordova/PluginResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->pnQueue:Ljava/util/Queue;

    .line 38
    sput-boolean v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gForeground:Z

    .line 39
    sput-boolean v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->helperPause:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private static flushPNQueue()V
    .locals 2

    .prologue
    .line 175
    :goto_0
    sget-object v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->pnQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    .line 176
    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    sget-object v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->pnQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/PluginResult;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method private getInstallationId(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 91
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin$1;

    invoke-direct {v1, p0, p1}, Lgithub/taivo/parsepushplugin/ParsePushPlugin$1;-><init>(Lgithub/taivo/parsepushplugin/ParsePushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method private getInstallationObjectId(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 100
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin$2;

    invoke-direct {v1, p0, p1}, Lgithub/taivo/parsepushplugin/ParsePushPlugin$2;-><init>(Lgithub/taivo/parsepushplugin/ParsePushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 106
    return-void
.end method

.method private getSubscriptions(Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 109
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin$3;

    invoke-direct {v1, p0, p1}, Lgithub/taivo/parsepushplugin/ParsePushPlugin$3;-><init>(Lgithub/taivo/parsepushplugin/ParsePushPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public static isInForeground()Z
    .locals 1

    .prologue
    .line 210
    sget-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gForeground:Z

    return v0
.end method

.method public static jsCallback(Lorg/json/JSONObject;)V
    .locals 1
    .param p0, "_json"    # Lorg/json/JSONObject;

    .prologue
    .line 142
    const-string v0, "RECEIVE"

    invoke-static {p0, v0}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->jsCallback(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static jsCallback(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 4
    .param p0, "_json"    # Lorg/json/JSONObject;
    .param p1, "pushAction"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v0, "cbParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/cordova/PluginResult;>;"
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, p0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    const-string v2, "OPEN"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    sget-boolean v2, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->helperPause:Z

    if-eqz v2, :cond_1

    .line 153
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, p0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 159
    .local v1, "dataResult":Lorg/apache/cordova/PluginResult;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 161
    sget-object v2, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    if-eqz v2, :cond_3

    .line 162
    sget-object v2, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 172
    :cond_0
    :goto_1
    return-void

    .line 155
    .end local v1    # "dataResult":Lorg/apache/cordova/PluginResult;
    :cond_1
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/util/List;)V

    .restart local v1    # "dataResult":Lorg/apache/cordova/PluginResult;
    goto :goto_0

    .line 157
    .end local v1    # "dataResult":Lorg/apache/cordova/PluginResult;
    :cond_2
    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v1, v2, p0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .restart local v1    # "dataResult":Lorg/apache/cordova/PluginResult;
    goto :goto_0

    .line 167
    :cond_3
    sget-object v2, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->pnQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 169
    sget-object v2, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->pnQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private registerDeviceForPN(Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 135
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 136
    return-void
.end method

.method private subscribe(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 122
    invoke-static {p1}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 123
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 124
    return-void
.end method

.method private unsubscribe(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 127
    invoke-static {p1}, Lcom/parse/ParsePush;->unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 128
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 129
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 45
    const-string v2, "registerCallback"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    sput-object p3, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    .line 48
    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->pnQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-static {}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->flushPNQueue()V

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    const-string v2, "getInstallationId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-direct {p0, p3}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->getInstallationId(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v2, "getInstallationObjectId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    invoke-direct {p0, p3}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->getInstallationObjectId(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "getSubscriptions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-direct {p0, p3}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->getSubscriptions(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 67
    :cond_4
    const-string v2, "subscribe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->subscribe(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v2, "unsubscribe"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 72
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->unsubscribe(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 75
    :cond_6
    const-string v2, "resetBadge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 76
    iget-object v1, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->resetBadge(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :cond_7
    const-string v2, "setBadge"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 80
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->setBadge(ILandroid/content/Context;)V

    goto :goto_0

    .line 83
    :cond_8
    const-string v2, "register"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 84
    invoke-direct {p0, p3}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->registerDeviceForPN(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    :cond_9
    move v0, v1

    .line 87
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 201
    sput-object v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    .line 202
    sput-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gForeground:Z

    .line 203
    sput-object v1, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gEventCallback:Lorg/apache/cordova/CallbackContext;

    .line 204
    sput-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->helperPause:Z

    .line 206
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 207
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 188
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gForeground:Z

    .line 190
    const/4 v0, 0x1

    sput-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->helperPause:Z

    .line 191
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 195
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gForeground:Z

    .line 197
    return-void
.end method

.method protected pluginInitialize()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    sput-object v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gWebView:Lorg/apache/cordova/CordovaWebView;

    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->gForeground:Z

    .line 184
    return-void
.end method
