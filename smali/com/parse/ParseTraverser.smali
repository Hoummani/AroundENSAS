.class abstract Lcom/parse/ParseTraverser;
.super Ljava/lang/Object;
.source "ParseTraverser.java"


# instance fields
.field private traverseParseObjects:Z

.field private yieldRoot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    .line 36
    iput-boolean v0, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    .line 37
    return-void
.end method

.method private traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    .locals 19
    .param p1, "root"    # Ljava/lang/Object;
    .param p2, "yieldRoot"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-eqz p2, :cond_2

    .line 54
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseTraverser;->visit(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 59
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v8, p1

    .line 62
    check-cast v8, Lorg/json/JSONObject;

    .line 63
    .local v8, "json":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 64
    .local v10, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 65
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 67
    .local v9, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 68
    :catch_0
    move-exception v6

    .line 70
    .local v6, "e":Lorg/json/JSONException;
    new-instance v16, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 74
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v5, p1

    .line 75
    check-cast v5, Lorg/json/JSONArray;

    .line 76
    .local v5, "array":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v16

    move/from16 v0, v16

    if-ge v7, v0, :cond_0

    .line 78
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 79
    :catch_1
    move-exception v6

    .line 81
    .restart local v6    # "e":Lorg/json/JSONException;
    new-instance v16, Ljava/lang/RuntimeException;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v16

    .line 85
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v6    # "e":Lorg/json/JSONException;
    .end local v7    # "i":I
    :cond_4
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v12, p1

    .line 86
    check-cast v12, Ljava/util/Map;

    .line 87
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 88
    .local v15, "value":Ljava/lang/Object;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_3

    .line 91
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v15    # "value":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/util/List;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v11, p1

    .line 92
    check-cast v11, Ljava/util/List;

    .line 93
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 94
    .restart local v15    # "value":Ljava/lang/Object;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_4

    .line 97
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v15    # "value":Ljava/lang/Object;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/parse/ParseObject;

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 98
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v13, p1

    .line 99
    check-cast v13, Lcom/parse/ParseObject;

    .line 100
    .local v13, "object":Lcom/parse/ParseObject;
    invoke-virtual {v13}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 101
    .restart local v9    # "key":Ljava/lang/String;
    invoke-virtual {v13, v9}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_5

    .line 105
    .end local v9    # "key":Ljava/lang/String;
    .end local v13    # "object":Lcom/parse/ParseObject;
    :cond_7
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/parse/ParseACL;

    move/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v4, p1

    .line 106
    check-cast v4, Lcom/parse/ParseACL;

    .line 107
    .local v4, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v4}, Lcom/parse/ParseACL;->getUnresolvedUser()Lcom/parse/ParseUser;

    move-result-object v14

    .line 108
    .local v14, "user":Lcom/parse/ParseUser;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 109
    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p3

    invoke-direct {v0, v14, v1, v2}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    .line 120
    return-object p0
.end method

.method public setYieldRoot(Z)Lcom/parse/ParseTraverser;
    .locals 0
    .param p1, "newValue"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    .line 129
    return-object p0
.end method

.method public traverse(Ljava/lang/Object;)V
    .locals 2
    .param p1, "root"    # Ljava/lang/Object;

    .prologue
    .line 136
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 137
    .local v0, "seen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    .line 138
    return-void
.end method

.method protected abstract visit(Ljava/lang/Object;)Z
.end method
