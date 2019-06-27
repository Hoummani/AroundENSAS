.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Parse$ParseCallbacks;,
        Lcom/parse/Parse$Configuration;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_RETRIES:I = 0x4

.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final MUTEX:Ljava/lang/Object;

.field private static final MUTEX_CALLBACKS:Ljava/lang/Object;

.field private static final PARSE_APPLICATION_ID:Ljava/lang/String; = "com.parse.APPLICATION_ID"

.field private static final PARSE_CLIENT_KEY:Ljava/lang/String; = "com.parse.CLIENT_KEY"

.field private static final PARSE_SERVER_URL:Ljava/lang/String; = "com.parse.SERVER_URL"

.field private static final TAG:Ljava/lang/String; = "com.parse.Parse"

.field private static callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/Parse$ParseCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

.field private static isLocalDatastoreEnabled:Z

.field private static offlineStore:Lcom/parse/OfflineStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 657
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    .line 658
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    return-object v0
.end method

.method private static allParsePushIntentReceiversInternal()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 488
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "com.parse.push.intent.RECEIVE"

    aput-object v5, v4, v2

    const-string v5, "com.parse.push.intent.DELETE"

    aput-object v5, v4, v3

    const/4 v5, 0x2

    const-string v6, "com.parse.push.intent.OPEN"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 493
    .local v0, "intentReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 494
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_0

    .line 498
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 12

    .prologue
    .line 543
    sget-object v9, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v9

    .line 544
    :try_start_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "applicationId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 546
    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v3

    .line 549
    .local v3, "dir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v8, "applicationId"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 550
    .local v1, "applicationIdFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 552
    const/4 v6, 0x0

    .line 554
    .local v6, "matches":Z
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 555
    .local v5, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    new-array v2, v8, [B

    .line 556
    .local v2, "bytes":[B
    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 557
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 558
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 559
    .local v4, "diskApplicationId":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 566
    .end local v2    # "bytes":[B
    .end local v4    # "diskApplicationId":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v6, :cond_0

    .line 568
    :try_start_2
    invoke-static {v3}, Lcom/parse/ParseFileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 576
    .end local v6    # "matches":Z
    :cond_0
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    .end local v1    # "applicationIdFile":Ljava/io/File;
    const-string v8, "applicationId"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 578
    .restart local v1    # "applicationIdFile":Ljava/io/File;
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 579
    .local v7, "out":Ljava/io/FileOutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 580
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 585
    .end local v1    # "applicationIdFile":Ljava/io/File;
    .end local v3    # "dir":Ljava/io/File;
    .end local v7    # "out":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    :try_start_5
    monitor-exit v9

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 569
    .restart local v1    # "applicationIdFile":Ljava/io/File;
    .restart local v3    # "dir":Ljava/io/File;
    .restart local v6    # "matches":Z
    :catch_0
    move-exception v8

    goto :goto_1

    .line 581
    .end local v6    # "matches":Z
    :catch_1
    move-exception v8

    goto :goto_2

    .line 560
    .restart local v6    # "matches":Z
    :catch_2
    move-exception v8

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 636
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 623
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 629
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 633
    :cond_1
    return-void
.end method

.method private static collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;
    .locals 3

    .prologue
    .line 706
    sget-object v2, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v2

    .line 707
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 708
    const/4 v0, 0x0

    monitor-exit v2

    .line 715
    .local v0, "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :goto_0
    return-object v0

    .line 710
    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :cond_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Lcom/parse/Parse$ParseCallbacks;

    .line 711
    .restart local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 712
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    check-cast v0, [Lcom/parse/Parse$ParseCallbacks;

    .line 714
    .restart local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static destroy()V
    .locals 3

    .prologue
    .line 453
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 455
    .local v0, "queue":Lcom/parse/ParseEventuallyQueue;
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 456
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->onDestroy()V

    .line 461
    :cond_0
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCorePlugins;->reset()V

    .line 462
    invoke-static {}, Lcom/parse/ParsePlugins;->reset()V

    .line 463
    return-void

    .line 456
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static disableLocalDatastore()V
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Parse;->setLocalDatastore(Lcom/parse/OfflineStore;)V

    .line 267
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->reset()V

    .line 268
    return-void
.end method

.method private static dispatchOnParseInitialized()V
    .locals 4

    .prologue
    .line 696
    invoke-static {}, Lcom/parse/Parse;->collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;

    move-result-object v1

    .line 697
    .local v1, "callbacks":[Lcom/parse/Parse$ParseCallbacks;
    if-eqz v1, :cond_0

    .line 698
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 699
    .local v0, "callback":Lcom/parse/Parse$ParseCallbacks;
    invoke-interface {v0}, Lcom/parse/Parse$ParseCallbacks;->onParseInitialized()V

    .line 698
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 702
    .end local v0    # "callback":Lcom/parse/Parse$ParseCallbacks;
    :cond_0
    return-void
.end method

.method public static enableLocalDatastore(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#enableLocalDatastore(Context)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 261
    return-void
.end method

.method static externalVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 768
    const-string v0, "a1.16.7"

    return-object v0
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 473
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 474
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;
    .locals 2

    .prologue
    .line 595
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParsePlugins;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .line 596
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/parse/Parse;->getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;

    move-result-object v1

    return-object v1
.end method

.method private static getEventuallyQueue(Landroid/content/Context;)Lcom/parse/ParseEventuallyQueue;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    sget-object v3, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v3

    .line 601
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    .line 602
    .local v1, "isLocalDatastoreEnabled":Z
    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v2, v2, Lcom/parse/ParseCommandCache;

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v2, v2, Lcom/parse/ParsePinningEventuallyQueue;

    if-eqz v2, :cond_2

    .line 605
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 606
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    .line 607
    .local v0, "httpClient":Lcom/parse/ParseHttpClient;
    if-eqz v1, :cond_3

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    :goto_0
    sput-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 614
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 615
    new-instance v2, Lcom/parse/ParseCommandCache;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    .line 618
    .end local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    :cond_2
    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v3

    return-object v2

    .line 607
    .restart local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    :cond_3
    new-instance v2, Lcom/parse/ParseCommandCache;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V

    goto :goto_0

    .line 619
    .end local v0    # "httpClient":Lcom/parse/ParseHttpClient;
    .end local v1    # "isLocalDatastoreEnabled":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getLocalDatastore()Lcom/parse/OfflineStore;
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 757
    invoke-static {}, Lcom/parse/PLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static getParseCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 511
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 515
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 516
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 517
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 518
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 520
    :cond_0
    monitor-exit v2

    return-object v0

    .line 521
    .end local v0    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getParseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 525
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "subDir"    # Ljava/lang/String;

    .prologue
    .line 529
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 530
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 531
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 534
    :cond_0
    monitor-exit v2

    return-object v0

    .line 535
    .end local v0    # "dir":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 644
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, "builder":Lcom/parse/Parse$Configuration$Builder;
    invoke-static {v0}, Lcom/parse/Parse$Configuration$Builder;->access$400(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ServerUrl not defined. You must provide ServerUrl in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.SERVER_URL\"\n    android:value=\"<Your Server Url>\" />"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    invoke-static {v0}, Lcom/parse/Parse$Configuration$Builder;->access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "ApplicationId not defined. You must provide ApplicationId in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.APPLICATION_ID\"\n    android:value=\"<Your Application Id>\" />"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_1
    sget-boolean v1, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 343
    invoke-static {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->access$800(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v1

    .line 344
    invoke-virtual {v1}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v1

    .line 342
    invoke-static {v1}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    .line 346
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p2, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v0, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    .line 373
    invoke-virtual {v0, p1}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0, p2}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 375
    invoke-static {v0, v1}, Lcom/parse/Parse$Configuration$Builder;->access$800(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v0

    .line 372
    invoke-static {v0}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V

    .line 378
    return-void
.end method

.method public static initialize(Lcom/parse/Parse$Configuration;)V
    .locals 5
    .param p0, "configuration"    # Lcom/parse/Parse$Configuration;

    .prologue
    .line 381
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    const-string v2, "com.parse.Parse"

    const-string v3, "Parse is already initialized"

    invoke-static {v2, v3}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-boolean v2, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    sput-boolean v2, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 389
    iget-object v2, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-static {v2, p0}, Lcom/parse/ParsePlugins;->initialize(Landroid/content/Context;Lcom/parse/Parse$Configuration;)V

    .line 392
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/parse/Parse$Configuration;->server:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    invoke-static {}, Lcom/parse/ParseObject;->registerParseSubclasses()V

    .line 399
    iget-boolean v2, p0, Lcom/parse/Parse$Configuration;->localDataStoreEnabled:Z

    if-eqz v2, :cond_1

    .line 400
    new-instance v2, Lcom/parse/OfflineStore;

    iget-object v3, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/parse/OfflineStore;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    .line 407
    :goto_1
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 408
    iget-object v0, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    .line 409
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/parse/Parse$1;

    invoke-direct {v2, v0}, Lcom/parse/Parse$1;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    .line 417
    invoke-static {}, Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V

    .line 419
    invoke-static {}, Lcom/parse/Parse;->allParsePushIntentReceiversInternal()Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "To prevent external tampering to your app\'s notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 393
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 394
    .local v1, "ex":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 402
    .end local v1    # "ex":Ljava/net/MalformedURLException;
    :cond_1
    iget-object v2, p0, Lcom/parse/Parse$Configuration;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/parse/ParseKeyValueCache;->initialize(Landroid/content/Context;)V

    goto :goto_1

    .line 428
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    invoke-static {}, Lcom/parse/PushServiceUtils;->initialize()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/Parse$3;

    invoke-direct {v3}, Lcom/parse/Parse$3;-><init>()V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/Parse$2;

    invoke-direct {v3}, Lcom/parse/Parse$2;-><init>()V

    sget-object v4, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 434
    invoke-virtual {v2, v3, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 443
    invoke-static {}, Lcom/parse/Parse;->dispatchOnParseInitialized()V

    .line 446
    sget-object v3, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v3

    .line 447
    const/4 v2, 0x0

    :try_start_1
    sput-object v2, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    .line 448
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static isInitialized()Z
    .locals 1

    .prologue
    .line 469
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalDatastoreEnabled()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    return v0
.end method

.method static registerParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/Parse$ParseCallbacks;

    .prologue
    .line 668
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register callbacks before Parse.initialize(Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 674
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 675
    monitor-exit v1

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_1
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 678
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_0
    return-void
.end method

.method static setLocalDatastore(Lcom/parse/OfflineStore;)V
    .locals 1
    .param p0, "offlineStore"    # Lcom/parse/OfflineStore;

    .prologue
    .line 275
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 276
    sput-object p0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    .line 277
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .param p0, "logLevel"    # I

    .prologue
    .line 750
    invoke-static {p0}, Lcom/parse/PLog;->setLogLevel(I)V

    .line 751
    return-void
.end method

.method static unregisterParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/Parse$ParseCallbacks;

    .prologue
    .line 687
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 688
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 689
    monitor-exit v1

    .line 693
    :goto_0
    return-void

    .line 691
    :cond_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 692
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
