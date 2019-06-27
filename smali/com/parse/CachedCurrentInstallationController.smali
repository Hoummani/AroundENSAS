.class Lcom/parse/CachedCurrentInstallationController;
.super Ljava/lang/Object;
.source "CachedCurrentInstallationController.java"

# interfaces
.implements Lcom/parse/ParseCurrentInstallationController;


# static fields
.field static final TAG:Ljava/lang/String; = "com.parse.CachedCurrentInstallationController"


# instance fields
.field currentInstallation:Lcom/parse/ParseInstallation;

.field private final installationId:Lcom/parse/InstallationId;

.field private final mutex:Ljava/lang/Object;

.field private final store:Lcom/parse/ParseObjectStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field

.field private final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method public constructor <init>(Lcom/parse/ParseObjectStore;Lcom/parse/InstallationId;)V
    .locals 1
    .param p2, "installationId"    # Lcom/parse/InstallationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObjectStore",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/InstallationId;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "store":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<Lcom/parse/ParseInstallation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    .line 42
    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;

    .line 43
    iput-object p2, p0, Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/InstallationId;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CachedCurrentInstallationController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/ParseObjectStore;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CachedCurrentInstallationController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/CachedCurrentInstallationController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CachedCurrentInstallationController;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public clearFromDisk()V
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 146
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->installationId:Lcom/parse/InstallationId;

    invoke-virtual {v0}, Lcom/parse/InstallationId;->clear()V

    .line 150
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->store:Lcom/parse/ParseObjectStore;

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->deleteAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    :goto_0
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearFromMemory()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 140
    monitor-exit v1

    .line 141
    return-void

    .line 140
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
    .line 117
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$3;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentInstallationController$3;-><init>(Lcom/parse/CachedCurrentInstallationController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 79
    :goto_0
    return-object v0

    .line 77
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$2;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentInstallationController$2;-><init>(Lcom/parse/CachedCurrentInstallationController;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrent(Lcom/parse/ParseInstallation;)Z
    .locals 2
    .param p1, "installation"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic isCurrent(Lcom/parse/ParseObject;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/parse/ParseInstallation;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController;->isCurrent(Lcom/parse/ParseInstallation;)Z

    move-result v0

    return v0
.end method

.method public setAsync(Lcom/parse/ParseInstallation;)Lbolts/Task;
    .locals 2
    .param p1, "installation"    # Lcom/parse/ParseInstallation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseInstallation;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController;->isCurrent(Lcom/parse/ParseInstallation;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/CachedCurrentInstallationController$1;-><init>(Lcom/parse/CachedCurrentInstallationController;Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic setAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/parse/ParseInstallation;

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController;->setAsync(Lcom/parse/ParseInstallation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
