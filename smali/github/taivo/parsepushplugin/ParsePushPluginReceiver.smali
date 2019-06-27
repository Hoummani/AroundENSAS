.class public Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;
.super Lcom/parse/ParsePushBroadcastReceiver;
.source "ParsePushPluginReceiver.java"


# static fields
.field private static final DEFAULT_CHANNEL_ID:Ljava/lang/String; = "parse_push"

.field private static final DEFAULT_CHANNEL_TITLE:Ljava/lang/String; = "Default Channel"

.field private static final KEY:Ljava/lang/String; = "badge"

.field public static final LOGTAG:Ljava/lang/String; = "ParsePushPluginReceiver"

.field private static MSG_COUNTS:Lorg/json/JSONObject; = null

.field public static final RESOURCE_PUSH_ICON_COLOR:Ljava/lang/String; = "parse_push_icon_color"

.field private static badgeCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    .line 43
    const/4 v0, 0x0

    sput v0, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->badgeCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/parse/ParsePushBroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    .local v0, "appName":Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/String;

    .end local v0    # "appName":Ljava/lang/CharSequence;
    return-object v0
.end method

.method public static getLauncherClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 319
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const/4 v6, 0x0

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 323
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 324
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 325
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 326
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 331
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNotificationTag(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 247
    invoke-static {p1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    invoke-static {p0}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationTag(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pnData"    # Lorg/json/JSONObject;

    .prologue
    .line 251
    const-string v0, "title"

    invoke-static {p0}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 231
    const/4 v1, 0x0

    .line 233
    .local v1, "pnData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "com.parse.Data"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "pnData":Lorg/json/JSONObject;
    .local v2, "pnData":Lorg/json/JSONObject;
    move-object v1, v2

    .line 237
    .end local v2    # "pnData":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 234
    .restart local v1    # "pnData":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v3, "ParsePushPluginReceiver"

    const-string v4, "JSONException while parsing push data:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 237
    .end local v1    # "pnData":Lorg/json/JSONObject;
    .restart local v2    # "pnData":Lorg/json/JSONObject;
    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "pnData":Lorg/json/JSONObject;
    .restart local v1    # "pnData":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    move-object v2, v1

    .end local v1    # "pnData":Lorg/json/JSONObject;
    .restart local v2    # "pnData":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const-string v0, "badge"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static nextCount(Ljava/lang/String;)I
    .locals 5
    .param p0, "pnTag"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 256
    :try_start_0
    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    sget-object v2, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/json/JSONException;
    :try_start_1
    const-string v1, "ParsePushPluginReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException while computing next pn count for tag: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    invoke-virtual {v1, p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static resetBadge(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 296
    invoke-static {v2, p0}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->saveBadge(ILandroid/content/Context;)V

    .line 297
    invoke-static {p0}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z

    .line 299
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 300
    .local v0, "currentInstallation":Lcom/parse/ParseInstallation;
    const-string v1, "badge"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveInBackground()Lbolts/Task;

    .line 302
    return-void
.end method

.method private static resetCount(Ljava/lang/String;)V
    .locals 4
    .param p0, "pnTag"    # Ljava/lang/String;

    .prologue
    .line 266
    :try_start_0
    sget-object v1, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->MSG_COUNTS:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "ParsePushPluginReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException while resetting pn count for tag: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static saveBadge(ILandroid/content/Context;)V
    .locals 2
    .param p0, "badge"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 305
    invoke-static {p1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 307
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "badge"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 309
    return-void
.end method

.method public static setBadge(ILandroid/content/Context;)V
    .locals 4
    .param p0, "badgeCount"    # I
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 285
    move v0, p0

    .line 287
    .local v0, "badge":I
    invoke-static {v0, p1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->saveBadge(ILandroid/content/Context;)V

    .line 288
    invoke-static {p1, v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    .line 290
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 291
    .local v1, "currentInstallation":Lcom/parse/ParseInstallation;
    const-string v2, "badge"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseInstallation;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->saveInBackground()Lbolts/Task;

    .line 293
    return-void
.end method


# virtual methods
.method protected getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 125
    invoke-static/range {p2 .. p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v18

    .line 126
    .local v18, "pnData":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getNotificationTag(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v19

    .line 128
    .local v19, "pnTag":Ljava/lang/String;
    const-string v21, "ParsePushPluginReceiver"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "onPushOpen - pnTag: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v4, Landroid/content/Intent;

    const-string v21, "com.parse.push.intent.OPEN"

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v4, "cIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    const-string v21, "com.parse.push.intent.DELETE"

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v9, "dIntent":Landroid/content/Intent;
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, "contentIntentRequestCode":I
    const/4 v11, 0x0

    .line 139
    .local v11, "deleteIntentRequestCode":I
    new-instance v6, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string v24, "ParseMultiNotifications"

    aput-object v24, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v6, v0, v1, v2}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;-><init>(Landroid/content/Context;Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 140
    .local v6, "config":Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
    const-string v21, "ParseMultiNotifications"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 141
    .local v17, "parseMulti":Ljava/lang/String;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "true"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 142
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    .line 143
    .local v20, "random":Ljava/util/Random;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextInt()I

    move-result v8

    .line 144
    invoke-virtual/range {v20 .. v20}, Ljava/util/Random;->nextInt()I

    move-result v11

    .line 147
    .end local v20    # "random":Ljava/util/Random;
    :cond_0
    const/high16 v21, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v8, v4, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 149
    .local v7, "contentIntent":Landroid/app/PendingIntent;
    const/high16 v21, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v11, v9, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 152
    .local v10, "deleteIntent":Landroid/app/PendingIntent;
    const/4 v3, 0x0

    .line 154
    .local v3, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0x1a

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    .line 156
    const/4 v13, 0x4

    .line 158
    .local v13, "importance":I
    const-string v21, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/NotificationManager;

    .line 160
    .local v16, "notifManager":Landroid/app/NotificationManager;
    const-string v21, "parse_push"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v15

    .line 162
    .local v15, "mChannel":Landroid/app/NotificationChannel;
    if-nez v15, :cond_1

    .line 164
    new-instance v15, Landroid/app/NotificationChannel;

    .end local v15    # "mChannel":Landroid/app/NotificationChannel;
    const-string v21, "parse_push"

    const-string v22, "Default Channel"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v15, v0, v1, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 165
    .restart local v15    # "mChannel":Landroid/app/NotificationChannel;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 166
    const/16 v21, 0x9

    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 168
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 171
    :cond_1
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    .end local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v21, "parse_push"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 178
    .end local v13    # "importance":I
    .end local v15    # "mChannel":Landroid/app/NotificationChannel;
    .end local v16    # "notifManager":Landroid/app/NotificationManager;
    .restart local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    :goto_0
    const-string v21, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    const-string v21, "alert"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_a

    const/4 v14, 0x1

    .line 180
    .local v14, "isSilent":Z
    :goto_1
    const-string v21, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 181
    const-string v21, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const-string v22, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 186
    :cond_2
    :goto_2
    const-string v21, "alert"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 187
    const-string v21, "alert"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 188
    new-instance v21, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct/range {v21 .. v21}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const-string v22, "alert"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 191
    :cond_3
    invoke-static {}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->isInForeground()Z

    move-result v21

    if-nez v21, :cond_4

    .line 192
    sget-object v21, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 195
    :cond_4
    const-string v21, "badge"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 197
    :try_start_0
    const-string v21, "badge"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "Increment"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 198
    sget v21, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->badgeCount:I

    add-int/lit8 v21, v21, 0x1

    sput v21, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->badgeCount:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_5
    :goto_3
    :try_start_1
    const-string v21, "badge"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_6

    .line 206
    const-string v21, "badge"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    sput v21, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->badgeCount:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    :cond_6
    :goto_4
    sget v21, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->badgeCount:I

    move/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->setBadge(ILandroid/content/Context;)V

    .line 215
    :cond_7
    invoke-virtual/range {p0 .. p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getSmallIconId(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    invoke-virtual/range {p0 .. p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getLargeIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    .line 216
    invoke-static/range {v19 .. v19}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->nextCount(Ljava/lang/String;)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 218
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const-string v22, "parse_push_icon_color"

    const-string v23, "color"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v21 .. v24}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 219
    .local v5, "colorId":I
    if-eqz v5, :cond_8

    .line 220
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 223
    :cond_8
    if-nez v14, :cond_c

    .line 224
    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v21

    .line 227
    :goto_5
    return-object v21

    .line 174
    .end local v5    # "colorId":I
    .end local v14    # "isSilent":Z
    :cond_9
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    .end local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .restart local v3    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    goto/16 :goto_0

    .line 178
    :cond_a
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 182
    .restart local v14    # "isSilent":Z
    :cond_b
    const-string v21, "alert"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 183
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_2

    .line 200
    :catch_0
    move-exception v12

    .line 201
    .local v12, "e":Lorg/json/JSONException;
    const-string v21, "ParsePushPluginReceiver"

    const-string v22, "JSONException while parsing Increment:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 208
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v12

    .line 209
    .restart local v12    # "e":Lorg/json/JSONException;
    const-string v21, "ParsePushPluginReceiver"

    const-string v22, "JSONException while parsing badge:"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 227
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v5    # "colorId":I
    :cond_c
    const/16 v21, 0x0

    goto :goto_5

    .line 166
    :array_0
    .array-data 8
        0x64
        0xc8
        0x12c
        0x190
        0x1f4
        0x190
        0x12c
        0xc8
        0x190
    .end array-data
.end method

.method protected onPushOpen(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    invoke-static {p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    .local v1, "pnData":Lorg/json/JSONObject;
    invoke-static {p1, v1}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getNotificationTag(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->resetCount(Ljava/lang/String;)V

    .line 96
    const-string v4, "uri"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "uriString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getActivity(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v0, "activityIntent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10020000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    invoke-static {p2}, Lcom/parse/ParseAnalytics;->trackAppOpened(Landroid/content/Intent;)V

    .line 107
    const-string v4, "urlHash"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "urlHash":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    :cond_0
    const-string v4, "urlHash"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-static {p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "OPEN"

    invoke-static {v4, v5}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->jsCallback(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 118
    return-void

    .line 97
    .end local v0    # "activityIntent":Landroid/content/Intent;
    .end local v3    # "urlHash":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    .line 98
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 49
    invoke-static {}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->isInForeground()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    invoke-static {p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getPushData(Landroid/content/Intent;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lgithub/taivo/parsepushplugin/ParsePushPlugin;->jsCallback(Lorg/json/JSONObject;)V

    .line 89
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "ParseMultiNotifications"

    aput-object v6, v5, v7

    invoke-direct {v0, p1, v4, v5}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;-><init>(Landroid/content/Context;Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 62
    .local v0, "config":Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
    const-string v4, "ParseMultiNotifications"

    invoke-virtual {v0, v4}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "parseMulti":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 66
    invoke-super {p0, p1, p2}, Lcom/parse/ParsePushBroadcastReceiver;->onPushReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, p1, p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getNotification(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v2

    .line 72
    .local v2, "notification":Landroid/app/Notification;
    if-eqz v2, :cond_2

    .line 75
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 76
    .local v1, "notifManager":Landroid/app/NotificationManager;
    invoke-static {p1, p2}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->getNotificationTag(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v7, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 85
    .end local v1    # "notifManager":Landroid/app/NotificationManager;
    :cond_2
    const/16 v4, 0x20

    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lgithub/taivo/parsepushplugin/ParsePushPluginReceiver;->setResultCode(I)V

    goto :goto_0
.end method
