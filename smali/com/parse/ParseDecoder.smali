.class Lcom/parse/ParseDecoder;
.super Ljava/lang/Object;
.source "ParseDecoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    sput-object v0, Lcom/parse/ParseDecoder;->INSTANCE:Lcom/parse/ParseDecoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static get()Lcom/parse/ParseDecoder;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/parse/ParseDecoder;->INSTANCE:Lcom/parse/ParseDecoder;

    return-object v0
.end method


# virtual methods
.method convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v1
.end method

.method convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 52
    .local v2, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 55
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 58
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 70
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONArray;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 71
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 154
    :cond_0
    :goto_0
    return-object p1

    .line 74
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    sget-object v20, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 75
    const/16 p1, 0x0

    goto :goto_0

    .line 78
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v12, p1

    .line 82
    check-cast v12, Lorg/json/JSONObject;

    .line 84
    .local v12, "jsonObject":Lorg/json/JSONObject;
    const-string v20, "__op"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "opString":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 87
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v12, v0}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 88
    :catch_0
    move-exception v9

    .line 89
    .local v9, "e":Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 93
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_3
    const-string v20, "__type"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 94
    .local v19, "typeString":Ljava/lang/String;
    if-nez v19, :cond_4

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_4
    const-string v20, "Date"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 99
    const-string v20, "iso"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 100
    .local v11, "iso":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 103
    .end local v11    # "iso":Ljava/lang/String;
    :cond_5
    const-string v20, "Bytes"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 104
    const-string v20, "base64"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "base64":Ljava/lang/String;
    const/16 v20, 0x2

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    goto :goto_0

    .line 108
    .end local v7    # "base64":Ljava/lang/String;
    :cond_6
    const-string v20, "Pointer"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 109
    const-string v20, "className"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "objectId"

    .line 110
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 109
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseDecoder;->decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object p1

    goto/16 :goto_0

    .line 113
    :cond_7
    const-string v20, "File"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 114
    new-instance p1, Lcom/parse/ParseFile;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v12, v1}, Lcom/parse/ParseFile;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto/16 :goto_0

    .line 117
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    const-string v20, "GeoPoint"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 120
    :try_start_1
    const-string v20, "latitude"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 121
    .local v14, "latitude":D
    const-string v20, "longitude"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 125
    .local v16, "longitude":D
    new-instance p1, Lcom/parse/ParseGeoPoint;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-wide/from16 v1, v16

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    goto/16 :goto_0

    .line 122
    .end local v14    # "latitude":D
    .end local v16    # "longitude":D
    .restart local p1    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v9

    .line 123
    .restart local v9    # "e":Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 128
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_9
    const-string v20, "Polygon"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 129
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v8, "coordinates":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    :try_start_2
    const-string v20, "coordinates"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 132
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v10, v0, :cond_a

    .line 133
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v18

    .line 134
    .local v18, "point":Lorg/json/JSONArray;
    new-instance v20, Lcom/parse/ParseGeoPoint;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v22

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v24

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 136
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v10    # "i":I
    .end local v18    # "point":Lorg/json/JSONArray;
    :catch_2
    move-exception v9

    .line 137
    .restart local v9    # "e":Lorg/json/JSONException;
    new-instance v20, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v0, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 139
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v6    # "array":Lorg/json/JSONArray;
    .restart local v10    # "i":I
    :cond_a
    new-instance p1, Lcom/parse/ParsePolygon;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v0, v8}, Lcom/parse/ParsePolygon;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 142
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v8    # "coordinates":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    .end local v10    # "i":I
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_b
    const-string v20, "Object"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 143
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v12, v0, v1}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object p1

    goto/16 :goto_0

    .line 146
    :cond_c
    const-string v20, "Relation"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 147
    new-instance p1, Lcom/parse/ParseRelation;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v12, v1}, Lcom/parse/ParseRelation;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto/16 :goto_0

    .line 150
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_d
    const-string v20, "OfflineObject"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 151
    new-instance v20, Ljava/lang/RuntimeException;

    const-string v21, "An unexpected offline pointer was encountered."

    invoke-direct/range {v20 .. v21}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 154
    :cond_e
    const/16 p1, 0x0

    goto/16 :goto_0
.end method

.method protected decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-static {p1, p2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
