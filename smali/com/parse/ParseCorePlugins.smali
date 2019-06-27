.class Lcom/parse/ParseCorePlugins;
.super Ljava/lang/Object;
.source "ParseCorePlugins.java"


# static fields
.field static final FILENAME_CURRENT_CONFIG:Ljava/lang/String; = "currentConfig"

.field static final FILENAME_CURRENT_INSTALLATION:Ljava/lang/String; = "currentInstallation"

.field static final FILENAME_CURRENT_USER:Ljava/lang/String; = "currentUser"

.field private static final INSTANCE:Lcom/parse/ParseCorePlugins;

.field static final PIN_CURRENT_INSTALLATION:Ljava/lang/String; = "_currentInstallation"

.field static final PIN_CURRENT_USER:Ljava/lang/String; = "_currentUser"


# instance fields
.field private analyticsController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseAnalyticsController;",
            ">;"
        }
    .end annotation
.end field

.field private authenticationController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseAuthenticationManager;",
            ">;"
        }
    .end annotation
.end field

.field private cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseCloudCodeController;",
            ">;"
        }
    .end annotation
.end field

.field private configController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseConfigController;",
            ">;"
        }
    .end annotation
.end field

.field private currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseCurrentInstallationController;",
            ">;"
        }
    .end annotation
.end field

.field private currentUserController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseCurrentUserController;",
            ">;"
        }
    .end annotation
.end field

.field private defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseDefaultACLController;",
            ">;"
        }
    .end annotation
.end field

.field private fileController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseFileController;",
            ">;"
        }
    .end annotation
.end field

.field private localIdManager:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/LocalIdManager;",
            ">;"
        }
    .end annotation
.end field

.field private objectController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseObjectController;",
            ">;"
        }
    .end annotation
.end field

.field private pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParsePushChannelsController;",
            ">;"
        }
    .end annotation
.end field

.field private pushController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParsePushController;",
            ">;"
        }
    .end annotation
.end field

.field private queryController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseQueryController;",
            ">;"
        }
    .end annotation
.end field

.field private sessionController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseSessionController;",
            ">;"
        }
    .end annotation
.end field

.field private subclassingController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseObjectSubclassingController;",
            ">;"
        }
    .end annotation
.end field

.field private userController:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/parse/ParseUserController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/parse/ParseCorePlugins;

    invoke-direct {v0}, Lcom/parse/ParseCorePlugins;-><init>()V

    sput-object v0, Lcom/parse/ParseCorePlugins;->INSTANCE:Lcom/parse/ParseCorePlugins;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCorePlugins;->subclassingController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/parse/ParseCorePlugins;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/parse/ParseCorePlugins;->INSTANCE:Lcom/parse/ParseCorePlugins;

    return-object v0
.end method


# virtual methods
.method public getAnalyticsController()Lcom/parse/ParseAnalyticsController;
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseAnalyticsController;

    .line 196
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseAnalyticsController;-><init>(Lcom/parse/ParseEventuallyQueue;)V

    .line 195
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAnalyticsController;

    return-object v0
.end method

.method public getAuthenticationManager()Lcom/parse/ParseAuthenticationManager;
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 296
    new-instance v0, Lcom/parse/ParseAuthenticationManager;

    .line 297
    invoke-virtual {p0}, Lcom/parse/ParseCorePlugins;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseAuthenticationManager;-><init>(Lcom/parse/ParseCurrentUserController;)V

    .line 298
    .local v0, "controller":Lcom/parse/ParseAuthenticationManager;
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 300
    .end local v0    # "controller":Lcom/parse/ParseAuthenticationManager;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseAuthenticationManager;

    return-object v1
.end method

.method public getCloudCodeController()Lcom/parse/ParseCloudCodeController;
    .locals 4

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseCloudCodeController;

    .line 211
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseCloudCodeController;-><init>(Lcom/parse/ParseHttpClient;)V

    .line 210
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseCloudCodeController;

    return-object v0
.end method

.method public getConfigController()Lcom/parse/ParseConfigController;
    .locals 6

    .prologue
    .line 224
    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 226
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "currentConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 227
    .local v1, "file":Ljava/io/File;
    new-instance v0, Lcom/parse/ParseCurrentConfigController;

    invoke-direct {v0, v1}, Lcom/parse/ParseCurrentConfigController;-><init>(Ljava/io/File;)V

    .line 229
    .local v0, "currentConfigController":Lcom/parse/ParseCurrentConfigController;
    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    new-instance v4, Lcom/parse/ParseConfigController;

    .line 230
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/parse/ParseConfigController;-><init>(Lcom/parse/ParseHttpClient;Lcom/parse/ParseCurrentConfigController;)V

    .line 229
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .end local v0    # "currentConfigController":Lcom/parse/ParseCurrentConfigController;
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseConfigController;

    return-object v2
.end method

.method public getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;
    .locals 6

    .prologue
    .line 272
    iget-object v4, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 273
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "currentInstallation"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lcom/parse/FileObjectStore;

    const-class v4, Lcom/parse/ParseInstallation;

    .line 275
    invoke-static {}, Lcom/parse/ParseObjectCurrentCoder;->get()Lcom/parse/ParseObjectCurrentCoder;

    move-result-object v5

    invoke-direct {v2, v4, v1, v5}, Lcom/parse/FileObjectStore;-><init>(Ljava/lang/Class;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V

    .line 276
    .local v2, "fileStore":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<Lcom/parse/ParseInstallation;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/parse/OfflineObjectStore;

    const-class v4, Lcom/parse/ParseInstallation;

    const-string v5, "_currentInstallation"

    invoke-direct {v3, v4, v5, v2}, Lcom/parse/OfflineObjectStore;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V

    .line 279
    .local v3, "store":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<Lcom/parse/ParseInstallation;>;"
    :goto_0
    new-instance v0, Lcom/parse/CachedCurrentInstallationController;

    .line 280
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/parse/CachedCurrentInstallationController;-><init>(Lcom/parse/ParseObjectStore;Lcom/parse/InstallationId;)V

    .line 281
    .local v0, "controller":Lcom/parse/CachedCurrentInstallationController;
    iget-object v4, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    .end local v0    # "controller":Lcom/parse/CachedCurrentInstallationController;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStore":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<Lcom/parse/ParseInstallation;>;"
    .end local v3    # "store":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<Lcom/parse/ParseInstallation;>;"
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseCurrentInstallationController;

    return-object v4

    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileStore":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<Lcom/parse/ParseInstallation;>;"
    :cond_1
    move-object v3, v2

    .line 276
    goto :goto_0
.end method

.method public getCurrentUserController()Lcom/parse/ParseCurrentUserController;
    .locals 6

    .prologue
    .line 129
    iget-object v4, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 130
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "currentUser"

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lcom/parse/FileObjectStore;

    const-class v4, Lcom/parse/ParseUser;

    .line 132
    invoke-static {}, Lcom/parse/ParseUserCurrentCoder;->get()Lcom/parse/ParseUserCurrentCoder;

    move-result-object v5

    invoke-direct {v2, v4, v1, v5}, Lcom/parse/FileObjectStore;-><init>(Ljava/lang/Class;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V

    .line 133
    .local v2, "fileStore":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<Lcom/parse/ParseUser;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/parse/OfflineObjectStore;

    const-class v4, Lcom/parse/ParseUser;

    const-string v5, "_currentUser"

    invoke-direct {v3, v4, v5, v2}, Lcom/parse/OfflineObjectStore;-><init>(Ljava/lang/Class;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V

    .line 136
    .local v3, "store":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<Lcom/parse/ParseUser;>;"
    :goto_0
    new-instance v0, Lcom/parse/CachedCurrentUserController;

    invoke-direct {v0, v3}, Lcom/parse/CachedCurrentUserController;-><init>(Lcom/parse/ParseObjectStore;)V

    .line 137
    .local v0, "controller":Lcom/parse/ParseCurrentUserController;
    iget-object v4, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .end local v0    # "controller":Lcom/parse/ParseCurrentUserController;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStore":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<Lcom/parse/ParseUser;>;"
    .end local v3    # "store":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<Lcom/parse/ParseUser;>;"
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseCurrentUserController;

    return-object v4

    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileStore":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<Lcom/parse/ParseUser;>;"
    :cond_1
    move-object v3, v2

    .line 133
    goto :goto_0
.end method

.method public getDefaultACLController()Lcom/parse/ParseDefaultACLController;
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 313
    new-instance v0, Lcom/parse/ParseDefaultACLController;

    invoke-direct {v0}, Lcom/parse/ParseDefaultACLController;-><init>()V

    .line 314
    .local v0, "controller":Lcom/parse/ParseDefaultACLController;
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .end local v0    # "controller":Lcom/parse/ParseDefaultACLController;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseDefaultACLController;

    return-object v1
.end method

.method public getFileController()Lcom/parse/ParseFileController;
    .locals 5

    .prologue
    .line 176
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParseFileController;

    .line 179
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    const-string v4, "files"

    .line 180
    invoke-static {v4}, Lcom/parse/Parse;->getParseCacheDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/parse/ParseFileController;-><init>(Lcom/parse/ParseHttpClient;Ljava/io/File;)V

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFileController;

    return-object v0
.end method

.method public getLocalIdManager()Lcom/parse/LocalIdManager;
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 328
    new-instance v0, Lcom/parse/LocalIdManager;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/LocalIdManager;-><init>(Ljava/io/File;)V

    .line 329
    .local v0, "manager":Lcom/parse/LocalIdManager;
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 331
    .end local v0    # "manager":Lcom/parse/LocalIdManager;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/LocalIdManager;

    return-object v1
.end method

.method public getObjectController()Lcom/parse/ParseObjectController;
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/NetworkObjectController;

    .line 84
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/NetworkObjectController;-><init>(Lcom/parse/ParseHttpClient;)V

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObjectController;

    return-object v0
.end method

.method public getPushChannelsController()Lcom/parse/ParsePushChannelsController;
    .locals 3

    .prologue
    .line 257
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParsePushChannelsController;

    invoke-direct {v2}, Lcom/parse/ParsePushChannelsController;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePushChannelsController;

    return-object v0
.end method

.method public getPushController()Lcom/parse/ParsePushController;
    .locals 4

    .prologue
    .line 243
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/ParsePushController;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParsePushController;-><init>(Lcom/parse/ParseHttpClient;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePushController;

    return-object v0
.end method

.method public getQueryController()Lcom/parse/ParseQueryController;
    .locals 4

    .prologue
    .line 151
    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 152
    new-instance v1, Lcom/parse/NetworkQueryController;

    .line 153
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/parse/NetworkQueryController;-><init>(Lcom/parse/ParseHttpClient;)V

    .line 156
    .local v1, "networkController":Lcom/parse/NetworkQueryController;
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    new-instance v0, Lcom/parse/OfflineQueryController;

    .line 158
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/parse/OfflineQueryController;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQueryController;)V

    .line 163
    .local v0, "controller":Lcom/parse/ParseQueryController;
    :goto_0
    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .end local v0    # "controller":Lcom/parse/ParseQueryController;
    .end local v1    # "networkController":Lcom/parse/NetworkQueryController;
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseQueryController;

    return-object v2

    .line 161
    .restart local v1    # "networkController":Lcom/parse/NetworkQueryController;
    :cond_1
    new-instance v0, Lcom/parse/CacheQueryController;

    invoke-direct {v0, v1}, Lcom/parse/CacheQueryController;-><init>(Lcom/parse/NetworkQueryController;)V

    .restart local v0    # "controller":Lcom/parse/ParseQueryController;
    goto :goto_0
.end method

.method public getSessionController()Lcom/parse/ParseSessionController;
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/NetworkSessionController;

    .line 116
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/NetworkSessionController;-><init>(Lcom/parse/ParseHttpClient;)V

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseSessionController;

    return-object v0
.end method

.method public getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 3

    .prologue
    .line 342
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->subclassingController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 343
    new-instance v0, Lcom/parse/ParseObjectSubclassingController;

    invoke-direct {v0}, Lcom/parse/ParseObjectSubclassingController;-><init>()V

    .line 344
    .local v0, "controller":Lcom/parse/ParseObjectSubclassingController;
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->subclassingController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .end local v0    # "controller":Lcom/parse/ParseObjectSubclassingController;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCorePlugins;->subclassingController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObjectSubclassingController;

    return-object v1
.end method

.method public getUserController()Lcom/parse/ParseUserController;
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    new-instance v2, Lcom/parse/NetworkUserController;

    .line 100
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/NetworkUserController;-><init>(Lcom/parse/ParseHttpClient;)V

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUserController;

    return-object v0
.end method

.method public registerAnalyticsController(Lcom/parse/ParseAnalyticsController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseAnalyticsController;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another analytics controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 204
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    return-void
.end method

.method public registerAuthenticationManager(Lcom/parse/ParseAuthenticationManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/parse/ParseAuthenticationManager;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another authentication manager was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 307
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_0
    return-void
.end method

.method public registerCloudCodeController(Lcom/parse/ParseCloudCodeController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseCloudCodeController;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another cloud code controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 219
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    return-void
.end method

.method public registerConfigController(Lcom/parse/ParseConfigController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseConfigController;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another config controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 238
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    return-void
.end method

.method public registerCurrentInstallationController(Lcom/parse/ParseCurrentInstallationController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseCurrentInstallationController;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another currentInstallation controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 290
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_0
    return-void
.end method

.method public registerCurrentUserController(Lcom/parse/ParseCurrentUserController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseCurrentUserController;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another currentUser controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 146
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    return-void
.end method

.method public registerDefaultACLController(Lcom/parse/ParseDefaultACLController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseDefaultACLController;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another defaultACL controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 322
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    return-void
.end method

.method public registerFileController(Lcom/parse/ParseFileController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseFileController;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another file controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 188
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method public registerLocalIdManager(Lcom/parse/LocalIdManager;)V
    .locals 3
    .param p1, "manager"    # Lcom/parse/LocalIdManager;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another localId manager was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    .line 337
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    return-void
.end method

.method public registerObjectController(Lcom/parse/ParseObjectController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseObjectController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another object controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 92
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    return-void
.end method

.method public registerPushChannelsController(Lcom/parse/ParsePushChannelsController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParsePushChannelsController;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another pushChannels controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 267
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    return-void
.end method

.method public registerPushController(Lcom/parse/ParsePushController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParsePushController;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another push controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 252
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    return-void
.end method

.method public registerQueryController(Lcom/parse/ParseQueryController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseQueryController;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another query controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 171
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method

.method public registerSessionController(Lcom/parse/ParseSessionController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseSessionController;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another session controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 124
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    return-void
.end method

.method public registerSubclassingController(Lcom/parse/ParseObjectSubclassingController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseObjectSubclassingController;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->subclassingController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another subclassing controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->subclassingController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 352
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    return-void
.end method

.method public registerUserController(Lcom/parse/ParseUserController;)V
    .locals 3
    .param p1, "controller"    # Lcom/parse/ParseUserController;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Another user controller was already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    .line 108
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    return-void
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->objectController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->userController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->sessionController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->currentUserController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->currentInstallationController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->authenticationController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->queryController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->fileController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->analyticsController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->cloudCodeController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->configController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->pushChannelsController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->defaultACLController:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/parse/ParseCorePlugins;->localIdManager:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 78
    return-void
.end method
