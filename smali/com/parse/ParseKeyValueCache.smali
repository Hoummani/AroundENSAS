.class Lcom/parse/ParseKeyValueCache;
.super Ljava/lang/Object;
.source "ParseKeyValueCache.java"


# static fields
.field static final DEFAULT_MAX_KEY_VALUE_CACHE_BYTES:I = 0x200000

.field static final DEFAULT_MAX_KEY_VALUE_CACHE_FILES:I = 0x3e8

.field private static final DIR_NAME:Ljava/lang/String; = "ParseKeyValueCache"

.field private static final MUTEX_IO:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "ParseKeyValueCache"

.field private static directory:Ljava/io/File;

.field static maxKeyValueCacheBytes:I

.field static maxKeyValueCacheFiles:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    .line 44
    const/high16 v0, 0x200000

    sput v0, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheBytes:I

    .line 45
    const/16 v0, 0x3e8

    sput v0, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheFiles:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearFromKeyValueCache(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v2, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 191
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 194
    :cond_0
    monitor-exit v2

    .line 195
    return-void

    .line 194
    .end local v0    # "file":Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static clearKeyValueCacheDir()V
    .locals 6

    .prologue
    .line 110
    sget-object v4, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v4

    .line 111
    :try_start_0
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v0

    .line 112
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 113
    monitor-exit v4

    .line 123
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 116
    .local v1, "entries":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 117
    monitor-exit v4

    goto :goto_0

    .line 122
    .end local v1    # "entries":[Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 119
    .restart local v1    # "entries":[Ljava/io/File;
    :cond_1
    :try_start_1
    array-length v5, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v2, v1, v3

    .line 120
    .local v2, "entry":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v2    # "entry":Ljava/io/File;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static getKeyValueCacheAge(Ljava/io/File;)J
    .locals 4
    .param p0, "cacheFile"    # Ljava/io/File;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 99
    :goto_0
    return-wide v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private static getKeyValueCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 67
    :cond_0
    sget-object v0, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method private static getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "suffix":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseKeyValueCache$1;

    invoke-direct {v3, v1}, Lcom/parse/ParseKeyValueCache$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 89
    .local v0, "matches":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_0
.end method

.method static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ParseKeyValueCache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseKeyValueCache;->initialize(Ljava/io/File;)V

    .line 54
    return-void
.end method

.method static initialize(Ljava/io/File;)V
    .locals 2
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create ParseKeyValueCache directory"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    sput-object p0, Lcom/parse/ParseKeyValueCache;->directory:Ljava/io/File;

    .line 61
    return-void
.end method

.method static jsonFromKeyValueCache(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "maxAgeMilliseconds"    # J

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-static {p0, p1, p2}, Lcom/parse/ParseKeyValueCache;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "raw":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 240
    :goto_0
    return-object v2

    .line 236
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "ParseKeyValueCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "corrupted cache for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->clearFromKeyValueCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;
    .locals 15
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "maxAgeMilliseconds"    # J

    .prologue
    .line 200
    sget-object v8, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v8

    .line 201
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 202
    .local v3, "file":Ljava/io/File;
    if-nez v3, :cond_0

    .line 203
    const/4 v5, 0x0

    monitor-exit v8

    .line 223
    :goto_0
    return-object v5

    .line 206
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 207
    .local v4, "now":Ljava/util/Date;
    const-wide/16 v10, 0x0

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long v12, v12, p1

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 208
    .local v6, "oldestAcceptableAge":J
    invoke-static {v3}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheAge(Ljava/io/File;)J

    move-result-wide v10

    cmp-long v5, v10, v6

    if-gez v5, :cond_1

    .line 209
    const/4 v5, 0x0

    monitor-exit v8

    goto :goto_0

    .line 225
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "now":Ljava/util/Date;
    .end local v6    # "oldestAcceptableAge":J
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 213
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "now":Ljava/util/Date;
    .restart local v6    # "oldestAcceptableAge":J
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v2, v3, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 217
    .local v2, "f":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v5, v10

    new-array v0, v5, [B

    .line 218
    .local v0, "bytes":[B
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 219
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 220
    new-instance v5, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v5, v0, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v8

    goto :goto_0

    .line 221
    .end local v0    # "bytes":[B
    .end local v2    # "f":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "ParseKeyValueCache"

    const-string v9, "error reading from cache"

    invoke-static {v5, v9, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v5, 0x0

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method static saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 127
    sget-object v8, Lcom/parse/ParseKeyValueCache;->MUTEX_IO:Ljava/lang/Object;

    monitor-enter v8

    .line 128
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 129
    .local v5, "prior":Ljava/io/File;
    if-eqz v5, :cond_0

    .line 130
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 132
    :cond_0
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->createKeyValueCacheFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 134
    .local v0, "f":Ljava/io/File;
    :try_start_1
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v0, v7}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 142
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v7, v2

    if-nez v7, :cond_2

    .line 143
    :cond_1
    monitor-exit v8

    .line 184
    :goto_1
    return-void

    .line 146
    :cond_2
    array-length v4, v2

    .line 147
    .local v4, "numFiles":I
    const/4 v3, 0x0

    .line 148
    .local v3, "numBytes":I
    array-length v9, v2

    move v7, v6

    :goto_2
    if-ge v7, v9, :cond_3

    aget-object v1, v2, v7

    .line 149
    .local v1, "file":Ljava/io/File;
    int-to-long v10, v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    long-to-int v3, v10

    .line 148
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 153
    .end local v1    # "file":Ljava/io/File;
    :cond_3
    sget v7, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheFiles:I

    if-gt v4, v7, :cond_4

    sget v7, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheBytes:I

    if-gt v3, v7, :cond_4

    .line 154
    monitor-exit v8

    goto :goto_1

    .line 183
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "numBytes":I
    .end local v4    # "numFiles":I
    .end local v5    # "prior":Ljava/io/File;
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 162
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "numBytes":I
    .restart local v4    # "numFiles":I
    .restart local v5    # "prior":Ljava/io/File;
    :cond_4
    :try_start_3
    new-instance v7, Lcom/parse/ParseKeyValueCache$2;

    invoke-direct {v7}, Lcom/parse/ParseKeyValueCache$2;-><init>()V

    invoke-static {v2, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 174
    array-length v7, v2

    :goto_3
    if-ge v6, v7, :cond_5

    aget-object v1, v2, v6

    .line 175
    .restart local v1    # "file":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    .line 176
    int-to-long v10, v3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v3, v10

    .line 177
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 179
    sget v9, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheFiles:I

    if-gt v4, v9, :cond_6

    sget v9, Lcom/parse/ParseKeyValueCache;->maxKeyValueCacheBytes:I

    if-gt v3, v9, :cond_6

    .line 183
    .end local v1    # "file":Ljava/io/File;
    :cond_5
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 174
    .restart local v1    # "file":Ljava/io/File;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 135
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "numBytes":I
    .end local v4    # "numFiles":I
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method static size()I
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->getKeyValueCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1

    :cond_0
    array-length v1, v0

    goto :goto_0
.end method
