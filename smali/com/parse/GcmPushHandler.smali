.class Lcom/parse/GcmPushHandler;
.super Ljava/lang/Object;
.source "GcmPushHandler.java"

# interfaces
.implements Lcom/parse/PushHandler;


# static fields
.field static final RECEIVE_PUSH_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field static final REGISTER_RESPONSE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final TAG:Ljava/lang/String; = "GcmPushHandler"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getManifestSupportLevel()Lcom/parse/PushHandler$SupportLevel;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    const/4 v6, 0x5

    new-array v5, v6, [Ljava/lang/String;

    const-string v6, "android.permission.INTERNET"

    aput-object v6, v5, v9

    const-string v6, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v6, v5, v10

    const-string v6, "android.permission.WAKE_LOCK"

    aput-object v6, v5, v11

    const/4 v6, 0x3

    const-string v7, "com.google.android.c2dm.permission.RECEIVE"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".permission.C2D_MESSAGE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 61
    .local v5, "requiredPermissions":[Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/parse/ManifestInfo;->hasRequestedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    sget-object v6, Lcom/parse/PushHandler$SupportLevel;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    .line 88
    :goto_0
    return-object v6

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, "com.google.android.c2dm.permission.SEND"

    .line 67
    .local v4, "rcvrPermission":Ljava/lang/String;
    new-array v1, v11, [Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 70
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v1, v9

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 73
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    aput-object v6, v1, v10

    .line 76
    .local v1, "intents":[Landroid/content/Intent;
    const-class v6, Lcom/parse/GcmBroadcastReceiver;

    invoke-static {v6, v4, v1}, Lcom/parse/ManifestInfo;->checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 77
    sget-object v6, Lcom/parse/PushHandler$SupportLevel;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    goto :goto_0

    .line 80
    :cond_1
    new-array v2, v10, [Ljava/lang/String;

    const-string v6, "android.permission.VIBRATE"

    aput-object v6, v2, v9

    .line 84
    .local v2, "optionalPermissions":[Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ManifestInfo;->hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 85
    sget-object v6, Lcom/parse/PushHandler$SupportLevel;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    goto :goto_0

    .line 88
    :cond_2
    sget-object v6, Lcom/parse/PushHandler$SupportLevel;->SUPPORTED:Lcom/parse/PushHandler$SupportLevel;

    goto :goto_0
.end method

.method static getWarningMessage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".permission.C2D_MESSAGE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "gcmPackagePermission":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "make sure that these permissions are declared as children of the root <manifest> element:\n\n<uses-permission android:name=\"android.permission.INTERNET\" />\n<uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />\n<uses-permission android:name=\"android.permission.VIBRATE\" />\n<uses-permission android:name=\"android.permission.WAKE_LOCK\" />\n<uses-permission android:name=\"android.permission.GET_ACCOUNTS\" />\n<uses-permission android:name=\"com.google.android.c2dm.permission.RECEIVE\" />\n<permission android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" android:protectionLevel=\"signature\" />\n<uses-permission android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" />\n\nAlso, please make sure that these services and broadcast receivers are declared as children of the <application> element:\n\n<service android:name=\"com.parse.PushService\" />\n<receiver android:name=\"com.parse.GcmBroadcastReceiver\" android:permission=\"com.google.android.c2dm.permission.SEND\">\n  <intent-filter>\n    <action android:name=\"com.google.android.c2dm.intent.RECEIVE\" />\n    <action android:name=\"com.google.android.c2dm.intent.REGISTRATION\" />\n    <category android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" />\n  </intent-filter>\n</receiver>\n<receiver android:name=\"com.parse.ParsePushBroadcastReceiver\" android:exported=false>\n  <intent-filter>\n    <action android:name=\"com.parse.push.intent.RECEIVE\" />\n    <action android:name=\"com.parse.push.intent.OPEN\" />\n    <action android:name=\"com.parse.push.intent.DELETE\" />\n  </intent-filter>\n</receiver>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleGcmPushIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 183
    const-string v7, "message_type"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    .local v4, "messageType":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 190
    const-string v7, "GcmPushHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignored special message type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from GCM via intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v7, "push_id"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 193
    .local v5, "pushId":Ljava/lang/String;
    const-string v7, "time"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, "timestamp":Ljava/lang/String;
    const-string v7, "data"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "dataString":Ljava/lang/String;
    const-string v7, "channel"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "channel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 198
    .local v1, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 200
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "data":Lorg/json/JSONObject;
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .restart local v1    # "data":Lorg/json/JSONObject;
    :cond_1
    invoke-static {}, Lcom/parse/PushRouter;->getInstance()Lcom/parse/PushRouter;

    move-result-object v7

    invoke-virtual {v7, v5, v6, v0, v1}, Lcom/parse/PushRouter;->handlePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    goto :goto_0

    .line 201
    .end local v1    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 202
    .local v3, "e":Lorg/json/JSONException;
    const-string v7, "GcmPushHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring push because of JSON exception while processing: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private handleGcmRegistrationIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->handleRegistrationIntentAsync(Landroid/content/Intent;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getWarningMessage(Lcom/parse/PushHandler$SupportLevel;)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # Lcom/parse/PushHandler$SupportLevel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lcom/parse/GcmPushHandler$1;->$SwitchMap$com$parse$PushHandler$SupportLevel:[I

    invoke-virtual {p1}, Lcom/parse/PushHandler$SupportLevel;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    return-object v0

    .line 96
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using GCM for Parse Push, but the app manifest is missing some optional declarations that should be added for maximum reliability. Please "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/parse/GcmPushHandler;->getWarningMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_2
    invoke-static {}, Lcom/parse/ManifestInfo;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot use GCM for push because the app manifest is missing some required declarations. Please "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/parse/GcmPushHandler;->getWarningMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_0
    const-string v0, "Cannot use GCM for push on this device because Google Play Services is not available. Install Google Play Services from the Play Store."

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handlePush(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/parse/GcmPushHandler;->handleGcmRegistrationIntent(Landroid/content/Intent;)V

    .line 168
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 162
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    invoke-direct {p0, p1}, Lcom/parse/GcmPushHandler;->handleGcmPushIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v1, "GcmPushHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushService got unknown intent in GCM mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initialize()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar;->registerAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Lcom/parse/PushHandler$SupportLevel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/parse/ManifestInfo;->isGooglePlayServicesAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/parse/PushHandler$SupportLevel;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/parse/GcmPushHandler;->getManifestSupportLevel()Lcom/parse/PushHandler$SupportLevel;

    move-result-object v0

    goto :goto_0
.end method
