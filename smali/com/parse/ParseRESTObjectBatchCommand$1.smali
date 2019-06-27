.class final Lcom/parse/ParseRESTObjectBatchCommand$1;
.super Ljava/lang/Object;
.source "ParseRESTObjectBatchCommand.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRESTObjectBatchCommand;->executeBatch(Lcom/parse/ParseHttpClient;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$batchSize:I

.field final synthetic val$tcss:Ljava/util/List;


# direct methods
.method constructor <init>(ILjava/util/List;)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    iput-object p2, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/parse/ParseRESTObjectBatchCommand$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 91
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-ge v1, v8, :cond_2

    .line 92
    iget-object v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbolts/TaskCompletionSource;

    .line 93
    .local v7, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 94
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 91
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v7}, Lbolts/TaskCompletionSource;->setCancelled()V

    goto :goto_1

    .line 101
    .end local v1    # "i":I
    .end local v7    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 102
    .local v2, "json":Lorg/json/JSONObject;
    const-string v8, "results"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 104
    .local v5, "results":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 105
    .local v4, "resultLength":I
    iget v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-eq v4, v8, :cond_3

    .line 107
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-ge v1, v8, :cond_3

    .line 108
    iget-object v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbolts/TaskCompletionSource;

    .line 109
    .restart local v7    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Batch command result count expected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but was: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 114
    .end local v1    # "i":I
    .end local v7    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    iget v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$batchSize:I

    if-ge v1, v8, :cond_6

    .line 115
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 116
    .local v3, "result":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/parse/ParseRESTObjectBatchCommand$1;->val$tcss:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbolts/TaskCompletionSource;

    .line 118
    .restart local v7    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    const-string v8, "success"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 119
    const-string v8, "success"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 120
    .local v6, "success":Lorg/json/JSONObject;
    invoke-virtual {v7, v6}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 114
    .end local v6    # "success":Lorg/json/JSONObject;
    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 121
    :cond_5
    const-string v8, "error"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    const-string v8, "error"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    .local v0, "error":Lorg/json/JSONObject;
    new-instance v8, Lcom/parse/ParseException;

    const-string v9, "code"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "error"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_4

    .line 126
    .end local v0    # "error":Lorg/json/JSONObject;
    .end local v3    # "result":Lorg/json/JSONObject;
    .end local v7    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Lorg/json/JSONObject;>;"
    :cond_6
    const/4 v8, 0x0

    return-object v8
.end method
