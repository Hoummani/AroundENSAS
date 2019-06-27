.class Lcom/parse/ParseCurrentConfigController;
.super Ljava/lang/Object;
.source "ParseCurrentConfigController.java"


# instance fields
.field currentConfig:Lcom/parse/ParseConfig;

.field private currentConfigFile:Ljava/io/File;

.field private final currentConfigMutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "currentConfigFile"    # Ljava/io/File;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigFile:Ljava/io/File;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseCurrentConfigController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseCurrentConfigController;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method clearCurrentConfigForTesting()V
    .locals 2

    .prologue
    .line 75
    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    .line 77
    monitor-exit v1

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentConfigAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/parse/ParseCurrentConfigController$2;

    invoke-direct {v0, p0}, Lcom/parse/ParseCurrentConfigController$2;-><init>(Lcom/parse/ParseCurrentConfigController;)V

    .line 55
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 44
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method getFromDisk()Lcom/parse/ParseConfig;
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigFile:Ljava/io/File;

    invoke-static {v2}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 71
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseConfig;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseConfig;

    move-result-object v2

    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method saveToDisk(Lcom/parse/ParseConfig;)V
    .locals 5
    .param p1, "config"    # Lcom/parse/ParseConfig;

    .prologue
    .line 87
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/parse/NoObjectsEncoder;->get()Lcom/parse/NoObjectsEncoder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parse/ParseConfig;->getParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parse/NoObjectsEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 90
    .local v1, "jsonParams":Lorg/json/JSONObject;
    const-string v3, "params"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    iget-object v3, p0, Lcom/parse/ParseCurrentConfigController;->currentConfigFile:Ljava/io/File;

    invoke-static {v3, v2}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :goto_0
    return-void

    .line 91
    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "could not serialize config to JSON"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonParams":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public setCurrentConfigAsync(Lcom/parse/ParseConfig;)Lbolts/Task;
    .locals 2
    .param p1, "config"    # Lcom/parse/ParseConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseConfig;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/parse/ParseCurrentConfigController$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseCurrentConfigController$1;-><init>(Lcom/parse/ParseCurrentConfigController;Lcom/parse/ParseConfig;)V

    .line 40
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
