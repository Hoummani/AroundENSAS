.class Lcom/parse/CacheQueryController;
.super Lcom/parse/AbstractQueryController;
.source "CacheQueryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/CacheQueryController$CommandDelegate;
    }
.end annotation


# instance fields
.field private final networkController:Lcom/parse/NetworkQueryController;


# direct methods
.method public constructor <init>(Lcom/parse/NetworkQueryController;)V
    .locals 0
    .param p1, "network"    # Lcom/parse/NetworkQueryController;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/parse/AbstractQueryController;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/parse/CacheQueryController;->networkController:Lcom/parse/NetworkQueryController;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/parse/CacheQueryController;)Lcom/parse/NetworkQueryController;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CacheQueryController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/CacheQueryController;->networkController:Lcom/parse/NetworkQueryController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CacheQueryController;
    .param p1, "x1"    # Lcom/parse/ParseQuery$State;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/parse/CacheQueryController;->findFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/CacheQueryController;
    .param p1, "x1"    # Lcom/parse/ParseQuery$State;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/parse/CacheQueryController;->countFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private countFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-static {p1, p2}, Lcom/parse/ParseRESTQueryCommand;->countCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v1, Lcom/parse/CacheQueryController$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/CacheQueryController$4;-><init>(Lcom/parse/CacheQueryController;Ljava/lang/String;Lcom/parse/ParseQuery$State;)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private findFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-static {p1, p2}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v1, Lcom/parse/CacheQueryController$3;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/CacheQueryController$3;-><init>(Lcom/parse/CacheQueryController;Ljava/lang/String;Lcom/parse/ParseQuery$State;)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;
    .locals 3
    .param p2, "policy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/CacheQueryController$CommandDelegate",
            "<TTResult;>;",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "c":Lcom/parse/CacheQueryController$CommandDelegate;, "Lcom/parse/CacheQueryController$CommandDelegate<TTResult;>;"
    sget-object v0, Lcom/parse/CacheQueryController$7;->$SwitchMap$com$parse$ParseQuery$CachePolicy:[I

    invoke-virtual {p2}, Lcom/parse/ParseQuery$CachePolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cache policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :pswitch_0
    invoke-interface {p1}, Lcom/parse/CacheQueryController$CommandDelegate;->runOnNetworkAsync()Lbolts/Task;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    .line 129
    :pswitch_1
    invoke-interface {p1}, Lcom/parse/CacheQueryController$CommandDelegate;->runFromCacheAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-interface {p1}, Lcom/parse/CacheQueryController$CommandDelegate;->runFromCacheAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/CacheQueryController$5;

    invoke-direct {v1, p0, p1}, Lcom/parse/CacheQueryController$5;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/CacheQueryController$CommandDelegate;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-interface {p1}, Lcom/parse/CacheQueryController$CommandDelegate;->runOnNetworkAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/CacheQueryController$6;

    invoke-direct {v1, p0, p1}, Lcom/parse/CacheQueryController$6;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/CacheQueryController$CommandDelegate;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 157
    :pswitch_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You cannot use the cache policy CACHE_THEN_NETWORK with find()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
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
    .line 53
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "sessionToken":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/parse/CacheQueryController$2;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/parse/CacheQueryController$2;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;Lbolts/Task;)V

    .line 65
    .local v0, "callbacks":Lcom/parse/CacheQueryController$CommandDelegate;, "Lcom/parse/CacheQueryController$CommandDelegate<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/parse/CacheQueryController;->runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 53
    .end local v0    # "callbacks":Lcom/parse/CacheQueryController$CommandDelegate;, "Lcom/parse/CacheQueryController$CommandDelegate<Ljava/lang/Integer;>;"
    .end local v1    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "sessionToken":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/parse/CacheQueryController$1;

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/parse/CacheQueryController$1;-><init>(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;Lbolts/Task;)V

    .line 45
    .local v0, "callbacks":Lcom/parse/CacheQueryController$CommandDelegate;, "Lcom/parse/CacheQueryController$CommandDelegate<Ljava/util/List<TT;>;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/parse/CacheQueryController;->runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 33
    .end local v0    # "callbacks":Lcom/parse/CacheQueryController$CommandDelegate;, "Lcom/parse/CacheQueryController$CommandDelegate<Ljava/util/List<TT;>;>;"
    .end local v1    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
