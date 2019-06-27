.class Lcom/parse/PushRouter;
.super Ljava/lang/Object;
.source "PushRouter.java"


# static fields
.field private static final LEGACY_STATE_LOCATION:Ljava/lang/String; = "pushState"

.field private static final MAX_HISTORY_LENGTH:I = 0xa

.field private static final STATE_LOCATION:Ljava/lang/String; = "push"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushRouter"

.field private static instance:Lcom/parse/PushRouter;


# instance fields
.field private final diskState:Ljava/io/File;

.field private final history:Lcom/parse/PushHistory;


# direct methods
.method private constructor <init>(Ljava/io/File;Lcom/parse/PushHistory;)V
    .locals 0
    .param p1, "diskState"    # Ljava/io/File;
    .param p2, "history"    # Lcom/parse/PushHistory;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/parse/PushRouter;->diskState:Ljava/io/File;

    .line 101
    iput-object p2, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    .line 102
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/parse/PushRouter;
    .locals 5

    .prologue
    .line 40
    const-class v3, Lcom/parse/PushRouter;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    if-nez v2, :cond_0

    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "push"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    .local v0, "diskState":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "pushState"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    .local v1, "oldDiskState":Ljava/io/File;
    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/parse/PushRouter;->pushRouterFromState(Ljava/io/File;Ljava/io/File;I)Lcom/parse/PushRouter;

    move-result-object v2

    sput-object v2, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;

    .line 46
    :cond_0
    sget-object v2, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 40
    .end local v1    # "oldDiskState":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static pushRouterFromState(Ljava/io/File;Ljava/io/File;I)Lcom/parse/PushRouter;
    .locals 9
    .param p0, "diskState"    # Ljava/io/File;
    .param p1, "oldDiskState"    # Ljava/io/File;
    .param p2, "maxHistoryLength"    # I

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-static {p0}, Lcom/parse/PushRouter;->readJSONFileQuietly(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v6

    .line 57
    .local v6, "state":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    const-string v8, "history"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    .local v2, "historyJSON":Lorg/json/JSONObject;
    :goto_0
    new-instance v1, Lcom/parse/PushHistory;

    invoke-direct {v1, p2, v2}, Lcom/parse/PushHistory;-><init>(ILorg/json/JSONObject;)V

    .line 62
    .local v1, "history":Lcom/parse/PushHistory;
    const/4 v0, 0x0

    .line 63
    .local v0, "didMigrate":Z
    invoke-virtual {v1}, Lcom/parse/PushHistory;->getLastReceivedTimestamp()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 64
    invoke-static {p1}, Lcom/parse/PushRouter;->readJSONFileQuietly(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v4

    .line 65
    .local v4, "oldState":Lorg/json/JSONObject;
    if-eqz v4, :cond_1

    .line 66
    const-string v8, "lastTime"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "lastTime":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v1, v3}, Lcom/parse/PushHistory;->setLastReceivedTimestamp(Ljava/lang/String;)V

    .line 70
    :cond_0
    const/4 v0, 0x1

    .line 74
    .end local v3    # "lastTime":Ljava/lang/String;
    .end local v4    # "oldState":Lorg/json/JSONObject;
    :cond_1
    new-instance v5, Lcom/parse/PushRouter;

    invoke-direct {v5, p0, v1}, Lcom/parse/PushRouter;-><init>(Ljava/io/File;Lcom/parse/PushHistory;)V

    .line 76
    .local v5, "router":Lcom/parse/PushRouter;
    if-eqz v0, :cond_2

    .line 77
    invoke-direct {v5}, Lcom/parse/PushRouter;->saveStateToDisk()V

    .line 78
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 81
    :cond_2
    return-object v5

    .end local v0    # "didMigrate":Z
    .end local v1    # "history":Lcom/parse/PushHistory;
    .end local v2    # "historyJSON":Lorg/json/JSONObject;
    .end local v5    # "router":Lcom/parse/PushRouter;
    :cond_3
    move-object v2, v7

    .line 57
    goto :goto_0
.end method

.method private static readJSONFileQuietly(Ljava/io/File;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "json":Lorg/json/JSONObject;
    if-eqz p0, :cond_0

    .line 88
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static declared-synchronized resetInstance()V
    .locals 4

    .prologue
    .line 50
    const-class v1, Lcom/parse/PushRouter;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "push"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushRouter;->instance:Lcom/parse/PushRouter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v1

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized saveStateToDisk()V
    .locals 4

    .prologue
    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/PushRouter;->diskState:Ljava/io/File;

    invoke-virtual {p0}, Lcom/parse/PushRouter;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_1
    const-string v1, "com.parse.ParsePushRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error when serializing push state to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/PushRouter;->diskState:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 127
    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized getLastReceivedTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v0}, Lcom/parse/PushHistory;->getLastReceivedTimestamp()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handlePush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 5
    .param p1, "pushId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;
    .param p4, "data"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 138
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 142
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v4, p1, p2}, Lcom/parse/PushHistory;->tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/parse/PushRouter;->saveStateToDisk()V

    .line 149
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "com.parse.Channel"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-nez p4, :cond_2

    .line 152
    const-string v3, "com.parse.Data"

    const-string v4, "{}"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.parse.push.intent.RECEIVE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 161
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 162
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const/4 v3, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v3, "com.parse.Data"

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    .end local v1    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 120
    .local v0, "json":Lorg/json/JSONObject;
    const-string v1, "history"

    iget-object v2, p0, Lcom/parse/PushRouter;->history:Lcom/parse/PushHistory;

    invoke-virtual {v2}, Lcom/parse/PushHistory;->toJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-object v0

    .line 119
    .end local v0    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
