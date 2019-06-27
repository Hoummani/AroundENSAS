.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseUser$State;
    }
.end annotation


# static fields
.field private static final KEY_AUTH_DATA:Ljava/lang/String; = "authData"

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final PARCEL_KEY_IS_CURRENT_USER:Ljava/lang/String; = "_isCurrentUser"

.field private static final READ_ONLY_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field private static final isAutoUserEnabledMutex:Ljava/lang/Object;


# instance fields
.field private isCurrentUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sessionToken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "authData"

    aput-object v2, v0, v1

    .line 42
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 41
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    .line 1443
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 180
    return-void
.end method

.method static synthetic access$200(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseUser;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/parse/ParseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$700(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Lbolts/Task;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseUser;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static become(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 878
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    if-nez p0, :cond_0

    .line 845
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a sessionToken for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 848
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseUserController;->getUserAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$10;

    invoke-direct {v1}, Lcom/parse/ParseUser$10;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "sessionToken"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 894
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 895
    return-void
.end method

.method static disableAutomaticUser()V
    .locals 2

    .prologue
    .line 1462
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1463
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1464
    monitor-exit v1

    .line 1465
    return-void

    .line 1464
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableAutomaticUser()V
    .locals 2

    .prologue
    .line 1456
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1457
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1458
    monitor-exit v1

    .line 1459
    return-void

    .line 1458
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableRevocableSessionInBackground()Lbolts/Task;
    .locals 4
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
    .line 1508
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    new-instance v1, Lcom/parse/NetworkUserController;

    .line 1509
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/parse/NetworkUserController;-><init>(Lcom/parse/ParseHttpClient;Z)V

    .line 1508
    invoke-virtual {v0, v1}, Lcom/parse/ParseCorePlugins;->registerUserController(Lcom/parse/ParseUserController;)V

    .line 1511
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$17;

    invoke-direct {v1}, Lcom/parse/ParseUser$17;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAuthData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v0

    return-object v0
.end method

.method static getCurrentSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 931
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 932
    .local v0, "current":Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentSessionTokenAsync()Lbolts/Task;
    .locals 1
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
    .line 937
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentUserController;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 909
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUser(Z)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUser(Z)Lcom/parse/ParseUser;
    .locals 2
    .param p0, "shouldAutoCreateUser"    # Z

    .prologue
    .line 922
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    :goto_0
    return-object v1

    .line 923
    :catch_0
    move-exception v0

    .line 925
    .local v0, "e":Lcom/parse/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentUserAsync()Lbolts/Task;
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
    .line 899
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentUserController;->getAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static getCurrentUserController()Lcom/parse/ParseCurrentUserController;
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static getUserController()Lcom/parse/ParseUserController;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 2

    .prologue
    .line 1468
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1469
    :try_start_0
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    monitor-exit v1

    return v0

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
    .locals 5
    .param p1, "authType"    # Ljava/lang/String;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1286
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    .line 1287
    .local v0, "isLazy":Z
    const-string v2, "anonymous"

    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1289
    .local v1, "oldAnonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 1290
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 1292
    invoke-virtual {p0, p4, v0, p3}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v2

    new-instance v4, Lcom/parse/ParseUser$14;

    invoke-direct {v4, p0, p1, v1}, Lcom/parse/ParseUser$14;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 1305
    .end local v0    # "isLazy":Z
    .end local v1    # "oldAnonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private linkWithAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1312
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseUser$15;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    if-nez p0, :cond_0

    .line 772
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a username for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 774
    :cond_0
    if-nez p1, :cond_1

    .line 775
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify a password for the user to log in with"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/parse/ParseUserController;->logInAsync(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$9;

    invoke-direct {v1}, Lcom/parse/ParseUser$9;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "username"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 828
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 829
    return-void
.end method

.method public static logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 4
    .param p0, "authType"    # Ljava/lang/String;
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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 1123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid authType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1126
    :cond_0
    new-instance v0, Lcom/parse/ParseUser$11;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$11;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1146
    .local v0, "logInWithTask":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Lcom/parse/ParseUser;>;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$12;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseUser$12;-><init>(Ljava/lang/String;Ljava/util/Map;Lbolts/Continuation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOut()V
    .locals 1

    .prologue
    .line 993
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :goto_0
    return-void

    .line 994
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static logOutInBackground()Lbolts/Task;
    .locals 1
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
    .line 966
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentUserController;->logOutAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static logOutInBackground(Lcom/parse/LogOutCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/LogOutCallback;

    .prologue
    .line 977
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 978
    return-void
.end method

.method static pinCurrentUserIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .param p0, "user"    # Lcom/parse/ParseUser;
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
    .line 949
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseCurrentUserController;->setIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static registerAuthenticationCallback(Ljava/lang/String;Lcom/parse/AuthenticationCallback;)V
    .locals 1
    .param p0, "authType"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/AuthenticationCallback;

    .prologue
    .line 1105
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/parse/ParseAuthenticationManager;->register(Ljava/lang/String;Lcom/parse/AuthenticationCallback;)V

    .line 1106
    return-void
.end method

.method private removeAuthData(Ljava/lang/String;)V
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 368
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 370
    .local v0, "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseUser;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 372
    monitor-exit v2

    .line 373
    return-void

    .line 372
    .end local v0    # "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1063
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 1064
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
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
    .line 1046
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseUserController;->requestPasswordResetAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .param p0, "email"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/RequestPasswordResetCallback;

    .prologue
    .line 1081
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1082
    return-void
.end method

.method private restoreAnonymity(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "anonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 459
    if-eqz p1, :cond_0

    .line 460
    :try_start_0
    const-string v0, "anonymous"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 462
    :cond_0
    monitor-exit v1

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;
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
    .line 942
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/ParseCurrentUserController;->setAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p1, "newSessionToken"    # Ljava/lang/String;
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
    .line 329
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    .line 331
    .local v1, "state":Lcom/parse/ParseUser$State;
    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    .line 338
    :goto_0
    return-object v2

    .line 335
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v2

    .line 336
    invoke-virtual {v2, p1}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    .line 337
    .local v0, "builder":Lcom/parse/ParseUser$State$Builder;
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 338
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 339
    .end local v0    # "builder":Lcom/parse/ParseUser$State$Builder;
    .end local v1    # "state":Lcom/parse/ParseUser$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private stripAnonymity()V
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 448
    const-string v0, "anonymous"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 453
    :cond_0
    :goto_0
    monitor-exit v1

    .line 454
    return-void

    .line 450
    :cond_1
    const-string v0, "anonymous"

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synchronizeAuthDataAsync(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 2
    .param p1, "manager"    # Lcom/parse/ParseAuthenticationManager;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseAuthenticationManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1268
    .local p3, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1, p2, p3}, Lcom/parse/ParseAuthenticationManager;->restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$13;

    invoke-direct {v1, p0, p2}, Lcom/parse/ParseUser$13;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 1533
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1534
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseUser$20;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseUser$20;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$19;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$19;-><init>(Lcom/parse/ParseUser;)V

    .line 1539
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1534
    return-object v1
.end method


# virtual methods
.method cleanUpAuthDataAsync()Lbolts/Task;
    .locals 9
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
    const/4 v8, 0x0

    .line 258
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v1

    .line 260
    .local v1, "controller":Lcom/parse/ParseAuthenticationManager;
    iget-object v7, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseUser$State;->authData()Ljava/util/Map;

    move-result-object v0

    .line 262
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 263
    const/4 v6, 0x0

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    monitor-exit v7

    .line 282
    :goto_0
    return-object v6

    .line 265
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v5, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 269
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 270
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 271
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 272
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 273
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v8}, Lcom/parse/ParseAuthenticationManager;->restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v6}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 265
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .end local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 277
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    .restart local v5    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v6

    .line 278
    invoke-virtual {v6, v0}, Lcom/parse/ParseUser$State$Builder;->authData(Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v6

    .line 279
    invoke-virtual {v6}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v4

    .line 280
    .local v4, "newState":Lcom/parse/ParseUser$State;
    invoke-virtual {p0, v4}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 282
    invoke-static {v5}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v6

    goto :goto_0
.end method

.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 550
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 560
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 584
    :cond_0
    :goto_0
    return-object v0

    .line 563
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 565
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 566
    new-instance v1, Lcom/parse/ParseUser$5;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;)V

    .line 571
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$3;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseUser;)V

    .line 576
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1438
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1087
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method getAuthData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 344
    :try_start_0
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 345
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit v2

    return-object v0

    .line 352
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getState()Lcom/parse/ParseObject$State;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method

.method getState()Lcom/parse/ParseUser$State;
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "result"    # Lcom/parse/ParseObject$State;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 289
    .local v0, "success":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 290
    const-string v1, "password"

    invoke-virtual {p2, v1}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 288
    .end local v0    # "success":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 4

    .prologue
    .line 219
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 221
    .local v0, "current":Lcom/parse/ParseUser;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    .line 221
    return v1

    .line 224
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 225
    .end local v0    # "current":Lcom/parse/ParseUser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isCurrentUser()Z
    .locals 2

    .prologue
    .line 309
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    monitor-exit v1

    return v0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLazy()Z
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isLinked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "authType"    # Ljava/lang/String;

    .prologue
    .line 1232
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 1233
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v0

    return v0
.end method

.method public linkWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 1335
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

    .line 1337
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method logOutAsync()Lbolts/Task;
    .locals 1
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
    .line 1002
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->logOutAsync(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method logOutAsync(Z)Lbolts/Task;
    .locals 8
    .param p1, "revoke"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1006
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v0

    .line 1007
    .local v0, "controller":Lcom/parse/ParseAuthenticationManager;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1010
    .local v4, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 1011
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, "oldSessionToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1014
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/parse/ParseAuthenticationManager;->deauthenticateAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1023
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "oldSessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1017
    .restart local v3    # "oldSessionToken":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 1018
    invoke-virtual {v5, v7}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v5

    const/4 v7, 0x0

    .line 1019
    invoke-virtual {v5, v7}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    move-result-object v5

    .line 1020
    invoke-virtual {v5}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v2

    .line 1021
    .local v2, "newState":Lcom/parse/ParseUser$State;
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 1022
    invoke-virtual {p0, v2}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 1023
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1025
    if-eqz p1, :cond_1

    .line 1026
    invoke-static {v3}, Lcom/parse/ParseSession;->revokeAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    :cond_1
    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v5

    return-object v5
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 194
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 1487
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1488
    const-string v0, "_isCurrentUser"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->setIsCurrentUser(Z)V

    .line 1489
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1479
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1480
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1481
    :try_start_0
    const-string v0, "_isCurrentUser"

    iget-boolean v2, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1482
    monitor-exit v1

    .line 1483
    return-void

    .line 1482
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 440
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    monitor-exit v1

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method putAuthData(Ljava/lang/String;Ljava/util/Map;)V
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 361
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 362
    .local v0, "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseUser;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    monitor-exit v2

    .line 365
    return-void

    .line 364
    .end local v0    # "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
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
    .line 1380
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1381
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1383
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1389
    :goto_0
    return-object v1

    .line 1386
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1389
    .local v0, "operations":Lcom/parse/ParseOperationSet;
    new-instance v1, Lcom/parse/ParseUser$16;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseUser$16;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1428
    .end local v0    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 491
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "isLazy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
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
    .line 496
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p2, :cond_1

    .line 497
    invoke-virtual {p0, p3}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 502
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    new-instance v1, Lcom/parse/ParseUser$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    .line 509
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 517
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    return-object v0

    .line 499
    :cond_1
    invoke-super {p0, p1, p3}, Lcom/parse/ParseObject;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method setIsCurrentUser(Z)V
    .locals 2
    .param p1, "isCurrentUser"    # Z

    .prologue
    .line 315
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 316
    :try_start_0
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 317
    monitor-exit v1

    .line 318
    return-void

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    return-void
.end method

.method setState(Lcom/parse/ParseObject$State;)V
    .locals 3
    .param p1, "newState"    # Lcom/parse/ParseObject$State;

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 523
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    .line 525
    .local v0, "newStateBuilder":Lcom/parse/ParseUser$State$Builder;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "sessionToken"

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 526
    const-string v1, "sessionToken"

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "authData"

    invoke-virtual {p1, v1}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 530
    const-string v1, "authData"

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    .line 532
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object p1

    .line 534
    .end local v0    # "newStateBuilder":Lcom/parse/ParseUser$State$Builder;
    :cond_2
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 535
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 382
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 737
    return-void
.end method

.method signUpAsync(Lbolts/Task;)Lbolts/Task;
    .locals 12
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
    .line 609
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 610
    .local v2, "user":Lcom/parse/ParseUser;
    iget-object v10, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v10

    .line 611
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v9

    .line 612
    .local v9, "sessionToken":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    .line 695
    :goto_1
    return-object v0

    .line 611
    .end local v9    # "sessionToken":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 616
    .restart local v9    # "sessionToken":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 718
    .end local v9    # "sessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 620
    .restart local v9    # "sessionToken":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 625
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v6

    .line 626
    .local v6, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "anonymous"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "anonymous"

    .line 627
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 628
    invoke-virtual {p0, v9, p1}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 632
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that has already signed up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 638
    .end local v6    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    iget-object v0, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that is already signing up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 645
    :cond_5
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 649
    if-ne p0, v2, :cond_6

    .line 650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to merge currentUser with itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto :goto_1

    .line 654
    :cond_6
    invoke-virtual {v2}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v7

    .line 655
    .local v7, "isLazy":Z
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "oldUsername":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "oldPassword":Ljava/lang/String;
    const-string v0, "anonymous"

    invoke-direct {v2, v0}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 659
    .local v5, "anonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 660
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 662
    invoke-virtual {p0}, Lcom/parse/ParseUser;->revert()V

    .line 664
    invoke-virtual {v2, v9, v7, p1}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;ZLbolts/Task;)Lbolts/Task;

    move-result-object v11

    new-instance v0, Lcom/parse/ParseUser$7;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseUser$7;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v11, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10

    goto/16 :goto_1

    .line 693
    .end local v3    # "oldUsername":Ljava/lang/String;
    .end local v4    # "oldPassword":Ljava/lang/String;
    .end local v5    # "anonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7    # "isLazy":Z
    :cond_7
    invoke-virtual {p0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v8

    .line 695
    .local v8, "operations":Lcom/parse/ParseOperationSet;
    new-instance v0, Lcom/parse/ParseUser$8;

    invoke-direct {v0, p0, v8, v9}, Lcom/parse/ParseUser$8;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public signUpInBackground()Lbolts/Task;
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
    .line 600
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$6;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SignUpCallback;

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 754
    return-void
.end method

.method synchronizeAllAuthDataAsync()Lbolts/Task;
    .locals 5
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
    .line 1242
    iget-object v4, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1243
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1244
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    monitor-exit v4

    .line 1252
    :goto_0
    return-object v3

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 1247
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1249
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1250
    .local v1, "authType":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->synchronizeAuthDataAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1247
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1    # "authType":Ljava/lang/String;
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1252
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_1
    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method

.method synchronizeAuthDataAsync(Ljava/lang/String;)Lbolts/Task;
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
    .line 1257
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1258
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1263
    :goto_0
    return-object v1

    .line 1261
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1262
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1263
    invoke-static {}, Lcom/parse/ParseUser;->getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;

    move-result-object v1

    invoke-direct {p0, v1, p1, v0}, Lcom/parse/ParseUser;->synchronizeAuthDataAsync(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 1262
    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p3, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "operationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    move-object v0, p2

    .line 243
    .local v0, "cleanOperationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 244
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseOperationSet;

    .line 245
    .local v3, "operations":Lcom/parse/ParseOperationSet;
    const-string v4, "password"

    invoke-virtual {v3, v4}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    if-ne v0, p2, :cond_0

    .line 247
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "cleanOperationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 249
    .restart local v0    # "cleanOperationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseOperationSet;

    invoke-direct {v1, v3}, Lcom/parse/ParseOperationSet;-><init>(Lcom/parse/ParseOperationSet;)V

    .line 250
    .local v1, "cleanOperations":Lcom/parse/ParseOperationSet;
    const-string v4, "password"

    invoke-virtual {v1, v4}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 243
    .end local v1    # "cleanOperations":Lcom/parse/ParseOperationSet;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v3    # "operations":Lcom/parse/ParseOperationSet;
    :cond_2
    invoke-super {p0, p1, v0, p3}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v4

    return-object v4
.end method

.method public unlinkFromInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
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
    const/4 v0, 0x0

    .line 1352
    if-nez p1, :cond_0

    .line 1353
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1363
    :goto_0
    return-object v0

    .line 1356
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1357
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1360
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 1361
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1363
    invoke-virtual {p0}, Lcom/parse/ParseUser;->saveInBackground()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method upgradeToRevocableSessionAsync()Lbolts/Task;
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
    .line 1524
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$18;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$18;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method validateDelete()V
    .locals 3

    .prologue
    .line 539
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 540
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 541
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    return-void
.end method

.method validateSave()V
    .locals 4

    .prologue
    .line 467
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 468
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 469
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 473
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 474
    :cond_1
    monitor-exit v2

    .line 482
    :cond_2
    return-void

    .line 476
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 480
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 481
    .local v0, "current":Lcom/parse/ParseUser;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    .end local v0    # "current":Lcom/parse/ParseUser;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method validateSaveEventually()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 298
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Lcom/parse/ParseException;

    const/4 v1, -0x1

    const-string v2, "Unable to saveEventually on a ParseUser with dirty password"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 304
    :cond_0
    return-void
.end method
