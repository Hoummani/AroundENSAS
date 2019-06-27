.class public Lcom/facebook/appevents/internal/ActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"


# static fields
.field private static final INCORRECT_IMPL_WARNING:Ljava/lang/String; = "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

.field private static final INTERRUPTION_THRESHOLD_MILLISECONDS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static final codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

.field private static currentActivityAppearTime:J

.field private static volatile currentFuture:Ljava/util/concurrent/ScheduledFuture;

.field private static final currentFutureLock:Ljava/lang/Object;

.field private static volatile currentSession:Lcom/facebook/appevents/internal/SessionInfo;

.field private static deviceSessionID:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static isAppIndexingEnabled:Ljava/lang/Boolean;

.field private static volatile isCheckingSession:Ljava/lang/Boolean;

.field private static sensorManager:Landroid/hardware/SensorManager;

.field private static final singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private static tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

.field private static final viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-class v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 76
    new-instance v0, Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/CodelessMatcher;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    .line 78
    new-instance v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-direct {v0}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->deviceSessionID:Ljava/lang/String;

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isCheckingSession:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1002(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 60
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 60
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->deviceSessionID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/facebook/appevents/codeless/ViewIndexer;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    return-object v0
.end method

.method static synthetic access$1302(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 60
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isCheckingSession:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$200()Lcom/facebook/appevents/internal/SessionInfo;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/facebook/appevents/internal/SessionInfo;)Lcom/facebook/appevents/internal/SessionInfo;
    .locals 0
    .param p0, "x0"    # Lcom/facebook/appevents/internal/SessionInfo;

    .prologue
    .line 60
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getSessionTimeoutInSeconds()I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 60
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p0
.end method

.method static synthetic access$800()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method static synthetic access$900()J
    .locals 2

    .prologue
    .line 60
    sget-wide v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J

    return-wide v0
.end method

.method private static cancelCurrentTask()V
    .locals 3

    .prologue
    .line 346
    sget-object v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFutureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 347
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 348
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 351
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static checkCodelessSession(Ljava/lang/String;)V
    .locals 2
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isCheckingSession:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isCheckingSession:Ljava/lang/Boolean;

    .line 363
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;

    invoke-direct {v1, p0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static getCurrentDeviceSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->deviceSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 418
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->deviceSessionID:Ljava/lang/String;

    .line 421
    :cond_0
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->deviceSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentSessionGuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentSession:Lcom/facebook/appevents/internal/SessionInfo;

    invoke-virtual {v0}, Lcom/facebook/appevents/internal/SessionInfo;->getSessionId()Ljava/util/UUID;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIsAppIndexingEnabled()Z
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static getSessionTimeoutInSeconds()I
    .locals 2

    .prologue
    .line 337
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v0

    .line 338
    .local v0, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-nez v0, :cond_0

    .line 339
    invoke-static {}, Lcom/facebook/appevents/internal/Constants;->getDefaultAppEventsSessionTimeoutInSeconds()I

    move-result v1

    .line 342
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/internal/FetchedAppSettings;->getSessionTimeoutInSeconds()I

    move-result v1

    goto :goto_0
.end method

.method public static isTracking()Z
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public static onActivityCreated(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 152
    .local v2, "currentTime":J
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "activityName":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;->create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;

    move-result-object v5

    .line 156
    .local v5, "sourceApplicationInfo":Lcom/facebook/appevents/internal/SourceApplicationInfo;
    new-instance v4, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;

    invoke-direct {v4}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$2;-><init>()V

    .line 164
    .local v4, "handleActivityCreate":Ljava/lang/Runnable;
    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method private static onActivityPaused(Landroid/app/Activity;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 258
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 259
    .local v1, "count":I
    if-gez v1, :cond_0

    .line 262
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 264
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v6, "Unexpected activity pause without a matching activity resume. Logging data may be incorrect. Make sure you call activateApp from your Application\'s onCreate method"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->cancelCurrentTask()V

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 270
    .local v2, "currentTime":J
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "activityName":Ljava/lang/String;
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-virtual {v5, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->remove(Landroid/app/Activity;)V

    .line 272
    new-instance v4, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;

    invoke-direct {v4, v2, v3, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$5;-><init>(JLjava/lang/String;)V

    .line 325
    .local v4, "handleActivityPaused":Ljava/lang/Runnable;
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 327
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    if-eqz v5, :cond_1

    .line 328
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v5}, Lcom/facebook/appevents/codeless/ViewIndexer;->unschedule()V

    .line 330
    :cond_1
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v5, :cond_2

    .line 331
    sget-object v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 333
    :cond_2
    return-void
.end method

.method public static onActivityResumed(Landroid/app/Activity;)V
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->foregroundActivityCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 170
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->cancelCurrentTask()V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 172
    .local v6, "currentTime":J
    sput-wide v6, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->currentActivityAppearTime:J

    .line 173
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "activityName":Ljava/lang/String;
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->codelessMatcher:Lcom/facebook/appevents/codeless/CodelessMatcher;

    invoke-virtual {v8, p0}, Lcom/facebook/appevents/codeless/CodelessMatcher;->add(Landroid/app/Activity;)V

    .line 175
    new-instance v5, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;

    invoke-direct {v5, v6, v7, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$3;-><init>(JLjava/lang/String;)V

    .line 209
    .local v5, "handleActivityResume":Ljava/lang/Runnable;
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->singleThreadExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v8, v5}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 212
    .local v4, "applicationContext":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "appId":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v3

    .line 215
    .local v3, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessSetupEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v8, "sensor"

    .line 218
    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/SensorManager;

    sput-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->sensorManager:Landroid/hardware/SensorManager;

    .line 219
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v8, :cond_0

    .line 223
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v9, 0x1

    .line 224
    invoke-virtual {v8, v9}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 225
    .local v0, "accelerometer":Landroid/hardware/Sensor;
    new-instance v8, Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-direct {v8, p0}, Lcom/facebook/appevents/codeless/ViewIndexer;-><init>(Landroid/app/Activity;)V

    sput-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 226
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    new-instance v9, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;

    invoke-direct {v9, v3, v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$4;-><init>(Lcom/facebook/internal/FetchedAppSettings;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V

    .line 240
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->sensorManager:Landroid/hardware/SensorManager;

    sget-object v9, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexingTrigger:Lcom/facebook/appevents/codeless/ViewIndexingTrigger;

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v0, v10}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 243
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 244
    sget-object v8, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-virtual {v8}, Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V

    goto :goto_0
.end method

.method public static startTracking(Landroid/app/Application;Ljava/lang/String;)V
    .locals 3
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->tracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 91
    :cond_0
    sput-object p1, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->appId:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public static updateAppIndexing(Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "appIndexingEnalbed"    # Ljava/lang/Boolean;

    .prologue
    .line 429
    sput-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;

    .line 430
    return-void
.end method
