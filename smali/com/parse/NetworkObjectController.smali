.class Lcom/parse/NetworkObjectController;
.super Ljava/lang/Object;
.source "NetworkObjectController.java"

# interfaces
.implements Lcom/parse/ParseObjectController;


# instance fields
.field private client:Lcom/parse/ParseHttpClient;

.field private coder:Lcom/parse/ParseObjectCoder;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 1
    .param p1, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/parse/NetworkObjectController;->client:Lcom/parse/ParseHttpClient;

    .line 26
    invoke-static {}, Lcom/parse/ParseObjectCoder;->get()Lcom/parse/ParseObjectCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/NetworkObjectController;->coder:Lcom/parse/ParseObjectCoder;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/parse/NetworkObjectController;)Lcom/parse/ParseObjectCoder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/NetworkObjectController;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parse/NetworkObjectController;->coder:Lcom/parse/ParseObjectCoder;

    return-object v0
.end method


# virtual methods
.method public deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject$State;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 134
    .local v0, "batchSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    .local v3, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 136
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject$State;

    .line 137
    .local v5, "state":Lcom/parse/ParseObject$State;
    invoke-static {v5, p2}, Lcom/parse/ParseRESTObjectCommand;->deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v2

    .line 139
    .local v2, "command":Lcom/parse/ParseRESTObjectCommand;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    .end local v2    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v5    # "state":Lcom/parse/ParseObject$State;
    :cond_0
    iget-object v7, p0, Lcom/parse/NetworkObjectController;->client:Lcom/parse/ParseHttpClient;

    .line 143
    invoke-static {v7, v3, p2}, Lcom/parse/ParseRESTObjectBatchCommand;->executeBatch(Lcom/parse/ParseHttpClient;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "batchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Lorg/json/JSONObject;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    .local v6, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    .line 147
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbolts/Task;

    invoke-virtual {v7}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 149
    :cond_1
    return-object v6
.end method

.method public deleteAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1, p2}, Lcom/parse/ParseRESTObjectCommand;->deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 126
    .local v0, "command":Lcom/parse/ParseRESTObjectCommand;
    iget-object v1, p0, Lcom/parse/NetworkObjectController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTObjectCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public fetchAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lbolts/Task;
    .locals 3
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseDecoder;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v2

    .line 32
    invoke-static {v1, v2, p2}, Lcom/parse/ParseRESTObjectCommand;->getObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 37
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/NetworkObjectController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkObjectController$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/parse/NetworkObjectController$1;-><init>(Lcom/parse/NetworkObjectController;Lcom/parse/ParseObject$State;Lcom/parse/ParseDecoder;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public saveAllAsync(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseDecoder;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject$State;>;"
    .local p2, "operationsList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    .local p4, "decoders":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseDecoder;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    .local v1, "batchSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v4, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v6

    .line 89
    .local v6, "encoder":Lcom/parse/ParseEncoder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v1, :cond_0

    .line 90
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject$State;

    .line 91
    .local v10, "state":Lcom/parse/ParseObject$State;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parse/ParseOperationSet;

    .line 92
    .local v9, "operations":Lcom/parse/ParseOperationSet;
    iget-object v12, p0, Lcom/parse/NetworkObjectController;->coder:Lcom/parse/ParseObjectCoder;

    invoke-virtual {v12, v10, v9, v6}, Lcom/parse/ParseObjectCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v8

    .line 94
    .local v8, "objectJSON":Lorg/json/JSONObject;
    move-object/from16 v0, p3

    invoke-static {v10, v8, v0}, Lcom/parse/ParseRESTObjectCommand;->saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v3

    .line 96
    .local v3, "command":Lcom/parse/ParseRESTObjectCommand;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 99
    .end local v3    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v8    # "objectJSON":Lorg/json/JSONObject;
    .end local v9    # "operations":Lcom/parse/ParseOperationSet;
    .end local v10    # "state":Lcom/parse/ParseObject$State;
    :cond_0
    iget-object v12, p0, Lcom/parse/NetworkObjectController;->client:Lcom/parse/ParseHttpClient;

    .line 100
    move-object/from16 v0, p3

    invoke-static {v12, v4, v0}, Lcom/parse/ParseRESTObjectBatchCommand;->executeBatch(Lcom/parse/ParseHttpClient;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 102
    .local v2, "batchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Lorg/json/JSONObject;>;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Lcom/parse/ParseObject$State;>;>;"
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_1

    .line 104
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseObject$State;

    .line 105
    .restart local v10    # "state":Lcom/parse/ParseObject$State;
    move-object/from16 v0, p4

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseDecoder;

    .line 106
    .local v5, "decoder":Lcom/parse/ParseDecoder;
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lbolts/Task;

    new-instance v13, Lcom/parse/NetworkObjectController$3;

    invoke-direct {v13, p0, v10, v5}, Lcom/parse/NetworkObjectController$3;-><init>(Lcom/parse/NetworkObjectController;Lcom/parse/ParseObject$State;Lcom/parse/ParseDecoder;)V

    invoke-virtual {v12, v13}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 118
    .end local v5    # "decoder":Lcom/parse/ParseDecoder;
    .end local v10    # "state":Lcom/parse/ParseObject$State;
    :cond_1
    return-object v11
.end method

.method public saveAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lbolts/Task;
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseDecoder;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v2, p0, Lcom/parse/NetworkObjectController;->coder:Lcom/parse/ParseObjectCoder;

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/parse/ParseObjectCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "objectJSON":Lorg/json/JSONObject;
    invoke-static {p1, v1, p3}, Lcom/parse/ParseRESTObjectCommand;->saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 66
    .local v0, "command":Lcom/parse/ParseRESTObjectCommand;
    iget-object v2, p0, Lcom/parse/NetworkObjectController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTObjectCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/NetworkObjectController$2;

    invoke-direct {v3, p0, p1, p4}, Lcom/parse/NetworkObjectController$2;-><init>(Lcom/parse/NetworkObjectController;Lcom/parse/ParseObject$State;Lcom/parse/ParseDecoder;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method
