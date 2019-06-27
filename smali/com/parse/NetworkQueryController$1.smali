.class Lcom/parse/NetworkQueryController$1;
.super Ljava/lang/Object;
.source "NetworkQueryController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkQueryController;->findAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkQueryController;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;

.field final synthetic val$querySent:J

.field final synthetic val$queryStart:J

.field final synthetic val$state:Lcom/parse/ParseQuery$State;


# direct methods
.method constructor <init>(Lcom/parse/NetworkQueryController;Lcom/parse/ParseQuery$State;Lcom/parse/ParseRESTCommand;JJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/NetworkQueryController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/parse/NetworkQueryController$1;->this$0:Lcom/parse/NetworkQueryController;

    iput-object p2, p0, Lcom/parse/NetworkQueryController$1;->val$state:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/NetworkQueryController$1;->val$command:Lcom/parse/ParseRESTCommand;

    iput-wide p4, p0, Lcom/parse/NetworkQueryController$1;->val$querySent:J

    iput-wide p6, p0, Lcom/parse/NetworkQueryController$1;->val$queryStart:J

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
    .line 59
    invoke-virtual {p0, p1}, Lcom/parse/NetworkQueryController$1;->then(Lbolts/Task;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual/range {p1 .. p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 64
    .local v2, "json":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parse/NetworkQueryController$1;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {v10}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v3

    .line 65
    .local v3, "policy":Lcom/parse/ParseQuery$CachePolicy;
    if-eqz v3, :cond_0

    sget-object v10, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    if-eq v3, v10, :cond_0

    .line 66
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/parse/NetworkQueryController$1;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v10}, Lcom/parse/ParseRESTCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/parse/ParseKeyValueCache;->saveToKeyValueCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 71
    .local v6, "queryReceived":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/parse/NetworkQueryController$1;->this$0:Lcom/parse/NetworkQueryController;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/parse/NetworkQueryController$1;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual/range {p1 .. p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    invoke-virtual {v11, v12, v10}, Lcom/parse/NetworkQueryController;->convertFindResponse(Lcom/parse/ParseQuery$State;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v8

    .line 73
    .local v8, "response":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 75
    .local v4, "objectsParsed":J
    const-string v10, "trace"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 76
    const-string v10, "trace"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 77
    .local v9, "serverTrace":Ljava/lang/Object;
    const-string v10, "ParseQuery"

    const-string v11, "Query pre-processing took %f seconds\n%s\nClient side parsing took %f seconds\n"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/parse/NetworkQueryController$1;->val$querySent:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/parse/NetworkQueryController$1;->val$queryStart:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-float v14, v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v14, v15

    .line 81
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v9, v12, v13

    const/4 v13, 0x2

    sub-long v14, v4, v6

    long-to-float v14, v14

    const v15, 0x49742400    # 1000000.0f

    div-float/2addr v14, v15

    .line 83
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v12, v13

    .line 78
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 77
    invoke-static {v10, v11}, Lcom/parse/PLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v9    # "serverTrace":Ljava/lang/Object;
    :cond_1
    return-object v8
.end method
