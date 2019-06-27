.class Lcom/parse/InstallationId;
.super Ljava/lang/Object;
.source "InstallationId.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InstallationId"


# instance fields
.field private final file:Ljava/io/File;

.field private installationId:Ljava/lang/String;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/InstallationId;->lock:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/parse/InstallationId;->file:Ljava/io/File;

    .line 33
    return-void
.end method

.method private setInternal(Ljava/lang/String;)V
    .locals 4
    .param p1, "newInstallationId"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/parse/InstallationId;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/parse/InstallationId;->file:Ljava/io/File;

    const-string v3, "UTF-8"

    invoke-static {v1, p1, v3}, Lcom/parse/ParseFileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    :try_start_1
    iput-object p1, p0, Lcom/parse/InstallationId;->installationId:Ljava/lang/String;

    .line 81
    monitor-exit v2

    .line 82
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "InstallationId"

    const-string v3, "Unexpected exception writing installation id to disk"

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    .line 85
    iget-object v1, p0, Lcom/parse/InstallationId;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/InstallationId;->installationId:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/parse/InstallationId;->file:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 88
    monitor-exit v1

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get()Ljava/lang/String;
    .locals 4

    .prologue
    .line 40
    iget-object v2, p0, Lcom/parse/InstallationId;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/parse/InstallationId;->installationId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 43
    :try_start_1
    iget-object v1, p0, Lcom/parse/InstallationId;->file:Ljava/io/File;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Lcom/parse/ParseFileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/InstallationId;->installationId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/parse/InstallationId;->installationId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/parse/InstallationId;->setInternal(Ljava/lang/String;)V

    .line 54
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    iget-object v1, p0, Lcom/parse/InstallationId;->installationId:Ljava/lang/String;

    return-object v1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v1, "InstallationId"

    const-string v3, "Couldn\'t find existing installationId file. Creating one instead."

    invoke-static {v1, v3}, Lcom/parse/PLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 46
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v1, "InstallationId"

    const-string v3, "Unexpected exception reading installation id from disk"

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "newInstallationId"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lcom/parse/InstallationId;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-static {p1}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    monitor-exit v1

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lcom/parse/InstallationId;->setInternal(Ljava/lang/String;)V

    .line 69
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
