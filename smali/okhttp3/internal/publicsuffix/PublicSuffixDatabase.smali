.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.java"


# static fields
.field private static final EMPTY_RULE:[Ljava/lang/String;

.field private static final EXCEPTION_MARKER:B = 0x21t

.field private static final PREVAILING_RULE:[Ljava/lang/String;

.field public static final PUBLIC_SUFFIX_RESOURCE:Ljava/lang/String; = "publicsuffixes.gz"

.field private static final WILDCARD_LABEL:[B

.field private static final instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;


# instance fields
.field private final listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private publicSuffixExceptionListBytes:[B

.field private publicSuffixListBytes:[B

.field private final readCompleteLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [B

    const/16 v1, 0x2a

    aput-byte v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    .line 39
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "*"

    aput-object v1, v0, v2

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    .line 44
    new-instance v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    invoke-direct {v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;-><init>()V

    sput-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private static binarySearchBytes([B[[BI)Ljava/lang/String;
    .locals 21
    .param p0, "bytesToSearch"    # [B
    .param p1, "labels"    # [[B
    .param p2, "labelIndex"    # I

    .prologue
    .line 197
    const/4 v13, 0x0

    .line 198
    .local v13, "low":I
    move-object/from16 v0, p0

    array-length v10, v0

    .line 199
    .local v10, "high":I
    const/4 v14, 0x0

    .line 200
    .local v14, "match":Ljava/lang/String;
    :goto_0
    if-ge v13, v10, :cond_b

    .line 201
    add-int v19, v13, v10

    div-int/lit8 v15, v19, 0x2

    .line 204
    .local v15, "mid":I
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_0

    aget-byte v19, p0, v15

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 205
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 207
    :cond_0
    add-int/lit8 v15, v15, 0x1

    .line 210
    const/4 v8, 0x1

    .line 211
    .local v8, "end":I
    :goto_2
    add-int v19, v15, v8

    aget-byte v19, p0, v19

    const/16 v20, 0xa

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 212
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 214
    :cond_1
    add-int v19, v15, v8

    sub-int v18, v19, v15

    .line 219
    .local v18, "publicSuffixLength":I
    move/from16 v7, p2

    .line 220
    .local v7, "currentLabelIndex":I
    const/4 v6, 0x0

    .line 221
    .local v6, "currentLabelByteIndex":I
    const/16 v16, 0x0

    .line 223
    .local v16, "publicSuffixByteIndex":I
    const/4 v9, 0x0

    .line 226
    .local v9, "expectDot":Z
    :cond_2
    :goto_3
    if-eqz v9, :cond_4

    .line 227
    const/16 v3, 0x2e

    .line 228
    .local v3, "byte0":I
    const/4 v9, 0x0

    .line 233
    :goto_4
    add-int v19, v15, v16

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v4, v0, 0xff

    .line 235
    .local v4, "byte1":I
    sub-int v5, v3, v4

    .line 236
    .local v5, "compareResult":I
    if-eqz v5, :cond_5

    .line 255
    :cond_3
    if-gez v5, :cond_6

    .line 256
    add-int/lit8 v10, v15, -0x1

    goto :goto_0

    .line 230
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    :cond_4
    aget-object v19, p1, v7

    aget-byte v19, v19, v6

    move/from16 v0, v19

    and-int/lit16 v3, v0, 0xff

    .restart local v3    # "byte0":I
    goto :goto_4

    .line 238
    .restart local v4    # "byte1":I
    .restart local v5    # "compareResult":I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    .line 239
    add-int/lit8 v6, v6, 0x1

    .line 240
    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 242
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v0, v6, :cond_2

    .line 245
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_3

    .line 248
    add-int/lit8 v7, v7, 0x1

    .line 249
    const/4 v6, -0x1

    .line 250
    const/4 v9, 0x1

    goto :goto_3

    .line 257
    :cond_6
    if-lez v5, :cond_7

    .line 258
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto :goto_0

    .line 261
    :cond_7
    sub-int v17, v18, v16

    .line 262
    .local v17, "publicSuffixBytesLeft":I
    aget-object v19, p1, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    sub-int v12, v19, v6

    .line 263
    .local v12, "labelBytesLeft":I
    add-int/lit8 v11, v7, 0x1

    .local v11, "i":I
    :goto_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v11, v0, :cond_8

    .line 264
    aget-object v19, p1, v11

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int v12, v12, v19

    .line 263
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 267
    :cond_8
    move/from16 v0, v17

    if-ge v12, v0, :cond_9

    .line 268
    add-int/lit8 v10, v15, -0x1

    goto/16 :goto_0

    .line 269
    :cond_9
    move/from16 v0, v17

    if-le v12, v0, :cond_a

    .line 270
    add-int v19, v15, v8

    add-int/lit8 v13, v19, 0x1

    goto/16 :goto_0

    .line 273
    :cond_a
    new-instance v14, Ljava/lang/String;

    .end local v14    # "match":Ljava/lang/String;
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v14, v0, v15, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 278
    .end local v3    # "byte0":I
    .end local v4    # "byte1":I
    .end local v5    # "compareResult":I
    .end local v6    # "currentLabelByteIndex":I
    .end local v7    # "currentLabelIndex":I
    .end local v8    # "end":I
    .end local v9    # "expectDot":Z
    .end local v11    # "i":I
    .end local v12    # "labelBytesLeft":I
    .end local v15    # "mid":I
    .end local v16    # "publicSuffixByteIndex":I
    .end local v17    # "publicSuffixBytesLeft":I
    .end local v18    # "publicSuffixLength":I
    .restart local v14    # "match":Ljava/lang/String;
    :cond_b
    return-object v14
.end method

.method private findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .param p1, "domainLabels"    # [Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    .line 110
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 111
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheListUninterruptibly()V

    .line 120
    :goto_0
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    if-nez v11, :cond_1

    .line 122
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Unable to load publicsuffixes.gz resource from the classpath."

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 125
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 114
    :cond_0
    :try_start_1
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v11}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v5

    .line 116
    .local v5, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 125
    .end local v5    # "ignored":Ljava/lang/InterruptedException;
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    array-length v11, p1

    new-array v0, v11, [[B

    .line 129
    .local v0, "domainLabelsUtf8Bytes":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v11, p1

    if-ge v4, v11, :cond_2

    .line 130
    aget-object v11, p1, v4

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    aput-object v11, v0, v4

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    :cond_2
    const/4 v1, 0x0

    .line 136
    .local v1, "exactMatch":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_2
    array-length v11, v0

    if-ge v4, v11, :cond_3

    .line 137
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v11, v0, v4}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "rule":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 139
    move-object v1, v8

    .line 149
    .end local v8    # "rule":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .line 150
    .local v9, "wildcardMatch":Ljava/lang/String;
    array-length v11, v0

    if-le v11, v13, :cond_4

    .line 151
    invoke-virtual {v0}, [[B->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[B

    .line 152
    .local v7, "labelsWithWildcard":[[B
    const/4 v6, 0x0

    .local v6, "labelIndex":I
    :goto_3
    array-length v11, v7

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_4

    .line 153
    sget-object v11, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->WILDCARD_LABEL:[B

    aput-object v11, v7, v6

    .line 154
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    invoke-static {v11, v7, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 155
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_8

    .line 156
    move-object v9, v8

    .line 163
    .end local v6    # "labelIndex":I
    .end local v7    # "labelsWithWildcard":[[B
    .end local v8    # "rule":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 164
    .local v3, "exception":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 165
    const/4 v6, 0x0

    .restart local v6    # "labelIndex":I
    :goto_4
    array-length v11, v0

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_5

    .line 166
    iget-object v11, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    invoke-static {v11, v0, v6}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->binarySearchBytes([B[[BI)Ljava/lang/String;

    move-result-object v8

    .line 168
    .restart local v8    # "rule":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 169
    move-object v3, v8

    .line 175
    .end local v6    # "labelIndex":I
    .end local v8    # "rule":Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_a

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 178
    const-string v11, "\\."

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    :cond_6
    :goto_5
    return-object v2

    .line 136
    .end local v3    # "exception":Ljava/lang/String;
    .end local v9    # "wildcardMatch":Ljava/lang/String;
    .restart local v8    # "rule":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 152
    .restart local v6    # "labelIndex":I
    .restart local v7    # "labelsWithWildcard":[[B
    .restart local v9    # "wildcardMatch":Ljava/lang/String;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 165
    .end local v7    # "labelsWithWildcard":[[B
    .restart local v3    # "exception":Ljava/lang/String;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 179
    .end local v6    # "labelIndex":I
    .end local v8    # "rule":Ljava/lang/String;
    :cond_a
    if-nez v1, :cond_b

    if-nez v9, :cond_b

    .line 180
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->PREVAILING_RULE:[Ljava/lang/String;

    goto :goto_5

    .line 183
    :cond_b
    if-eqz v1, :cond_c

    .line 184
    const-string v11, "\\."

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "exactRuleLabels":[Ljava/lang/String;
    :goto_6
    if-eqz v9, :cond_d

    .line 188
    const-string v11, "\\."

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "wildcardRuleLabels":[Ljava/lang/String;
    :goto_7
    array-length v11, v2

    array-length v12, v10

    if-gt v11, v12, :cond_6

    move-object v2, v10

    .line 193
    goto :goto_5

    .line 185
    .end local v2    # "exactRuleLabels":[Ljava/lang/String;
    .end local v10    # "wildcardRuleLabels":[Ljava/lang/String;
    :cond_c
    sget-object v2, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_6

    .line 189
    .restart local v2    # "exactRuleLabels":[Ljava/lang/String;
    :cond_d
    sget-object v10, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->EMPTY_RULE:[Ljava/lang/String;

    goto :goto_7
.end method

.method public static get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->instance:Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    return-object v0
.end method

.method private readTheList()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    const-class v6, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    const-string v7, "publicsuffixes.gz"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 313
    .local v3, "resource":Ljava/io/InputStream;
    if-nez v3, :cond_0

    .line 331
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v6, Lokio/GzipSource;

    invoke-static {v3}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v7

    invoke-direct {v6, v7}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    invoke-static {v6}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    .local v0, "bufferedSource":Lokio/BufferedSource;
    const/4 v7, 0x0

    .line 316
    :try_start_0
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v4

    .line 317
    .local v4, "totalBytes":I
    new-array v2, v4, [B

    .line 318
    .local v2, "publicSuffixListBytes":[B
    invoke-interface {v0, v2}, Lokio/BufferedSource;->readFully([B)V

    .line 320
    invoke-interface {v0}, Lokio/BufferedSource;->readInt()I

    move-result v5

    .line 321
    .local v5, "totalExceptionBytes":I
    new-array v1, v5, [B

    .line 322
    .local v1, "publicSuffixExceptionListBytes":[B
    invoke-interface {v0, v1}, Lokio/BufferedSource;->readFully([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 323
    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    :try_start_1
    invoke-interface {v0}, Lokio/BufferedSource;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :cond_1
    :goto_1
    monitor-enter p0

    .line 326
    :try_start_2
    iput-object v2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 327
    iput-object v1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 328
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    iget-object v6, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 323
    :catch_0
    move-exception v6

    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    goto :goto_1

    .line 315
    .end local v1    # "publicSuffixExceptionListBytes":[B
    .end local v2    # "publicSuffixListBytes":[B
    .end local v4    # "totalBytes":I
    .end local v5    # "totalExceptionBytes":I
    :catch_1
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    :catchall_0
    move-exception v7

    move-object v9, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v7, :cond_4

    :try_start_4
    invoke-interface {v0}, Lokio/BufferedSource;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_3
    throw v6

    :catch_2
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v0}, Lokio/BufferedSource;->close()V

    goto :goto_3

    .line 328
    .restart local v1    # "publicSuffixExceptionListBytes":[B
    .restart local v2    # "publicSuffixListBytes":[B
    .restart local v4    # "totalBytes":I
    .restart local v5    # "totalExceptionBytes":I
    :catchall_1
    move-exception v6

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 323
    .end local v1    # "publicSuffixExceptionListBytes":[B
    .end local v2    # "publicSuffixListBytes":[B
    .end local v4    # "totalBytes":I
    .end local v5    # "totalExceptionBytes":I
    :catchall_2
    move-exception v6

    goto :goto_2
.end method

.method private readTheListUninterruptibly()V
    .locals 5

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 291
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readTheList()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 298
    :cond_0
    :goto_1
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/io/InterruptedIOException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 295
    const/4 v1, 0x1

    .line 299
    goto :goto_0

    .line 296
    .end local v0    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "Failed to read public suffix list"

    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    if-eqz v1, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v2
.end method


# virtual methods
.method public getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x21

    const/4 v9, 0x0

    .line 79
    if-nez p1, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "domain == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "unicodeDomain":Ljava/lang/String;
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "domainLabels":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->findMatchingRule([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "rule":[Ljava/lang/String;
    array-length v7, v0

    array-length v8, v5

    if-ne v7, v8, :cond_1

    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_1

    .line 87
    const/4 v7, 0x0

    .line 106
    :goto_0
    return-object v7

    .line 91
    :cond_1
    aget-object v7, v5, v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_2

    .line 93
    array-length v7, v0

    array-length v8, v5

    sub-int v2, v7, v8

    .line 99
    .local v2, "firstLabelOffset":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v1, "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    const-string v7, "\\."

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "punycodeLabels":[Ljava/lang/String;
    move v3, v2

    .local v3, "i":I
    :goto_2
    array-length v7, v4

    if-ge v3, v7, :cond_3

    .line 102
    aget-object v7, v4, v3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .end local v2    # "firstLabelOffset":I
    .end local v3    # "i":I
    .end local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_2
    array-length v7, v0

    array-length v8, v5

    add-int/lit8 v8, v8, 0x1

    sub-int v2, v7, v8

    .restart local v2    # "firstLabelOffset":I
    goto :goto_1

    .line 104
    .restart local v1    # "effectiveTldPlusOne":Ljava/lang/StringBuilder;
    .restart local v3    # "i":I
    .restart local v4    # "punycodeLabels":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method setListBytes([B[B)V
    .locals 2
    .param p1, "publicSuffixListBytes"    # [B
    .param p2, "publicSuffixExceptionListBytes"    # [B

    .prologue
    .line 335
    iput-object p1, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixListBytes:[B

    .line 336
    iput-object p2, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->publicSuffixExceptionListBytes:[B

    .line 337
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->listRead:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 338
    iget-object v0, p0, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->readCompleteLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 339
    return-void
.end method
