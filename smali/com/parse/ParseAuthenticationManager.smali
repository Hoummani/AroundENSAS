.class Lcom/parse/ParseAuthenticationManager;
.super Ljava/lang/Object;
.source "ParseAuthenticationManager.java"


# instance fields
.field private final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/AuthenticationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final controller:Lcom/parse/ParseCurrentUserController;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/parse/ParseCurrentUserController;)V
    .locals 1
    .param p1, "controller"    # Lcom/parse/ParseCurrentUserController;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    .line 25
    iput-object p1, p0, Lcom/parse/ParseAuthenticationManager;->controller:Lcom/parse/ParseCurrentUserController;

    .line 26
    return-void
.end method


# virtual methods
.method public deauthenticateAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v2, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/AuthenticationCallback;

    .line 79
    .local v0, "callback":Lcom/parse/AuthenticationCallback;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/parse/ParseAuthenticationManager$3;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseAuthenticationManager$3;-><init>(Lcom/parse/ParseAuthenticationManager;Lcom/parse/AuthenticationCallback;)V

    .line 87
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 81
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 89
    :goto_0
    return-object v1

    .line 79
    .end local v0    # "callback":Lcom/parse/AuthenticationCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 89
    .restart local v0    # "callback":Lcom/parse/AuthenticationCallback;
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Lcom/parse/AuthenticationCallback;)V
    .locals 4
    .param p1, "authType"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/AuthenticationCallback;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid authType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback already registered for <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    .line 36
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 38
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const-string v0, "anonymous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->controller:Lcom/parse/ParseCurrentUserController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseAuthenticationManager$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseAuthenticationManager$1;-><init>(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0
.end method

.method public restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
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
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/AuthenticationCallback;

    .line 63
    .local v0, "callback":Lcom/parse/AuthenticationCallback;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-nez v0, :cond_0

    .line 65
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 63
    .end local v0    # "callback":Lcom/parse/AuthenticationCallback;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 67
    .restart local v0    # "callback":Lcom/parse/AuthenticationCallback;
    :cond_0
    new-instance v1, Lcom/parse/ParseAuthenticationManager$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/parse/ParseAuthenticationManager$2;-><init>(Lcom/parse/ParseAuthenticationManager;Lcom/parse/AuthenticationCallback;Ljava/util/Map;)V

    .line 72
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method
