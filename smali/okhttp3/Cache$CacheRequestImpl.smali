.class final Lokhttp3/Cache$CacheRequestImpl;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lokhttp3/internal/cache/CacheRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Lokio/Sink;

.field private cacheOut:Lokio/Sink;

.field done:Z

.field private final editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final synthetic this$0:Lokhttp3/Cache;


# direct methods
.method constructor <init>(Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V
    .locals 2
    .param p2, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .prologue
    .line 437
    iput-object p1, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p2, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->newSink(I)Lokio/Sink;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    .line 440
    new-instance v0, Lokhttp3/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-direct {v0, p0, v1, p1, p2}, Lokhttp3/Cache$CacheRequestImpl$1;-><init>(Lokhttp3/Cache$CacheRequestImpl;Lokio/Sink;Lokhttp3/Cache;Lokhttp3/internal/cache/DiskLruCache$Editor;)V

    iput-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    .line 453
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 456
    iget-object v1, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    monitor-enter v1

    .line 457
    :try_start_0
    iget-boolean v0, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    .line 458
    monitor-exit v1

    .line 468
    :goto_0
    return-void

    .line 460
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/Cache$CacheRequestImpl;->done:Z

    .line 461
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->this$0:Lokhttp3/Cache;

    iget v2, v0, Lokhttp3/Cache;->writeAbortCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lokhttp3/Cache;->writeAbortCount:I

    .line 462
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->cacheOut:Lokio/Sink;

    invoke-static {v0}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 465
    :try_start_1
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->editor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    goto :goto_0

    .line 462
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public body()Lokio/Sink;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lokhttp3/Cache$CacheRequestImpl;->body:Lokio/Sink;

    return-object v0
.end method
