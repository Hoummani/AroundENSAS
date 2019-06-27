.class Lcom/parse/ParseExecutors;
.super Ljava/lang/Object;
.source "ParseExecutors.java"


# static fields
.field private static final SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

.field private static scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseExecutors;->SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static io()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static main()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static scheduled()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 24
    sget-object v1, Lcom/parse/ParseExecutors;->SCHEDULED_EXECUTOR_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/parse/ParseExecutors;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseExecutors;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    sget-object v0, Lcom/parse/ParseExecutors;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
