.class Lcom/parse/ParsePinningEventuallyQueue;
.super Lcom/parse/ParseEventuallyQueue;
.source "ParsePinningEventuallyQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePinningEventuallyQueue$PauseException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ParsePinningEventuallyQueue"


# instance fields
.field private final connectionLock:Ljava/lang/Object;

.field private connectionTaskCompletionSource:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private eventuallyPinUUIDQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lcom/parse/ParseHttpClient;

.field private listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

.field private notifier:Lcom/parse/ConnectivityNotifier;

.field private operationSetTaskQueue:Lcom/parse/TaskQueue;

.field private pendingEventuallyTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbolts/TaskCompletionSource",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private pendingOperationSetUUIDTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lbolts/TaskCompletionSource",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private taskQueue:Lcom/parse/TaskQueue;

.field private final taskQueueSyncLock:Ljava/lang/Object;

.field private uuidToEventuallyPin:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation
.end field

.field private uuidToOperationSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/parse/ParseHttpClient;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/parse/ParseEventuallyQueue;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    .line 57
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$1;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 396
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    .line 90
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 92
    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue;->httpClient:Lcom/parse/ParseHttpClient;

    .line 94
    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    .line 95
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/ParseRESTCommand;
    .param p2, "x2"    # Lcom/parse/ParseObject;
    .param p3, "x3"    # Lbolts/Task;
    .param p4, "x4"    # Lbolts/TaskCompletionSource;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParsePinningEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/TaskCompletionSource;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/ParsePinningEventuallyQueue;)Lcom/parse/ParseHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->httpClient:Lcom/parse/ParseHttpClient;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/EventuallyPin;
    .param p2, "x2"    # Lcom/parse/ParseOperationSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParsePinningEventuallyQueue;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParsePinningEventuallyQueue;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/EventuallyPin;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;
    .param p1, "x1"    # Lcom/parse/EventuallyPin;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue;->runEventuallyAsync(Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParsePinningEventuallyQueue;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParsePinningEventuallyQueue;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method private enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/TaskCompletionSource;)Lbolts/Task;
    .locals 1
    .param p1, "command"    # Lcom/parse/ParseRESTCommand;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand;",
            "Lcom/parse/ParseObject;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lbolts/TaskCompletionSource",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p4, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$5;

    invoke-direct {v0, p0, p2, p1, p4}, Lcom/parse/ParsePinningEventuallyQueue$5;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseObject;Lcom/parse/ParseRESTCommand;Lbolts/TaskCompletionSource;)V

    invoke-virtual {p3, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$6;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$6;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private populateQueueAsync(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$8;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$8;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$7;

    invoke-direct {v1, p0}, Lcom/parse/ParsePinningEventuallyQueue$7;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    .line 298
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 292
    return-object v0
.end method

.method private process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->waitForConnectionAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParsePinningEventuallyQueue$13;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 4
    .param p1, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 320
    invoke-virtual {p1}, Lcom/parse/EventuallyPin;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->eventuallyPinUUIDQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParsePinningEventuallyQueue$9;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 340
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private runEventuallyAsync(Lcom/parse/EventuallyPin;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/EventuallyPin;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$11;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$11;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePinningEventuallyQueue$10;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$10;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;)V

    .line 355
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 350
    return-object v0
.end method

.method private waitForConnectionAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private whenAll(Ljava/util/Collection;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/TaskQueue;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "taskQueues":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/TaskQueue;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/TaskQueue;

    .line 622
    .local v1, "taskQueue":Lcom/parse/TaskQueue;
    new-instance v4, Lcom/parse/ParsePinningEventuallyQueue$15;

    invoke-direct {v4, p0}, Lcom/parse/ParsePinningEventuallyQueue$15;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v1, v4}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 629
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 632
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v1    # "taskQueue":Lcom/parse/TaskQueue;
    :cond_0
    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    .line 577
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v3, Lcom/parse/ParsePinningEventuallyQueue$14;

    invoke-direct {v3, p0}, Lcom/parse/ParsePinningEventuallyQueue$14;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {v2, v3}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 601
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :try_start_0
    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->simulateReboot()V

    .line 608
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 609
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 3
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
    .line 221
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1}, Lcom/parse/Parse;->requirePermission(Ljava/lang/String;)V

    .line 222
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 224
    .local v0, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/parse/ParsePinningEventuallyQueue$4;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 231
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->notifier:Lcom/parse/ConnectivityNotifier;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->listener:Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    invoke-virtual {v0, v1}, Lcom/parse/ConnectivityNotifier;->removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V

    .line 105
    return-void
.end method

.method public pause()V
    .locals 7

    .prologue
    .line 169
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    new-instance v4, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v2, v4}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 172
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    .line 173
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    new-instance v4, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v2, v4}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 174
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 179
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/TaskCompletionSource;

    new-instance v5, Lcom/parse/ParsePinningEventuallyQueue$PauseException;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V

    invoke-virtual {v2, v5}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 184
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 174
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 181
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 182
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 183
    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 184
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    const/4 v2, 0x2

    :try_start_4
    new-array v2, v2, [Lcom/parse/TaskQueue;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->operationSetTaskQueue:Lcom/parse/TaskQueue;

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/parse/ParsePinningEventuallyQueue;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_4
    .catch Lcom/parse/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public pendingCount()I
    .locals 2

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pendingCountAsync()Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pendingCountAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 135
    .local v0, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue$2;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePinningEventuallyQueue$2;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 149
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public pendingCountAsync(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParsePinningEventuallyQueue$3;

    invoke-direct {v0, p0}, Lcom/parse/ParsePinningEventuallyQueue$3;-><init>(Lcom/parse/ParsePinningEventuallyQueue;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 198
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    .line 199
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 204
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue;->populateQueueAsync()Lbolts/Task;

    .line 205
    return-void

    .line 201
    :cond_0
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    goto :goto_0
.end method

.method public setConnected(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .prologue
    .line 109
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->isConnected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 111
    invoke-super {p0, p1}, Lcom/parse/ParseEventuallyQueue;->setConnected(Z)V

    .line 112
    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    .line 115
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 120
    :cond_0
    :goto_0
    monitor-exit v1

    .line 121
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->connectionTaskCompletionSource:Lbolts/TaskCompletionSource;

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method simulateReboot()V
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->pause()V

    .line 565
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingOperationSetUUIDTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 566
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 567
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 568
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 570
    invoke-virtual {p0}, Lcom/parse/ParsePinningEventuallyQueue;->resume()V

    .line 571
    return-void
.end method

.method waitForOperationSetAndEventuallyPin(Lcom/parse/ParseOperationSet;Lcom/parse/EventuallyPin;)Lbolts/Task;
    .locals 6
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .param p2, "eventuallyPin"    # Lcom/parse/EventuallyPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/EventuallyPin;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 429
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    .line 462
    :goto_0
    return-object v3

    .line 435
    :cond_0
    iget-object v4, p0, Lcom/parse/ParsePinningEventuallyQueue;->taskQueueSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 436
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 437
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :goto_1
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parse/EventuallyPin;

    move-object p2, v0

    .line 447
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToOperationSet:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parse/ParseOperationSet;

    move-object p1, v0

    .line 449
    if-eqz p2, :cond_1

    if-nez p1, :cond_5

    .line 450
    :cond_1
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 451
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/TaskCompletionSource;

    .line 456
    .local v1, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :goto_2
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 460
    .end local v1    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    .end local v2    # "uuid":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 439
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    .line 440
    :try_start_1
    invoke-virtual {p2}, Lcom/parse/EventuallyPin;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->uuidToEventuallyPin:Ljava/util/HashMap;

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 443
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Either operationSet or eventuallyPin must be set."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 453
    .restart local v2    # "uuid":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 454
    .restart local v1    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 458
    .end local v1    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_5
    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue;->pendingEventuallyTasks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/TaskCompletionSource;

    .line 460
    .restart local v1    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    invoke-direct {p0, p2, p1}, Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParsePinningEventuallyQueue$12;

    invoke-direct {v4, p0, v2, v1}, Lcom/parse/ParsePinningEventuallyQueue$12;-><init>(Lcom/parse/ParsePinningEventuallyQueue;Ljava/lang/String;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method
