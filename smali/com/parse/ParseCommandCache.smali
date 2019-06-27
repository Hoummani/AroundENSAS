.class Lcom/parse/ParseCommandCache;
.super Lcom/parse/ParseEventuallyQueue;
.source "ParseCommandCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParseCommandCache"

.field private static filenameCounter:I

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private cachePath:Ljava/io/File;

.field private final httpClient:Lcom/parse/ParseHttpClient;

.field listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private log:Ljava/util/logging/Logger;

.field private maxCacheSizeBytes:I

.field notifier:Lcom/parse/ConnectivityNotifier;

.field private pendingTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/io/File;",
            "Lbolts/TaskCompletionSource",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private running:Z

.field private final runningLock:Ljava/lang/Object;

.field private shouldStop:Z

.field private timeoutMaxRetries:I

.field private timeoutRetryWaitSeconds:D

.field private unprocessedCommandsExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/parse/ParseCommandCache;->filenameCounter:I

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    .line 70
    const/4 v0, 0x5

    iput v0, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 71
    const-wide v0, 0x4082c00000000000L    # 600.0

    iput-wide v0, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 73
    const/high16 v0, 0xa00000

    iput v0, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    .line 97
    new-instance v0, Lcom/parse/ParseCommandCache$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseCommandCache$1;-><init>(Lcom/parse/ParseCommandCache;)V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 128
    invoke-virtual {p0, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 130
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 131
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lcom/parse/ParseCommandCache;->httpClient:Lcom/parse/ParseHttpClient;

    .line 136
    const-string v0, "com.parse.ParseCommandCache"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    .line 138
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    .line 140
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 146
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    .line 147
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 149
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->resume()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseCommandCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseCommandCache;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/parse/ParseCommandCache;->runLoop()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;ZLcom/parse/ParseObject;)Lbolts/Task;
    .locals 24
    .param p1, "command"    # Lcom/parse/ParseRESTCommand;
    .param p2, "preferOldest"    # Z
    .param p3, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Z",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    const-string v19, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static/range {v19 .. v19}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 293
    new-instance v17, Lbolts/TaskCompletionSource;

    invoke-direct/range {v17 .. v17}, Lbolts/TaskCompletionSource;-><init>()V

    .line 298
    .local v17, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    .line 299
    invoke-virtual/range {p3 .. p3}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseRESTCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    .line 302
    .local v11, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "UTF-8"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 313
    .local v10, "json":[B
    array-length v0, v10

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 314
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v20, "Unable to save command for later because it\'s too big."

    invoke-virtual/range {v19 .. v20}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 317
    :cond_1
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 318
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v19

    .line 393
    .end local v10    # "json":[B
    .end local v11    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v19

    .line 303
    :catch_0
    move-exception v4

    .line 304
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    sget-object v20, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v21, "UTF-8 isn\'t supported.  This shouldn\'t happen."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :cond_2
    const/16 v19, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 308
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v19

    goto :goto_0

    .line 321
    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "json":[B
    .restart local v11    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    sget-object v20, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v20

    .line 324
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 325
    .local v7, "fileNames":[Ljava/lang/String;
    if-eqz v7, :cond_8

    .line 326
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 327
    const/16 v16, 0x0

    .line 328
    .local v16, "size":I
    array-length v0, v7

    move/from16 v21, v0

    const/16 v19, 0x0

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    aget-object v6, v7, v19

    .line 329
    .local v6, "fileName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 332
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v16, v16, v22

    .line 328
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 334
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fileName":Ljava/lang/String;
    :cond_4
    array-length v0, v10

    move/from16 v19, v0

    add-int v16, v16, v19

    .line 335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    .line 336
    if-eqz p2, :cond_6

    .line 337
    const/16 v19, 0x5

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v21, "Unable to save command for later because storage is full."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 340
    :cond_5
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v19

    .line 390
    :try_start_2
    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v20

    goto/16 :goto_0

    .line 392
    .end local v7    # "fileNames":[Ljava/lang/String;
    .end local v16    # "size":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v19

    .line 342
    .restart local v7    # "fileNames":[Ljava/lang/String;
    .restart local v16    # "size":I
    :cond_6
    const/16 v19, 0x5

    :try_start_3
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    const-string v21, "Deleting old commands to make room in command cache."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 345
    :cond_7
    const/4 v8, 0x0

    .local v8, "indexToDelete":I
    move v9, v8

    .line 346
    .end local v8    # "indexToDelete":I
    .local v9, "indexToDelete":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_8

    .line 347
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v19, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "indexToDelete":I
    .restart local v8    # "indexToDelete":I
    aget-object v21, v7, v9

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 348
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v19, v0

    sub-int v16, v16, v19

    .line 349
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    move v9, v8

    .line 350
    .end local v8    # "indexToDelete":I
    .restart local v9    # "indexToDelete":I
    goto :goto_2

    .line 356
    .end local v5    # "file":Ljava/io/File;
    .end local v9    # "indexToDelete":I
    .end local v16    # "size":I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    .line 357
    .local v14, "prefix1":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x10

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 358
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    rsub-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 359
    .local v18, "zeroes":[C
    const/16 v19, 0x30

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([CC)V

    .line 360
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 365
    .end local v18    # "zeroes":[C
    :cond_9
    sget v19, Lcom/parse/ParseCommandCache;->filenameCounter:I

    add-int/lit8 v21, v19, 0x1

    sput v21, Lcom/parse/ParseCommandCache;->filenameCounter:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    .line 366
    .local v15, "prefix2":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v21, 0x8

    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 367
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    rsub-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 368
    .restart local v18    # "zeroes":[C
    const/16 v19, 0x30

    invoke-static/range {v18 .. v19}, Ljava/util/Arrays;->fill([CC)V

    .line 369
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 372
    .end local v18    # "zeroes":[C
    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "CachedCommand_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v21, "_"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 375
    .local v13, "prefix":Ljava/lang/String;
    const-string v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v13, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v12

    .line 378
    .local v12, "path":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseRESTCommand;->retainLocalIds()V

    .line 380
    invoke-static {v12, v10}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V

    .line 382
    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 384
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 390
    :try_start_4
    sget-object v19, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    .line 392
    .end local v7    # "fileNames":[Ljava/lang/String;
    .end local v12    # "path":Ljava/io/File;
    .end local v13    # "prefix":Ljava/lang/String;
    .end local v14    # "prefix1":Ljava/lang/String;
    .end local v15    # "prefix2":Ljava/lang/String;
    :goto_3
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 393
    invoke-virtual/range {v17 .. v17}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v19

    goto/16 :goto_0

    .line 385
    :catch_1
    move-exception v4

    .line 386
    .local v4, "e":Ljava/io/IOException;
    const/16 v19, 0x5

    :try_start_5
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v21

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    move-object/from16 v19, v0

    sget-object v21, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v22, "Unable to save command for later."

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 390
    :cond_b
    :try_start_6
    sget-object v19, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->notifyAll()V

    goto :goto_3

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    sget-object v21, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    throw v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private static getCacheDir()Ljava/io/File;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "CommandCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    .local v0, "cacheDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 59
    return-object v0
.end method

.method public static getPendingCount()I
    .locals 3

    .prologue
    .line 63
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_0
    invoke-static {}, Lcom/parse/ParseCommandCache;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "files":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeRunAllCommandsNow(I)V
    .locals 24
    .param p1, "retriesRemaining"    # I

    .prologue
    .line 470
    sget-object v17, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v17

    .line 471
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v13

    if-nez v13, :cond_0

    .line 475
    monitor-exit v17

    .line 624
    :goto_0
    return-void

    .line 478
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 479
    .local v9, "fileNames":[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v13, v9

    if-nez v13, :cond_2

    .line 480
    :cond_1
    monitor-exit v17

    goto :goto_0

    .line 623
    .end local v9    # "fileNames":[Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 482
    .restart local v9    # "fileNames":[Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 483
    array-length v0, v9

    move/from16 v18, v0

    const/4 v13, 0x0

    move/from16 v16, v13

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    aget-object v8, v9, v16

    .line 484
    .local v8, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-direct {v7, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    .local v7, "file":Ljava/io/File;
    :try_start_2
    invoke-static {v7}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    .line 512
    .local v11, "json":Lorg/json/JSONObject;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    .line 513
    invoke-virtual {v13, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v13, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lbolts/TaskCompletionSource;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v12, v13

    .line 516
    .local v12, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/parse/ParseCommandCache;->commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 527
    .local v2, "command":Lcom/parse/ParseRESTCommand;
    if-nez v2, :cond_a

    .line 528
    const/4 v13, 0x0

    :try_start_5
    invoke-static {v13}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 529
    .local v3, "commandTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    if-eqz v12, :cond_3

    .line 530
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 532
    :cond_3
    const/16 v13, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 567
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;

    .line 568
    if-eqz v12, :cond_4

    .line 569
    invoke-virtual {v12}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parse/ParseCommandCache;->waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;

    .line 573
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 574
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V
    :try_end_5
    .catch Lcom/parse/ParseException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 483
    .end local v2    # "command":Lcom/parse/ParseRESTCommand;
    .end local v3    # "commandTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v12    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_5
    :goto_4
    add-int/lit8 v13, v16, 0x1

    move/from16 v16, v13

    goto :goto_1

    .line 490
    :catch_0
    move-exception v6

    .line 492
    .local v6, "e":Ljava/io/FileNotFoundException;
    const/4 v13, 0x6

    :try_start_6
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_5

    .line 493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v20, "File disappeared from cache while being read."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 496
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 497
    .local v6, "e":Ljava/io/IOException;
    const/4 v13, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_6

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v20, "Unable to read contents of file in cache."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_4

    .line 502
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 503
    .local v6, "e":Lorg/json/JSONException;
    const/4 v13, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_7

    .line 504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v20, "Error parsing JSON found in cache."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    goto :goto_4

    .line 513
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v11    # "json":Lorg/json/JSONObject;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 517
    .restart local v12    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :catch_3
    move-exception v6

    .line 518
    .restart local v6    # "e":Lorg/json/JSONException;
    const/4 v13, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_9

    .line 519
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v20, "Unable to create ParseCommand from JSON."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 521
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 534
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v2    # "command":Lcom/parse/ParseRESTCommand;
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->httpClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v2, v13}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v13

    new-instance v19, Lcom/parse/ParseCommandCache$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v12}, Lcom/parse/ParseCommandCache$4;-><init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseRESTCommand;Lbolts/TaskCompletionSource;)V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;
    :try_end_7
    .catch Lcom/parse/ParseException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v3

    .restart local v3    # "commandTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    goto/16 :goto_3

    .line 575
    .end local v3    # "commandTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :catch_4
    move-exception v6

    .line 576
    .local v6, "e":Lcom/parse/ParseException;
    :try_start_8
    invoke-virtual {v6}, Lcom/parse/ParseException;->getCode()I

    move-result v13

    const/16 v19, 0x64

    move/from16 v0, v19

    if-ne v13, v0, :cond_12

    .line 577
    if-lez p1, :cond_11

    .line 580
    const/4 v13, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_b

    .line 581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Network timeout in command cache. Waiting for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " seconds and then retrying "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " times."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 584
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 585
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v14, v4, v20

    .line 586
    .local v14, "waitUntil":J
    :cond_c
    :goto_5
    cmp-long v13, v4, v14

    if-gez v13, :cond_10

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-eqz v13, :cond_f

    .line 590
    :cond_d
    const/4 v13, 0x4

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v16

    move/from16 v0, v16

    if-lt v13, v0, :cond_e

    .line 591
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v16, "Aborting wait because runEventually thread should stop."

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 593
    :cond_e
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 596
    :cond_f
    :try_start_9
    sget-object v13, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    sub-long v20, v14, v4

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 600
    :goto_6
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 601
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v14, v20

    cmp-long v13, v4, v20

    if-gez v13, :cond_c

    .line 603
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v4, v14, v20

    goto :goto_5

    .line 597
    :catch_5
    move-exception v10

    .line 598
    .local v10, "ie":Ljava/lang/InterruptedException;
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_6

    .line 606
    .end local v10    # "ie":Ljava/lang/InterruptedException;
    :cond_10
    add-int/lit8 v13, p1, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    goto/16 :goto_4

    .line 608
    .end local v4    # "currentTime":J
    .end local v14    # "waitUntil":J
    :cond_11
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 610
    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    goto/16 :goto_4

    .line 613
    :cond_12
    const/4 v13, 0x6

    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v19

    move/from16 v0, v19

    if-lt v13, v0, :cond_13

    .line 614
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v19, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v20, "Failed to run command."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v0, v1, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 619
    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lcom/parse/ParseCommandCache;->notifyTestHelper(ILjava/lang/Throwable;)V

    goto/16 :goto_4

    .line 623
    .end local v2    # "command":Lcom/parse/ParseRESTCommand;
    .end local v6    # "e":Lcom/parse/ParseException;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v12    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_14
    monitor-exit v17
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0
.end method

.method private removeFile(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 230
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :try_start_1
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 240
    .local v1, "json":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lcom/parse/ParseCommandCache;->commandFromJSON(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    .line 241
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->releaseLocalIds()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v0    # "command":Lcom/parse/ParseRESTCommand;
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 248
    monitor-exit v3

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 242
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private runLoop()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 635
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v4

    if-lt v8, v4, :cond_0

    .line 636
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v5, "Parse command cache has started processing queued commands."

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 639
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v4

    .line 640
    :try_start_0
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v5, :cond_2

    .line 642
    monitor-exit v4

    .line 687
    :cond_1
    :goto_0
    return-void

    .line 644
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 645
    iget-object v5, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 647
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 650
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 651
    :try_start_1
    iget-boolean v5, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_4

    move v1, v2

    .line 652
    .local v1, "shouldRun":Z
    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 653
    :goto_2
    if-eqz v1, :cond_9

    .line 654
    sget-object v5, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 656
    :try_start_2
    iget v4, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    invoke-direct {p0, v4}, Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V

    .line 657
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v4, :cond_3

    .line 663
    :try_start_3
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->unprocessedCommandsExist:Z

    if-nez v4, :cond_3

    .line 664
    sget-object v4, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 675
    :cond_3
    :goto_3
    :try_start_4
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_6

    move v1, v2

    .line 677
    :goto_4
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 647
    .end local v1    # "shouldRun":Z
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v2

    :cond_4
    move v1, v3

    .line 651
    goto :goto_1

    .line 652
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 666
    .restart local v1    # "shouldRun":Z
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x1

    :try_start_7
    iput-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_3

    .line 670
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 671
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x6

    :try_start_8
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v6

    if-lt v4, v6, :cond_5

    .line 672
    iget-object v4, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "saveEventually thread had an error."

    invoke-virtual {v4, v6, v7, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 675
    :cond_5
    :try_start_9
    iget-boolean v4, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v4, :cond_7

    move v1, v2

    .line 676
    :goto_5
    goto :goto_4

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    move v1, v3

    .line 675
    goto :goto_4

    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    move v1, v3

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    iget-boolean v6, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    if-nez v6, :cond_8

    move v1, v2

    :goto_6
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_8
    move v1, v3

    goto :goto_6

    .line 680
    :cond_9
    iget-object v3, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v3

    .line 681
    const/4 v2, 0x0

    :try_start_a
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->running:Z

    .line 682
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 683
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 684
    invoke-static {}, Lcom/parse/Parse;->getLogLevel()I

    move-result v2

    if-lt v8, v2, :cond_1

    .line 685
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->log:Ljava/util/logging/Logger;

    const-string v3, "saveEventually thread has stopped processing commands."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 683
    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method

.method private waitForTaskWithoutLock(Lbolts/Task;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lbolts/Task",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 440
    :try_start_0
    new-instance v0, Lbolts/Capture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 441
    .local v0, "finished":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v2, Lcom/parse/ParseCommandCache$3;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseCommandCache$3;-><init>(Lcom/parse/ParseCommandCache;Lbolts/Capture;)V

    sget-object v4, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v2, v4}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 451
    :goto_0
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 453
    :try_start_1
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v1

    .line 455
    .local v1, "ie":Ljava/lang/InterruptedException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    goto :goto_0

    .line 459
    .end local v0    # "finished":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    .end local v1    # "ie":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 458
    .restart local v0    # "finished":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    :cond_0
    :try_start_3
    invoke-static {p1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 408
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->cachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 410
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_0

    .line 411
    monitor-exit v3

    .line 418
    :goto_0
    return-void

    .line 413
    :cond_0
    array-length v4, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    .line 414
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/parse/ParseCommandCache;->removeFile(Ljava/io/File;)V

    .line 413
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 416
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 417
    monitor-exit v3

    goto :goto_0

    .end local v1    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 1
    .param p1, "command"    # Lcom/parse/ParseRESTCommand;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseCommandCache;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;ZLcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method fakeObjectUpdate()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 269
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommandCache;->notifyTestHelper(I)V

    .line 270
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParseCommandCache;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 157
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-eqz v0, :cond_0

    .line 209
    sget-object v2, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 210
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 211
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 212
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache;->running:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 216
    :try_start_3
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 223
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 224
    return-void
.end method

.method public pendingCount()I
    .locals 1

    .prologue
    .line 401
    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 183
    iget-object v2, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    monitor-enter v2

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lcom/parse/ParseCommandCache;->running:Z

    if-nez v1, :cond_0

    .line 185
    new-instance v1, Lcom/parse/ParseCommandCache$2;

    const-string v3, "ParseCommandCache.runLoop()"

    invoke-direct {v1, p0, v3}, Lcom/parse/ParseCommandCache$2;-><init>(Lcom/parse/ParseCommandCache;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Lcom/parse/ParseCommandCache$2;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    :try_start_1
    iget-object v1, p0, Lcom/parse/ParseCommandCache;->runningLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 201
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 202
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 196
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/parse/ParseCommandCache;->shouldStop:Z

    .line 197
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 198
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 201
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setConnected(Z)V
    .locals 2
    .param p1, "connected"    # Z

    .prologue
    .line 424
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 425
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 426
    if-eqz p1, :cond_0

    .line 427
    sget-object v0, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 430
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 431
    monitor-exit v1

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxCacheSizeBytes(I)V
    .locals 2
    .param p1, "bytes"    # I

    .prologue
    .line 176
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->maxCacheSizeBytes:I

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutMaxRetries(I)V
    .locals 2
    .param p1, "tries"    # I

    .prologue
    .line 162
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 163
    :try_start_0
    iput p1, p0, Lcom/parse/ParseCommandCache;->timeoutMaxRetries:I

    .line 164
    monitor-exit v1

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimeoutRetryWaitSeconds(D)V
    .locals 3
    .param p1, "seconds"    # D

    .prologue
    .line 169
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iput-wide p1, p0, Lcom/parse/ParseCommandCache;->timeoutRetryWaitSeconds:D

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 256
    sget-object v1, Lcom/parse/ParseCommandCache;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache;->pendingTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 258
    monitor-exit v1

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
