.class Lcom/parse/ManifestInfo;
.super Ljava/lang/Object;
.source "ManifestInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ManifestInfo"

.field private static displayName:Ljava/lang/String;

.field private static iconId:I

.field private static lastModified:J

.field private static final lock:Ljava/lang/Object;

.field private static pushType:Lcom/parse/PushType;

.field static versionCode:I

.field static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    .line 38
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/parse/ManifestInfo;->lastModified:J

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/parse/ManifestInfo;->versionCode:I

    .line 40
    sput-object v2, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 42
    sput-object v2, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkReceiver(Ljava/lang/Class;Ljava/lang/String;[Landroid/content/Intent;)Z
    .locals 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "intents"    # [Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    const/4 v2, 0x0

    .line 337
    array-length v4, p2

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, p2, v3

    .line 338
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 339
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    :goto_1
    return v2

    .line 343
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/parse/ManifestInfo;->checkResolveInfo(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private static checkResolveInfo(Ljava/lang/Class;Ljava/util/List;Ljava/lang/String;)Z
    .locals 5
    .param p2, "permission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    .local p1, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 320
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 323
    :try_start_0
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 327
    .local v2, "resolveInfoClass":Ljava/lang/Class;
    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    :cond_1
    const/4 v3, 0x1

    .line 333
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "resolveInfoClass":Ljava/lang/Class;
    :goto_0
    return v3

    .line 324
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v0

    .line 333
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static findPushType()Lcom/parse/PushType;
    .locals 9

    .prologue
    .line 179
    invoke-static {}, Lcom/parse/ParsePushBroadcastReceiver;->isSupported()Z

    move-result v5

    if-nez v5, :cond_1

    .line 180
    sget-object v3, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    .line 204
    .local v4, "types":[Lcom/parse/PushType;
    :cond_0
    :goto_0
    :pswitch_0
    return-object v3

    .line 183
    .end local v4    # "types":[Lcom/parse/PushType;
    :cond_1
    invoke-static {}, Lcom/parse/PushServiceUtils;->isSupported()Z

    move-result v5

    if-nez v5, :cond_2

    .line 184
    sget-object v3, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    goto :goto_0

    .line 188
    :cond_2
    invoke-static {}, Lcom/parse/PushType;->types()[Lcom/parse/PushType;

    move-result-object v4

    .line 189
    .restart local v4    # "types":[Lcom/parse/PushType;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v4, v5

    .line 190
    .local v3, "type":Lcom/parse/PushType;
    invoke-static {v3}, Lcom/parse/PushHandler$Factory;->create(Lcom/parse/PushType;)Lcom/parse/PushHandler;

    move-result-object v0

    .line 191
    .local v0, "handler":Lcom/parse/PushHandler;
    invoke-interface {v0}, Lcom/parse/PushHandler;->isSupported()Lcom/parse/PushHandler$SupportLevel;

    move-result-object v1

    .line 192
    .local v1, "level":Lcom/parse/PushHandler$SupportLevel;
    invoke-interface {v0, v1}, Lcom/parse/PushHandler;->getWarningMessage(Lcom/parse/PushHandler$SupportLevel;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "message":Ljava/lang/String;
    sget-object v7, Lcom/parse/ManifestInfo$1;->$SwitchMap$com$parse$PushHandler$SupportLevel:[I

    invoke-virtual {v1}, Lcom/parse/PushHandler$SupportLevel;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 189
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 195
    :pswitch_1
    if-eqz v2, :cond_3

    const-string v7, "com.parse.ManifestInfo"

    invoke-static {v7, v2}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 198
    :pswitch_2
    if-eqz v2, :cond_0

    const-string v5, "com.parse.ManifestInfo"

    invoke-static {v5, v2}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    .end local v0    # "handler":Lcom/parse/PushHandler;
    .end local v1    # "level":Lcom/parse/PushHandler$SupportLevel;
    .end local v2    # "message":Ljava/lang/String;
    .end local v3    # "type":Lcom/parse/PushType;
    :cond_4
    sget-object v3, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flags"    # I

    .prologue
    .line 228
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 230
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/parse/ManifestInfo;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 239
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 240
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 242
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 102
    :try_start_0
    sget-object v1, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 104
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    .line 106
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    sget-object v1, Lcom/parse/ManifestInfo;->displayName:Ljava/lang/String;

    return-object v1

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getIconId()I
    .locals 2

    .prologue
    .line 116
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    sput v0, Lcom/parse/ManifestInfo;->iconId:I

    .line 120
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    sget v0, Lcom/parse/ManifestInfo;->iconId:I

    return v0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static varargs getIntentReceivers([Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "actions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 138
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 139
    .local v4, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    array-length v8, p0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, p0, v7

    .line 142
    .local v0, "action":Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x20

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 141
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "action":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 148
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 149
    .local v6, "receiverPackageName":Ljava/lang/String;
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 150
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 147
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 153
    .end local v6    # "receiverPackageName":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public static getLastModified()J
    .locals 8

    .prologue
    .line 50
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 51
    :try_start_0
    sget-wide v4, Lcom/parse/ManifestInfo;->lastModified:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    .line 52
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, "apkPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Lcom/parse/ManifestInfo;->lastModified:J

    .line 55
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    sget-wide v2, Lcom/parse/ManifestInfo;->lastModified:J

    return-wide v2

    .line 55
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 249
    .local v0, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static getPushDisabledMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Push is not configured for this app because the app manifest is missing required declarations. To configure GCM, please add the following declarations to your app manifest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    invoke-static {}, Lcom/parse/GcmPushHandler;->getWarningMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    return-object v0
.end method

.method public static getPushType()Lcom/parse/PushType;
    .locals 4

    .prologue
    .line 168
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    sget-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    if-nez v0, :cond_0

    .line 170
    invoke-static {}, Lcom/parse/ManifestInfo;->findPushType()Lcom/parse/PushType;

    move-result-object v0

    sput-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 171
    const-string v0, "com.parse.ManifestInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for push."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    sget-object v0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getReceiverInfo(Ljava/lang/Class;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/content/BroadcastReceiver;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/content/BroadcastReceiver;>;"
    const/4 v0, 0x0

    .line 271
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    .line 272
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)",
            "Landroid/content/pm/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v0, 0x0

    .line 260
    .local v0, "info":Landroid/content/pm/ServiceInfo;
    :try_start_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 5

    .prologue
    .line 65
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 66
    :try_start_0
    sget v1, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 68
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v1, Lcom/parse/ManifestInfo;->versionCode:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    sget v1, Lcom/parse/ManifestInfo;->versionCode:I

    return v1

    .line 69
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 70
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    sget-object v2, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 84
    :try_start_0
    sget-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 86
    :try_start_1
    invoke-static {}, Lcom/parse/ManifestInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    sget-object v1, Lcom/parse/ManifestInfo;->versionName:Ljava/lang/String;

    return-object v1

    .line 87
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_0
    move-exception v0

    .line 88
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v1, "com.parse.ManifestInfo"

    const-string v3, "Couldn\'t find info about own package"

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method static varargs hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 309
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    array-length v5, p1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, p1, v4

    .line 310
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 315
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1
    return v3

    .line 309
    .restart local v2    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 315
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method static hasIntentReceiver(Ljava/lang/String;)Z
    .locals 3
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    new-array v2, v0, [Ljava/lang/String;

    aput-object p0, v2, v1

    invoke-static {v2}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method static varargs hasRequestedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 286
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 290
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 296
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 293
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 294
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "com.parse.ManifestInfo"

    const-string v5, "Couldn\'t find info about own package"

    invoke-static {v4, v5, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static isGooglePlayServicesAvailable()Z
    .locals 1

    .prologue
    .line 352
    const-string v0, "com.google.android.gsf"

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setPushType(Lcom/parse/PushType;)V
    .locals 2
    .param p0, "newPushType"    # Lcom/parse/PushType;

    .prologue
    .line 158
    sget-object v1, Lcom/parse/ManifestInfo;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    sput-object p0, Lcom/parse/ManifestInfo;->pushType:Lcom/parse/PushType;

    .line 160
    monitor-exit v1

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
