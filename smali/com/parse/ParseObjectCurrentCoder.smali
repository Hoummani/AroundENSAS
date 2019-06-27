.class Lcom/parse/ParseObjectCurrentCoder;
.super Lcom/parse/ParseObjectCoder;
.source "ParseObjectCurrentCoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseObjectCurrentCoder;

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "createdAt"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final KEY_OLD_CREATED_AT:Ljava/lang/String; = "created_at"

.field private static final KEY_OLD_OBJECT_ID:Ljava/lang/String; = "id"

.field private static final KEY_OLD_POINTERS:Ljava/lang/String; = "pointers"

.field private static final KEY_OLD_UPDATED_AT:Ljava/lang/String; = "updated_at"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updatedAt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/parse/ParseObjectCurrentCoder;

    invoke-direct {v0}, Lcom/parse/ParseObjectCurrentCoder;-><init>()V

    sput-object v0, Lcom/parse/ParseObjectCurrentCoder;->INSTANCE:Lcom/parse/ParseObjectCurrentCoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/parse/ParseObjectCoder;-><init>()V

    .line 50
    return-void
.end method

.method public static get()Lcom/parse/ParseObjectCurrentCoder;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/parse/ParseObjectCurrentCoder;->INSTANCE:Lcom/parse/ParseObjectCurrentCoder;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;
    .locals 14
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;>(TT;",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "builder":Lcom/parse/ParseObject$State$Init;, "TT;"
    :try_start_0
    const-string v12, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 124
    const-string v12, "id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "newObjectId":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 127
    .end local v7    # "newObjectId":Ljava/lang/String;
    :cond_0
    const-string v12, "created_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 128
    const-string v12, "created_at"

    .line 129
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, "createdAtString":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 131
    invoke-static {}, Lcom/parse/ParseImpreciseDateFormat;->getInstance()Lcom/parse/ParseImpreciseDateFormat;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/parse/ParseImpreciseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    .line 134
    .end local v1    # "createdAtString":Ljava/lang/String;
    :cond_1
    const-string v12, "updated_at"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 135
    const-string v12, "updated_at"

    .line 136
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 137
    .local v10, "updatedAtString":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 138
    invoke-static {}, Lcom/parse/ParseImpreciseDateFormat;->getInstance()Lcom/parse/ParseImpreciseDateFormat;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/parse/ParseImpreciseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    .line 141
    .end local v10    # "updatedAtString":Ljava/lang/String;
    :cond_2
    const-string v12, "pointers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 142
    const-string v12, "pointers"

    .line 143
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 144
    .local v8, "newPointers":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 145
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 146
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 147
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 148
    .local v9, "pointerArray":Lorg/json/JSONArray;
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    .line 149
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v13

    .line 148
    invoke-static {v12, v13}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v12

    invoke-virtual {p1, v5, v12}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v8    # "newPointers":Lorg/json/JSONObject;
    .end local v9    # "pointerArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v4

    .line 181
    .local v4, "e":Lorg/json/JSONException;
    new-instance v12, Ljava/lang/RuntimeException;

    invoke-direct {v12, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 153
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v12, "data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 154
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_7

    .line 155
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 156
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 157
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 159
    .restart local v5    # "key":Ljava/lang/String;
    const-string v12, "objectId"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 160
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 161
    .restart local v7    # "newObjectId":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 164
    .end local v7    # "newObjectId":Ljava/lang/String;
    :cond_4
    const-string v12, "createdAt"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 165
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v12

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 168
    :cond_5
    const-string v12, "updatedAt"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 169
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v12

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    invoke-virtual {p1, v12}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 173
    :cond_6
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 174
    .local v11, "value":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 175
    .local v3, "decodedObject":Ljava/lang/Object;
    invoke-virtual {p1, v5, v3}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 179
    .end local v3    # "decodedObject":Ljava/lang/Object;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v11    # "value":Ljava/lang/Object;
    :cond_7
    return-object p1
.end method

.method public encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 12
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .param p3, "encoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, "state":Lcom/parse/ParseObject$State;, "TT;"
    const-wide/16 v10, 0x0

    .line 72
    if-eqz p2, :cond_0

    .line 73
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parameter ParseOperationSet is not null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 77
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .local v4, "objectJSON":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v0, "dataJSON":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "object":Ljava/lang/Object;
    invoke-virtual {p3, v3}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "could not serialize object to JSON"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 90
    const-string v5, "createdAt"

    .line 91
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v6

    cmp-long v5, v6, v10

    if-lez v5, :cond_3

    .line 94
    const-string v5, "updatedAt"

    .line 95
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 98
    const-string v5, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_4
    const-string v5, "data"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v5, "classname"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    return-object v4
.end method
