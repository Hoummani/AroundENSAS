.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 272
    iput-wide p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    iput-object p3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 275
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    if-nez v3, :cond_0

    .line 278
    new-instance v3, Lcom/facebook/appevents/internal/SessionInfo;

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Lcom/facebook/appevents/internal/SessionInfo;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$202(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;

    .line 281
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/facebook/appevents/internal/SessionInfo;->setSessionLastEventTime(Ljava/lang/Long;)V

    .line 282
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-gtz v3, :cond_1

    .line 286
    new-instance v2, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;

    invoke-direct {v2, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5$1;-><init>(Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;)V

    .line 304
    .local v2, "task":Ljava/lang/Runnable;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$600()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 305
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$800()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    .line 307
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$400()I

    move-result v7

    int-to-long v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 305
    invoke-interface {v3, v2, v8, v9, v7}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 309
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$900()J

    move-result-wide v0

    .line 314
    .local v0, "appearTime":J
    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    iget-wide v6, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$currentTime:J

    sub-long/2addr v6, v0

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .line 317
    .local v4, "timeSpentOnActivityInSeconds":J
    :cond_2
    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;->val$activityName:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logActivityTimeSpentEvent(Ljava/lang/String;J)V

    .line 322
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$200()Lcom/facebook/appevents/internal/SessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/appevents/internal/SessionInfo;->writeSessionToDisk()V

    .line 323
    return-void

    .line 309
    .end local v0    # "appearTime":J
    .end local v4    # "timeSpentOnActivityInSeconds":J
    .restart local v2    # "task":Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
