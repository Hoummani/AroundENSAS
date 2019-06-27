.class Lcom/parse/ParseParcelDecoder;
.super Ljava/lang/Object;
.source "ParseParcelDecoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseParcelDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/parse/ParseParcelDecoder;

    invoke-direct {v0}, Lcom/parse/ParseParcelDecoder;-><init>()V

    sput-object v0, Lcom/parse/ParseParcelDecoder;->INSTANCE:Lcom/parse/ParseParcelDecoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/ParseParcelDecoder;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/parse/ParseParcelDecoder;->INSTANCE:Lcom/parse/ParseParcelDecoder;

    return-object v0
.end method


# virtual methods
.method public decode(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 10
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "type":Ljava/lang/String;
    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 103
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Could not unparcel objects from this Parcel."

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 42
    :sswitch_0
    const-string v9, "Object"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :sswitch_1
    const-string v9, "Pointer"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :sswitch_2
    const-string v9, "Date"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "Bytes"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x3

    goto :goto_0

    :sswitch_4
    const-string v9, "Operation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_5
    const-string v9, "File"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x5

    goto :goto_0

    :sswitch_6
    const-string v9, "GeoPoint"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x6

    goto :goto_0

    :sswitch_7
    const-string v9, "Polygon"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x7

    goto :goto_0

    :sswitch_8
    const-string v9, "Acl"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x8

    goto :goto_0

    :sswitch_9
    const-string v9, "Relation"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0x9

    goto :goto_0

    :sswitch_a
    const-string v9, "Map"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xa

    goto :goto_0

    :sswitch_b
    const-string v9, "Collection"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v9, "JsonNull"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v9, "Null"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v9, "Native"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/16 v8, 0xe

    goto/16 :goto_0

    .line 45
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseParcelDecoder;->decodeParseObject(Landroid/os/Parcel;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 100
    :goto_1
    :pswitch_1
    return-object v0

    .line 48
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/parse/ParseParcelDecoder;->decodePointer(Landroid/os/Parcel;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_1

    .line 51
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "iso":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_1

    .line 55
    .end local v2    # "iso":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    new-array v0, v8, [B

    .line 56
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1

    .line 60
    .end local v0    # "bytes":[B
    :pswitch_5
    invoke-static {p1, p0}, Lcom/parse/ParseFieldOperations;->decode(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    goto :goto_1

    .line 63
    :pswitch_6
    new-instance v0, Lcom/parse/ParseFile;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseFile;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    goto :goto_1

    .line 66
    :pswitch_7
    new-instance v0, Lcom/parse/ParseGeoPoint;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseGeoPoint;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    goto :goto_1

    .line 69
    :pswitch_8
    new-instance v0, Lcom/parse/ParsePolygon;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParsePolygon;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    goto :goto_1

    .line 72
    :pswitch_9
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseACL;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    goto :goto_1

    .line 75
    :pswitch_a
    new-instance v0, Lcom/parse/ParseRelation;

    invoke-direct {v0, p1, p0}, Lcom/parse/ParseRelation;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    goto :goto_1

    .line 78
    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 79
    .local v6, "size":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 80
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v6, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move-object v0, v5

    .line 83
    goto :goto_1

    .line 86
    .end local v1    # "i":I
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "size":I
    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 87
    .local v3, "length":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v3, :cond_2

    .line 89
    invoke-virtual {p0, p1}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v1, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move-object v0, v4

    .line 91
    goto :goto_1

    .line 94
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :pswitch_d
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    goto :goto_1

    .line 100
    :pswitch_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7558c3c9 -> :sswitch_e
        -0x739a70a1 -> :sswitch_0
        -0x71df2951 -> :sswitch_c
        -0x25730ab9 -> :sswitch_4
        -0x1d31a1e4 -> :sswitch_9
        0x1006a -> :sswitch_8
        0x12d3c -> :sswitch_a
        0x2063ce -> :sswitch_2
        0x21699c -> :sswitch_5
        0x2539a7 -> :sswitch_d
        0x3dad04b -> :sswitch_3
        0xf078abe -> :sswitch_b
        0x4b57d61d -> :sswitch_1
        0x4b86ed1a -> :sswitch_7
        0x704e24df -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method

.method protected decodeParseObject(Landroid/os/Parcel;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 109
    invoke-static {p1, p0}, Lcom/parse/ParseObject;->createFromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method protected decodePointer(Landroid/os/Parcel;)Lcom/parse/ParseObject;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
