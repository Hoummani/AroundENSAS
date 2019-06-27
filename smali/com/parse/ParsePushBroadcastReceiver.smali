.class public Lcom/parse/ParsePushBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ParsePushBroadcastReceiver.java"


# static fields
.field public static final ACTION_PUSH_DELETE:Ljava/lang/String; = "com.parse.push.intent.DELETE"

.field public static final ACTION_PUSH_OPEN:Ljava/lang/String; = "com.parse.push.intent.OPEN"

.field public static final ACTION_PUSH_RECEIVE:Ljava/lang/String; = "com.parse.push.intent.RECEIVE"

.field public static final KEY_PUSH_CHANNEL:Ljava/lang/String; = "com.parse.Channel"

.field public static final KEY_PUSH_DATA:Ljava/lang/String; = "com.parse.Data"

.field public static final PROPERTY_PUSH_ICON:Ljava/lang/String; = "com.parse.push.notification_icon"

.field private static final REQUIRED_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final SMALL_NOTIFICATION_MAX_CHARACTER_LIMIT:I = 0x26

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.parse.push.intent.RECEIVE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.parse.push.intent.OPEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.parse.push.intent.DELETE"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParsePushBroadcastReceiver;->REQUIRED_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 388
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "com.parse.Data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-object v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "com.parse.ParsePushReceiver"

    const-string v2, "Unexpected JSONException when receiving push data: "

    invoke-static {v1, v2, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 391
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isSupported()Z
    .locals 4

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "actions":I
    sget-object v2, Lcom/parse/ParsePushBroadcastReceiver;->REQUIRED_ACTIONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 116
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ManifestInfo;->hasIntentReceiver(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/parse/ParsePushBroadcastReceiver;->REQUIRED_ACTIONS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 120
    if-lez v1, :cond_2

    .line 121
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The Parse Push BroadcastReceiver must implement a filter for all of com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    :cond_2
    const-string v2, "com.parse.ParsePushReceiver"

    const-string v3, "Push is currently disabled. Parse SDK requires your app to have a BroadcastReceiver that handles com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, and com.parse.push.intent.DELETE. You can do this by adding these lines to your AndroidManifest.xml:\n\n <receiver android:name=\"com.parse.ParsePushBroadcastReceiver\"\n   android:exported=false>\n  <intent-filter>\n     <action android:name=\"com.parse.push.intent.RECEIVE\" />\n     <action android:name=\"com.parse.push.intent.OPEN\" />\n     <action android:name=\"com.parse.push.intent.DELETE\" />\n   </intent-filter>\n </receiver>"

    invoke-static {v2, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x0

    .line 144
    :goto_1
    return v2

    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected createNotificationChannel(Landroid/content/Context;Landroid/app/NotificationChannel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationChannel"    # Landroid/app/NotificationChannel;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 338
    const-string v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 339
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 340
    return-void
.end method

.method protected getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 298
    .local v2, "launchIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    .line 299
    const/4 v1, 0x0

    .line 308
    :goto_0
    return-object v1

    .line 301
    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 304
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 305
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/parse/ParsePushBroadcastReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v13

    .line 414
    .local v13, "pushData":Lorg/json/JSONObject;
    if-eqz v13, :cond_0

    const-string v17, "alert"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 415
    :cond_0
    const/16 v17, 0x0

    .line 471
    :goto_0
    return-object v17

    .line 418
    :cond_1
    const-string v17, "title"

    invoke-static/range {p1 .. p1}, Lcom/parse/ManifestInfo;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 419
    .local v16, "title":Ljava/lang/String;
    const-string v17, "alert"

    const-string v18, "Notification received."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "alert":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    const-string v18, "%s: %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v16, v19, v20

    const/16 v20, 0x1

    aput-object v2, v19, v20

    invoke-static/range {v17 .. v19}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 422
    .local v15, "tickerText":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 424
    .local v7, "extras":Landroid/os/Bundle;
    new-instance v14, Ljava/util/Random;

    invoke-direct {v14}, Ljava/util/Random;-><init>()V

    .line 425
    .local v14, "random":Ljava/util/Random;
    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 426
    .local v4, "contentIntentRequestCode":I
    invoke-virtual {v14}, Ljava/util/Random;->nextInt()I

    move-result v6

    .line 431
    .local v6, "deleteIntentRequestCode":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 433
    .local v11, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v17, "com.parse.push.intent.OPEN"

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "contentIntent":Landroid/content/Intent;
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    new-instance v5, Landroid/content/Intent;

    const-string v17, "com.parse.push.intent.DELETE"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 438
    .local v5, "deleteIntent":Landroid/content/Intent;
    invoke-virtual {v5, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 439
    invoke-virtual {v5, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const/high16 v17, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v4, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 443
    .local v9, "pContentIntent":Landroid/app/PendingIntent;
    const/high16 v17, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v6, v5, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 450
    .local v10, "pDeleteIntent":Landroid/app/PendingIntent;
    new-instance v12, Lcom/parse/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/parse/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 451
    .local v12, "parseBuilder":Lcom/parse/NotificationCompat$Builder;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/parse/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    .line 452
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    .line 453
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/parse/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    .line 454
    invoke-virtual/range {p0 .. p2}, Lcom/parse/ParsePushBroadcastReceiver;->getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/parse/NotificationCompat$Builder;->setSmallIcon(I)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    .line 455
    invoke-virtual/range {p0 .. p2}, Lcom/parse/ParsePushBroadcastReceiver;->getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/parse/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    .line 456
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/parse/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    .line 457
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/parse/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    const/16 v18, 0x1

    .line 458
    invoke-virtual/range {v17 .. v18}, Lcom/parse/NotificationCompat$Builder;->setAutoCancel(Z)Lcom/parse/NotificationCompat$Builder;

    move-result-object v17

    const/16 v18, -0x1

    .line 459
    invoke-virtual/range {v17 .. v18}, Lcom/parse/NotificationCompat$Builder;->setDefaults(I)Lcom/parse/NotificationCompat$Builder;

    .line 461
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x1a

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    .line 462
    invoke-virtual/range {p0 .. p2}, Lcom/parse/ParsePushBroadcastReceiver;->getNotificationChannel(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/NotificationChannel;

    move-result-object v8

    .line 463
    .local v8, "notificationChannel":Landroid/app/NotificationChannel;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Lcom/parse/ParsePushBroadcastReceiver;->createNotificationChannel(Landroid/content/Context;Landroid/app/NotificationChannel;)V

    .line 464
    invoke-virtual {v8}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/parse/NotificationCompat$Builder;->setNotificationChannel(Ljava/lang/String;)Lcom/parse/NotificationCompat$Builder;

    .line 467
    .end local v8    # "notificationChannel":Landroid/app/NotificationChannel;
    :cond_2
    if-eqz v2, :cond_3

    .line 468
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x26

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 469
    new-instance v17, Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    invoke-direct/range {v17 .. v17}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/parse/NotificationCompat$Builder;->setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;

    .line 471
    :cond_3
    invoke-virtual {v12}, Lcom/parse/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v17

    goto/16 :goto_0
.end method

.method protected getNotificationChannel(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/NotificationChannel;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .prologue
    .line 324
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "parse_push"

    const-string v2, "Push notifications"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method protected getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 359
    invoke-static {p1}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 360
    .local v1, "metaData":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 361
    .local v0, "explicitId":I
    if-eqz v1, :cond_0

    .line 362
    const-string v2, "com.parse.push.notification_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 364
    :cond_0
    if-eqz v0, :cond_1

    .end local v0    # "explicitId":I
    :goto_0
    return v0

    .restart local v0    # "explicitId":I
    :cond_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getIconId()I

    move-result v0

    goto :goto_0
.end method

.method protected onPushDismiss(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 233
    return-void
.end method

.method protected onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 249
    invoke-static {p2}, Lcom/parse/ParseAnalytics;->trackAppOpenedInBackground(Landroid/content/Intent;)Lbolts/Task;

    .line 251
    const/4 v4, 0x0

    .line 253
    .local v4, "uriString":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "com.parse.Data"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "pushData":Lorg/json/JSONObject;
    const-string v5, "uri"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 259
    .end local v3    # "pushData":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v1

    .line 261
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    if-eqz v4, :cond_0

    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    .local v0, "activityIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 274
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    .line 275
    invoke-static {p1, v1, v0}, Lcom/parse/TaskStackBuilderHelper;->startActivities(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 281
    :goto_2
    return-void

    .line 255
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Lorg/json/JSONException;
    const-string v5, "com.parse.ParsePushReceiver"

    const-string v6, "Unexpected JSONException when receiving push data: "

    invoke-static {v5, v6, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "activityIntent":Landroid/content/Intent;
    goto :goto_1

    .line 277
    :cond_1
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    const/high16 v5, 0x4000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    const-string v8, "com.parse.Data"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 188
    .local v7, "pushDataStr":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 189
    const-string v8, "com.parse.ParsePushReceiver"

    const-string v9, "Can not get push data from intent."

    invoke-static {v8, v9}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v8, "com.parse.ParsePushReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received push data: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v5, 0x0

    .line 196
    .local v5, "pushData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "pushData":Lorg/json/JSONObject;
    .local v6, "pushData":Lorg/json/JSONObject;
    move-object v5, v6

    .line 202
    .end local v6    # "pushData":Lorg/json/JSONObject;
    .restart local v5    # "pushData":Lorg/json/JSONObject;
    :goto_1
    const/4 v0, 0x0

    .line 203
    .local v0, "action":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 204
    const-string v8, "action"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    :cond_2
    if-eqz v0, :cond_3

    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 208
    .local v3, "extras":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v1, "broadcastIntent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 210
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    .end local v1    # "broadcastIntent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v4

    .line 217
    .local v4, "notification":Landroid/app/Notification;
    if-eqz v4, :cond_0

    .line 218
    invoke-static {}, Lcom/parse/ParseNotificationManager;->getInstance()Lcom/parse/ParseNotificationManager;

    move-result-object v8

    invoke-virtual {v8, p1, v4}, Lcom/parse/ParseNotificationManager;->showNotification(Landroid/content/Context;Landroid/app/Notification;)V

    goto :goto_0

    .line 197
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "notification":Landroid/app/Notification;
    :catch_0
    move-exception v2

    .line 198
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "com.parse.ParsePushReceiver"

    const-string v9, "Unexpected JSONException when receiving push data: "

    invoke-static {v8, v9, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "intentAction":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_1
    return-void

    .line 163
    :sswitch_0
    const-string v2, "com.parse.push.intent.RECEIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.parse.push.intent.DELETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "com.parse.push.intent.OPEN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 168
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushDismiss(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 171
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0x312a97af -> :sswitch_1
        -0x10101b23 -> :sswitch_0
        0x16587e70 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
