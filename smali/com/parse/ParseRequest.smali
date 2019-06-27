.class abstract Lcom/parse/ParseRequest;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRequest$ParseRequestException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field static final DEFAULT_INITIAL_RETRY_DELAY:J = 0x3e8L

.field protected static final DEFAULT_MAX_RETRIES:I = 0x4

.field private static final KEEP_ALIVE_TIME:J = 0x1L

.field private static final MAX_POOL_SIZE:I

.field private static final MAX_QUEUE_SIZE:I = 0x80

.field protected static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static defaultInitialRetryDelay:J

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field method:Lcom/parse/http/ParseHttpRequest$Method;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 36
    new-instance v0, Lcom/parse/ParseRequest$1;

    invoke-direct {v0}, Lcom/parse/ParseRequest$1;-><init>()V

    sput-object v0, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    .line 49
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    .line 50
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    .line 63
    sget v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    sget v1, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v6, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRequest;->newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 70
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-void
.end method

.method public constructor <init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 95
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 97
    iput-object p2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 92
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/parse/ParseRequest;->maxRetries()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseRequest;
    .param p1, "x1"    # Lcom/parse/ParseHttpClient;
    .param p2, "x2"    # Lcom/parse/http/ParseHttpRequest;
    .param p3, "x3"    # I
    .param p4, "x4"    # J
    .param p6, "x5"    # Lcom/parse/ProgressCallback;
    .param p7, "x6"    # Lbolts/Task;

    .prologue
    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 12
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "request"    # Lcom/parse/http/ParseHttpRequest;
    .param p3, "attemptsMade"    # I
    .param p4, "delay"    # J
    .param p6, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/http/ParseHttpRequest;",
            "IJ",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    .local p7, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v2

    .line 217
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v11

    new-instance v2, Lcom/parse/ParseRequest$4;

    move-object v3, p0

    move-object/from16 v4, p7

    move v5, p3

    move-wide/from16 v6, p4

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/parse/ParseRequest$4;-><init>(Lcom/parse/ParseRequest;Lbolts/Task;IJLcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v11, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method private executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 8
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "request"    # Lcom/parse/http/ParseHttpRequest;
    .param p3, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/http/ParseHttpRequest;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    .local p4, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    sget-wide v2, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    long-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-long v2, v2

    add-long v4, v0, v2

    .line 198
    .local v4, "delay":J
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInitialRetryDelay()J
    .locals 2

    .prologue
    .line 76
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method private static maxRetries()I
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x4

    .line 84
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->configuration()Lcom/parse/Parse$Configuration;

    move-result-object v0

    iget v0, v0, Lcom/parse/Parse$Configuration;->maxRetries:I

    goto :goto_0
.end method

.method private static newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .param p0, "corePoolSize"    # I
    .param p1, "maxPoolSize"    # I
    .param p2, "keepAliveTime"    # J
    .param p4, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .prologue
    .line 57
    .local p5, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 59
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 60
    return-object v1
.end method

.method private sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "request"    # Lcom/parse/http/ParseHttpRequest;
    .param p3, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/http/ParseHttpRequest;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseRequest$3;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)V

    sget-object v2, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$2;-><init>(Lcom/parse/ParseRequest;)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 140
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public static setDefaultInitialRetryDelay(J)V
    .locals 0
    .param p0, "delay"    # J

    .prologue
    .line 73
    sput-wide p0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    .line 74
    return-void
.end method


# virtual methods
.method public executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;
    .locals 2
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v1, 0x0

    .line 162
    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    .local p2, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 166
    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 1
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .param p3, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .param p3, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    .local p4, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    iget-object v2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p2}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpRequest;

    move-result-object v0

    .line 182
    .local v0, "request":Lcom/parse/http/ParseHttpRequest;
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method protected newBody(Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpBody;
    .locals 1
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 102
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 272
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    .line 273
    .local v0, "e":Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 274
    return-object v0
.end method

.method protected newRequest(Lcom/parse/http/ParseHttpRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpRequest;
    .locals 4
    .param p1, "method"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 109
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v1, Lcom/parse/http/ParseHttpRequest$Builder;

    invoke-direct {v1}, Lcom/parse/http/ParseHttpRequest$Builder;-><init>()V

    .line 110
    invoke-virtual {v1, p1}, Lcom/parse/http/ParseHttpRequest$Builder;->setMethod(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1, p2}, Lcom/parse/http/ParseHttpRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;

    move-result-object v0

    .line 113
    .local v0, "requestBuilder":Lcom/parse/http/ParseHttpRequest$Builder;
    sget-object v1, Lcom/parse/ParseRequest$5;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 122
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/parse/ParseRequest;->newBody(Lcom/parse/ProgressCallback;)Lcom/parse/http/ParseHttpBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/http/ParseHttpRequest$Builder;->setBody(Lcom/parse/http/ParseHttpBody;)Lcom/parse/http/ParseHttpRequest$Builder;

    .line 124
    :pswitch_1
    invoke-virtual {v0}, Lcom/parse/http/ParseHttpRequest$Builder;->build()Lcom/parse/http/ParseHttpRequest;

    move-result-object v1

    return-object v1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 281
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    .line 282
    .local v0, "e":Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 283
    return-object v0
.end method

.method protected newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 292
    .local p0, "this":Lcom/parse/ParseRequest;, "Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .local v0, "e":Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 295
    return-object v0
.end method

.method protected abstract onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation
.end method
