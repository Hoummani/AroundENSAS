.class Lcom/parse/ParsePlugins;
.super Ljava/lang/Object;
.source "ParsePlugins.java"


# static fields
.field private static final INSTALLATION_ID_LOCATION:Ljava/lang/String; = "installationId"

.field private static final LOCK:Ljava/lang/Object;

.field private static instance:Lcom/parse/ParsePlugins;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field cacheDir:Ljava/io/File;

.field private final configuration:Lcom/parse/Parse$Configuration;

.field fileClient:Lcom/parse/ParseHttpClient;

.field filesDir:Ljava/io/File;

.field private installationId:Lcom/parse/InstallationId;

.field final lock:Ljava/lang/Object;

.field parseDir:Ljava/io/File;

.field restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/parse/Parse$Configuration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/parse/Parse$Configuration;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    .line 71
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    .line 74
    :cond_0
    iput-object p2, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParsePlugins;)Lcom/parse/Parse$Configuration;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    return-object v0
.end method

.method private static createFileDir(Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :cond_0
    return-object p0
.end method

.method static get()Lcom/parse/ParsePlugins;
    .locals 2

    .prologue
    .line 45
    sget-object v1, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    monitor-exit v1

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static initialize(Landroid/content/Context;Lcom/parse/Parse$Configuration;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Lcom/parse/Parse$Configuration;

    .prologue
    .line 32
    new-instance v0, Lcom/parse/ParsePlugins;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParsePlugins;-><init>(Landroid/content/Context;Lcom/parse/Parse$Configuration;)V

    invoke-static {v0}, Lcom/parse/ParsePlugins;->set(Lcom/parse/ParsePlugins;)V

    .line 33
    return-void
.end method

.method static reset()V
    .locals 2

    .prologue
    .line 51
    sget-object v1, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static set(Lcom/parse/ParsePlugins;)V
    .locals 3
    .param p0, "plugins"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 36
    sget-object v1, Lcom/parse/ParsePlugins;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "ParsePlugins is already initialized"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 40
    :cond_0
    :try_start_1
    sput-object p0, Lcom/parse/ParsePlugins;->instance:Lcom/parse/ParsePlugins;

    .line 41
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    return-void
.end method


# virtual methods
.method applicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method applicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    iget-object v0, v0, Lcom/parse/Parse$Configuration;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method clientKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    iget-object v0, v0, Lcom/parse/Parse$Configuration;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method configuration()Lcom/parse/Parse$Configuration;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    return-object v0
.end method

.method fileClient()Lcom/parse/ParseHttpClient;
    .locals 2

    .prologue
    .line 94
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->fileClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    iget-object v0, v0, Lcom/parse/Parse$Configuration;->clientBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-static {v0}, Lcom/parse/ParseHttpClient;->createClient(Lokhttp3/OkHttpClient$Builder;)Lcom/parse/ParseHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins;->fileClient:Lcom/parse/ParseHttpClient;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->fileClient:Lcom/parse/ParseHttpClient;

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCacheDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->cacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins;->cacheDir:Ljava/io/File;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->cacheDir:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getFilesDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 189
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->filesDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins;->filesDir:Ljava/io/File;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->filesDir:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getParseDir()Ljava/io/File;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->parseDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    const-string v2, "Parse"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePlugins;->parseDir:Ljava/io/File;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->parseDir:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParsePlugins;->createFileDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method installationId()Lcom/parse/InstallationId;
    .locals 5

    .prologue
    .line 160
    iget-object v1, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->installationId:Lcom/parse/InstallationId;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/parse/InstallationId;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "installationId"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/parse/InstallationId;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/parse/ParsePlugins;->installationId:Lcom/parse/InstallationId;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/parse/ParsePlugins;->installationId:Lcom/parse/InstallationId;

    monitor-exit v1

    return-object v0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method restClient()Lcom/parse/ParseHttpClient;
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lcom/parse/ParsePlugins;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/parse/ParsePlugins;->configuration:Lcom/parse/Parse$Configuration;

    iget-object v0, v1, Lcom/parse/Parse$Configuration;->clientBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 106
    .local v0, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .end local v0    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 110
    .restart local v0    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v4, Lcom/parse/ParsePlugins$1;

    invoke-direct {v4, p0}, Lcom/parse/ParsePlugins$1;-><init>(Lcom/parse/ParsePlugins;)V

    invoke-interface {v1, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 137
    invoke-static {v0}, Lcom/parse/ParseHttpClient;->createClient(Lokhttp3/OkHttpClient$Builder;)Lcom/parse/ParseHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    .line 139
    .end local v0    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    :cond_1
    iget-object v1, p0, Lcom/parse/ParsePlugins;->restClient:Lcom/parse/ParseHttpClient;

    monitor-exit v2

    return-object v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method userAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 144
    const-string v1, "unknown"

    .line 146
    .local v1, "packageVersion":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParsePlugins;->applicationContext:Landroid/content/Context;

    .line 148
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 149
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 151
    .local v2, "versionCode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 155
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "versionCode":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Android SDK 1.16.7 ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") API Level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 152
    :catch_0
    move-exception v3

    goto :goto_0
.end method
