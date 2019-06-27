.class Lcom/parse/ParseParcelEncoder;
.super Ljava/lang/Object;
.source "ParseParcelEncoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseParcelEncoder;

.field static final TYPE_ACL:Ljava/lang/String; = "Acl"

.field static final TYPE_BYTES:Ljava/lang/String; = "Bytes"

.field static final TYPE_COLLECTION:Ljava/lang/String; = "Collection"

.field static final TYPE_DATE:Ljava/lang/String; = "Date"

.field static final TYPE_FILE:Ljava/lang/String; = "File"

.field static final TYPE_GEOPOINT:Ljava/lang/String; = "GeoPoint"

.field static final TYPE_JSON_NULL:Ljava/lang/String; = "JsonNull"

.field static final TYPE_MAP:Ljava/lang/String; = "Map"

.field static final TYPE_NATIVE:Ljava/lang/String; = "Native"

.field static final TYPE_NULL:Ljava/lang/String; = "Null"

.field static final TYPE_OBJECT:Ljava/lang/String; = "Object"

.field static final TYPE_OP:Ljava/lang/String; = "Operation"

.field static final TYPE_POINTER:Ljava/lang/String; = "Pointer"

.field static final TYPE_POLYGON:Ljava/lang/String; = "Polygon"

.field static final TYPE_RELATION:Ljava/lang/String; = "Relation"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/parse/ParseParcelEncoder;

    invoke-direct {v0}, Lcom/parse/ParseParcelEncoder;-><init>()V

    sput-object v0, Lcom/parse/ParseParcelEncoder;->INSTANCE:Lcom/parse/ParseParcelEncoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/ParseParcelEncoder;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/parse/ParseParcelEncoder;->INSTANCE:Lcom/parse/ParseParcelEncoder;

    return-object v0
.end method

.method private static isValidType(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/parse/ParseEncoder;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 10
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 62
    :try_start_0
    instance-of v7, p1, Lcom/parse/ParseObject;

    if-eqz v7, :cond_1

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseObject;

    move-object v7, v0

    invoke-virtual {p0, v7, p2}, Lcom/parse/ParseParcelEncoder;->encodeParseObject(Lcom/parse/ParseObject;Landroid/os/Parcel;)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    instance-of v7, p1, Ljava/util/Date;

    if-eqz v7, :cond_2

    .line 67
    const-string v7, "Date"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    move-object v7, v0

    invoke-virtual {v8, v7}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not encode this object into Parcel. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 70
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    instance-of v7, p1, [B

    if-eqz v7, :cond_3

    .line 71
    const-string v7, "Bytes"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    move-object v0, p1

    check-cast v0, [B

    move-object v7, v0

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 73
    .local v1, "bytes":[B
    array-length v7, v1

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 76
    .end local v1    # "bytes":[B
    :cond_3
    instance-of v7, p1, Lcom/parse/ParseFieldOperation;

    if-eqz v7, :cond_4

    .line 77
    const-string v7, "Operation"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseFieldOperation;

    move-object v7, v0

    invoke-interface {v7, p2, p0}, Lcom/parse/ParseFieldOperation;->encode(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    goto :goto_0

    .line 80
    :cond_4
    instance-of v7, p1, Lcom/parse/ParseFile;

    if-eqz v7, :cond_5

    .line 81
    const-string v7, "File"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseFile;

    move-object v7, v0

    invoke-virtual {v7, p2, p0}, Lcom/parse/ParseFile;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    goto :goto_0

    .line 84
    :cond_5
    instance-of v7, p1, Lcom/parse/ParseGeoPoint;

    if-eqz v7, :cond_6

    .line 85
    const-string v7, "GeoPoint"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseGeoPoint;

    move-object v7, v0

    invoke-virtual {v7, p2, p0}, Lcom/parse/ParseGeoPoint;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    goto/16 :goto_0

    .line 88
    :cond_6
    instance-of v7, p1, Lcom/parse/ParsePolygon;

    if-eqz v7, :cond_7

    .line 89
    const-string v7, "Polygon"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    move-object v0, p1

    check-cast v0, Lcom/parse/ParsePolygon;

    move-object v7, v0

    invoke-virtual {v7, p2, p0}, Lcom/parse/ParsePolygon;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    goto/16 :goto_0

    .line 92
    :cond_7
    instance-of v7, p1, Lcom/parse/ParseACL;

    if-eqz v7, :cond_8

    .line 93
    const-string v7, "Acl"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v7, v0

    invoke-virtual {v7, p2, p0}, Lcom/parse/ParseACL;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    goto/16 :goto_0

    .line 96
    :cond_8
    instance-of v7, p1, Lcom/parse/ParseRelation;

    if-eqz v7, :cond_9

    .line 97
    const-string v7, "Relation"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v7, v0

    invoke-virtual {v7, p2, p0}, Lcom/parse/ParseRelation;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    goto/16 :goto_0

    .line 100
    :cond_9
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_a

    .line 101
    const-string v7, "Map"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    .line 104
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 106
    .local v6, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v7, p2}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_1

    .line 110
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a
    instance-of v7, p1, Ljava/util/Collection;

    if-eqz v7, :cond_b

    .line 111
    const-string v7, "Collection"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v2, v0

    .line 113
    .local v2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 115
    .local v4, "item":Ljava/lang/Object;
    invoke-virtual {p0, v4, p2}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_2

    .line 118
    .end local v2    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v4    # "item":Ljava/lang/Object;
    :cond_b
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v7, :cond_c

    .line 119
    const-string v7, "JsonNull"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :cond_c
    if-nez p1, :cond_d

    .line 122
    const-string v7, "Null"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    :cond_d
    invoke-static {p1}, Lcom/parse/ParseParcelEncoder;->isValidType(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 126
    const-string v7, "Native"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 130
    :cond_e
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not encode this object into Parcel. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method protected encodeParseObject(Lcom/parse/ParseObject;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 141
    const-string v0, "Object"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, p2, p0}, Lcom/parse/ParseObject;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 143
    return-void
.end method

.method protected encodePointer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 146
    const-string v0, "Pointer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return-void
.end method
