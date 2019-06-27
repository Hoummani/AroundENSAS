.class Lcom/parse/ParseRESTObjectBatchCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTObjectBatchCommand.java"


# static fields
.field public static final COMMAND_OBJECT_BATCH_MAX_SIZE:I = 0x32

.field private static final KEY_RESULTS:Ljava/lang/String; = "results"


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/http/ParseHttpRequest$Method;
    .param p3, "parameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static executeBatch(Lcom/parse/ParseHttpClient;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p0, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseRESTObjectCommand;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "commands":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    .line 37
    .local v4, "batchSize":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .local v14, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Lorg/json/JSONObject;>;>;"
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_1

    .line 41
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/parse/ParseRESTObjectCommand;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTObjectCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_0
    :goto_0
    return-object v14

    .line 45
    :cond_1
    const/16 v17, 0x32

    move/from16 v0, v17

    if-le v4, v0, :cond_2

    .line 47
    const/16 v17, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/parse/Lists;->partition(Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    .line 49
    .local v5, "batches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "size":I
    :goto_1
    if-ge v9, v13, :cond_0

    .line 50
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 51
    .local v3, "batch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v3, v1}, Lcom/parse/ParseRESTObjectBatchCommand;->executeBatch(Lcom/parse/ParseHttpClient;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 56
    .end local v3    # "batch":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;"
    .end local v5    # "batches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/parse/ParseRESTObjectCommand;>;>;"
    .end local v9    # "i":I
    .end local v13    # "size":I
    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    .local v16, "tcss":Ljava/util/List;, "Ljava/util/List<Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;>;"
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v4, :cond_3

    .line 58
    new-instance v15, Lbolts/TaskCompletionSource;

    invoke-direct {v15}, Lbolts/TaskCompletionSource;-><init>()V

    .line 59
    .local v15, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {v15}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 63
    .end local v15    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 64
    .local v10, "parameters":Lorg/json/JSONObject;
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 66
    .local v12, "requests":Lorg/json/JSONArray;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseRESTObjectCommand;

    .line 67
    .local v7, "command":Lcom/parse/ParseRESTObjectCommand;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v11, "requestParameters":Lorg/json/JSONObject;
    const-string v18, "method"

    iget-object v0, v7, Lcom/parse/ParseRESTObjectCommand;->method:Lcom/parse/http/ParseHttpRequest$Method;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v18, "path"

    new-instance v19, Ljava/net/URL;

    sget-object v20, Lcom/parse/ParseRESTObjectBatchCommand;->server:Ljava/net/URL;

    iget-object v0, v7, Lcom/parse/ParseRESTObjectCommand;->httpPath:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v6, v7, Lcom/parse/ParseRESTObjectCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 71
    .local v6, "body":Lorg/json/JSONObject;
    if-eqz v6, :cond_4

    .line 72
    const-string v18, "body"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_4
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    .line 77
    .end local v6    # "body":Lorg/json/JSONObject;
    .end local v7    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v11    # "requestParameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 78
    .local v8, "e":Ljava/lang/Exception;
    :goto_4
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 76
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    const-string v17, "requests"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    new-instance v7, Lcom/parse/ParseRESTObjectBatchCommand;

    const-string v17, "batch"

    sget-object v18, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-direct {v7, v0, v1, v10, v2}, Lcom/parse/ParseRESTObjectBatchCommand;-><init>(Ljava/lang/String;Lcom/parse/http/ParseHttpRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 84
    .local v7, "command":Lcom/parse/ParseRESTCommand;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v17

    new-instance v18, Lcom/parse/ParseRESTObjectBatchCommand$1;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-direct {v0, v4, v1}, Lcom/parse/ParseRESTObjectBatchCommand$1;-><init>(ILjava/util/List;)V

    invoke-virtual/range {v17 .. v18}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto/16 :goto_0

    .line 77
    .end local v7    # "command":Lcom/parse/ParseRESTCommand;
    :catch_1
    move-exception v8

    goto :goto_4
.end method


# virtual methods
.method protected onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 7
    .param p1, "response"    # Lcom/parse/http/ParseHttpResponse;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const/4 v4, 0x0

    .line 149
    .local v4, "responseStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 151
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 152
    new-instance v1, Ljava/lang/String;

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v0    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 161
    :try_start_1
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 162
    .local v5, "results":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v3, "json":Lorg/json/JSONObject;
    const-string v6, "results"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 168
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "results":Lorg/json/JSONArray;
    .restart local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 153
    :catch_0
    move-exception v2

    .line 154
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 156
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v6

    .line 164
    .end local v0    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 165
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "bad json response"

    invoke-virtual {p0, v6, v2}, Lcom/parse/ParseRESTObjectBatchCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0
.end method
