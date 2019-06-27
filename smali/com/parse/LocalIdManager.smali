.class Lcom/parse/LocalIdManager;
.super Ljava/lang/Object;
.source "LocalIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/LocalIdManager$MapEntry;
    }
.end annotation


# instance fields
.field private final diskPath:Ljava/io/File;

.field private final random:Ljava/util/Random;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "root"    # Ljava/io/File;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "LocalId"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    .line 43
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/parse/LocalIdManager;->random:Ljava/util/Random;

    .line 44
    return-void
.end method

.method private declared-synchronized getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;
    .locals 6
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 67
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to get invalid local id: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 71
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v3, v4, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    .local v2, "json":Lorg/json/JSONObject;
    new-instance v1, Lcom/parse/LocalIdManager$MapEntry;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/parse/LocalIdManager$MapEntry;-><init>(Lcom/parse/LocalIdManager$1;)V

    .line 74
    .local v1, "entry":Lcom/parse/LocalIdManager$MapEntry;
    const-string v3, "retainCount"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    .line 75
    const-string v3, "objectId"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .end local v1    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 77
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v1, Lcom/parse/LocalIdManager$MapEntry;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/parse/LocalIdManager$MapEntry;-><init>(Lcom/parse/LocalIdManager$1;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    move-object v0, v3

    goto :goto_1
.end method

.method private isLocalId(Ljava/lang/String;)Z
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v3, "local_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 55
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x66

    if-gt v0, v3, :cond_0

    .line 53
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    .locals 6
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/parse/LocalIdManager$MapEntry;

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to get invalid local id: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 90
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_2
    const-string v3, "retainCount"

    iget v4, p2, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    iget-object v3, p2, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 94
    const-string v3, "objectId"

    iget-object v4, p2, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 106
    :cond_2
    :try_start_4
    invoke-static {v0, v2}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "je":Lorg/json/JSONException;
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error creating local id map entry."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 107
    .end local v1    # "je":Lorg/json/JSONException;
    .restart local v0    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private declared-synchronized removeMapEntry(Ljava/lang/String;)V
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to get invalid local id: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 119
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized clear()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 191
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_1

    .line 203
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 194
    :cond_1
    :try_start_1
    array-length v4, v2

    if-eqz v4, :cond_0

    .line 197
    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v2, v3

    .line 198
    .local v1, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v0, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 199
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2

    .line 200
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to delete file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in localId cache."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "files":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 197
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "files":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 203
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "fileName":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method declared-synchronized createLocalId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/LocalIdManager;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    .line 128
    .local v2, "localIdNumber":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "localId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated an invalid local id: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". This should never happen. Open a bug at https://github.com/parse-community/parse-server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "localId":Ljava/lang/String;
    .end local v2    # "localIdNumber":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 135
    .restart local v0    # "localId":Ljava/lang/String;
    .restart local v2    # "localIdNumber":J
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getObjectId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 168
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget-object v1, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 167
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized releaseLocalIdOnDisk(Ljava/lang/String;)V
    .locals 2
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 153
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    .line 155
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    if-lez v1, :cond_0

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/parse/LocalIdManager;->putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :goto_0
    monitor-exit p0

    return-void

    .line 158
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->removeMapEntry(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized retainLocalIdOnDisk(Ljava/lang/String;)V
    .locals 2
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 143
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/parse/LocalIdManager;->putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setObjectId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 176
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    if-lez v1, :cond_1

    .line 177
    iget-object v1, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to set an objectId for a localId that already has one."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 181
    .restart local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :cond_0
    :try_start_1
    iput-object p2, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    .line 182
    invoke-direct {p0, p1, v0}, Lcom/parse/LocalIdManager;->putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :cond_1
    monitor-exit p0

    return-void
.end method
