.class Lcom/parse/CachedCurrentUserController;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lcom/parse/ParseCurrentUserController;


# instance fields
.field currentUser:Lcom/parse/ParseUser;

.field currentUserMatchesDisk:Z

.field private final mutex:Ljava/lang/Object;

.field private final store:Lcom/parse/ParseObjectStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field

.field private final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method public constructor <init>(Lcom/parse/ParseObjectStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "store":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<Lcom/parse/ParseUser;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 39
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CachedCurrentUserController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseObjectStore;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CachedCurrentUserController;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CachedCurrentUserController;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/parse/CachedCurrentUserController;->lazyLogIn()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method private lazyLogIn()Lcom/parse/ParseUser;
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 272
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "anonymous"

    invoke-virtual {p0, v1, v0}, Lcom/parse/CachedCurrentUserController;->lazyLogIn(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public clearFromDisk()V
    .locals 2

    .prologue
    .line 146
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 149
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->store:Lcom/parse/ParseObjectStore;

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->deleteAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    return-void

    .line 149
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearFromMemory()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 141
    monitor-exit v1

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public existsAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 116
    :goto_0
    return-object v0

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$2;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$2;-><init>(Lcom/parse/CachedCurrentUserController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/CachedCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getAsync(Z)Lbolts/Task;
    .locals 2
    .param p1, "shouldAutoCreateUser"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 216
    :goto_0
    return-object v0

    .line 214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$5;

    invoke-direct {v1, p0, p1}, Lcom/parse/CachedCurrentUserController$5;-><init>(Lcom/parse/CachedCurrentUserController;Z)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCurrentSessionTokenAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/CachedCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentUserController$3;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$3;-><init>(Lcom/parse/CachedCurrentUserController;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isCurrent(Lcom/parse/ParseObject;)Z
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController;->isCurrent(Lcom/parse/ParseUser;)Z

    move-result v0

    return v0
.end method

.method public isCurrent(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method lazyLogIn(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/parse/ParseUser;

    invoke-static {v1}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 278
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v2, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->setIsCurrentUser(Z)V

    .line 280
    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 281
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 284
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    .line 285
    iput-object v0, p0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    .line 286
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 288
    return-object v0

    .line 281
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 286
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public logOutAsync()Lbolts/Task;
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
    .line 170
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$4;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentUserController$4;-><init>(Lcom/parse/CachedCurrentUserController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/parse/ParseUser;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController;->setAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public setAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentUserController$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/CachedCurrentUserController$1;-><init>(Lcom/parse/CachedCurrentUserController;Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public setIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v1, p0, Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 100
    :goto_0
    return-object v0

    .line 98
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController;->setAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
