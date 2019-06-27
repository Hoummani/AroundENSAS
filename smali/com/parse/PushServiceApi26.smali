.class public final Lcom/parse/PushServiceApi26;
.super Landroid/app/job/JobService;
.source "PushServiceApi26.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final INTENT_KEY:Ljava/lang/String; = "intent"

.field private static final JOB_SERVICE_ID:I = 0x3e7

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private handler:Lcom/parse/PushHandler;

.field private jobsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/parse/PushServiceApi26;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/parse/PushServiceApi26;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/parse/PushServiceApi26;)Lcom/parse/PushHandler;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushServiceApi26;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parse/PushServiceApi26;->getHandler()Lcom/parse/PushHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/PushServiceApi26;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushServiceApi26;

    .prologue
    .line 32
    iget v0, p0, Lcom/parse/PushServiceApi26;->jobsCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/parse/PushServiceApi26;)I
    .locals 2
    .param p0, "x0"    # Lcom/parse/PushServiceApi26;

    .prologue
    .line 32
    iget v0, p0, Lcom/parse/PushServiceApi26;->jobsCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/parse/PushServiceApi26;->jobsCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/parse/PushServiceApi26;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/PushServiceApi26;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/parse/PushServiceApi26;->tearDown()V

    return-void
.end method

.method private getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/parse/PushServiceApi26;->executor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushServiceApi26;->executor:Ljava/util/concurrent/ExecutorService;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/parse/PushServiceApi26;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private getHandler()Lcom/parse/PushHandler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/parse/PushServiceApi26;->handler:Lcom/parse/PushHandler;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/parse/PushServiceUtils;->createPushHandler()Lcom/parse/PushHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushServiceApi26;->handler:Lcom/parse/PushHandler;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/parse/PushServiceApi26;->handler:Lcom/parse/PushHandler;

    return-object v0
.end method

.method static isSupported()Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method static run(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 38
    const-string v6, "jobscheduler"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 40
    .local v3, "scheduler":Landroid/app/job/JobScheduler;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    .local v2, "extra":Landroid/os/Bundle;
    const-string v6, "intent"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcom/parse/PushServiceApi26;

    invoke-direct {v0, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v6, Landroid/app/job/JobInfo$Builder;

    const/16 v7, 0x3e7

    invoke-direct {v6, v7, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v8, 0x1

    .line 44
    invoke-virtual {v6, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    .line 45
    invoke-virtual {v6, v8, v9}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 46
    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 47
    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresBatteryNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 48
    invoke-virtual {v6, v5}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 49
    invoke-virtual {v6, v2}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    .line 50
    invoke-virtual {v6}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v6

    .line 43
    invoke-virtual {v3, v6}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    .line 51
    .local v1, "did":I
    if-ne v1, v4, :cond_0

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private tearDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/parse/PushServiceApi26;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/PushServiceApi26;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 114
    :cond_0
    iput-object v1, p0, Lcom/parse/PushServiceApi26;->executor:Ljava/util/concurrent/ExecutorService;

    .line 115
    iput-object v1, p0, Lcom/parse/PushServiceApi26;->handler:Lcom/parse/PushHandler;

    .line 116
    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 66
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    if-nez v2, :cond_0

    .line 67
    sget-object v2, Lcom/parse/PushServiceApi26;->TAG:Ljava/lang/String;

    const-string v3, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v2, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x0

    .line 93
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, "params":Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/parse/PushServiceApi26;->jobsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/parse/PushServiceApi26;->jobsCount:I

    .line 79
    invoke-direct {p0}, Lcom/parse/PushServiceApi26;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/parse/PushServiceApi26$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/PushServiceApi26$1;-><init>(Lcom/parse/PushServiceApi26;Landroid/content/Intent;Landroid/app/job/JobParameters;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1
    .param p1, "jobParameters"    # Landroid/app/job/JobParameters;

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method
