.class public Lcom/parse/ParsePolygon;
.super Ljava/lang/Object;
.source "ParsePolygon.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parse/ParsePolygon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private coordinates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/parse/ParsePolygon$1;

    invoke-direct {v0}, Lcom/parse/ParsePolygon$1;-><init>()V

    sput-object v0, Lcom/parse/ParsePolygon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 76
    invoke-static {}, Lcom/parse/ParseParcelDecoder;->get()Lcom/parse/ParseParcelDecoder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParsePolygon;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParsePolygon;->setCoordinates(Ljava/util/List;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParsePolygon;)V
    .locals 1
    .param p1, "polygon"    # Lcom/parse/ParsePolygon;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/parse/ParsePolygon;->getCoordinates()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParsePolygon;-><init>(Ljava/util/List;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/parse/ParsePolygon;->setCoordinates(Ljava/util/List;)V

    .line 56
    return-void
.end method

.method static validate(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Polygon must have at least 3 GeoPoints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    return-object p0
.end method


# virtual methods
.method public containsPoint(Lcom/parse/ParseGeoPoint;)Z
    .locals 34
    .param p1, "point"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v18

    .line 129
    .local v18, "minX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v14

    .line 130
    .local v14, "maxX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v20

    .line 131
    .local v20, "minY":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v16

    .line 133
    .local v16, "maxY":D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_0

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/ParseGeoPoint;

    .line 135
    .local v8, "geoPoint":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v28

    move-wide/from16 v0, v28

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v18

    .line 136
    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    .line 137
    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v28

    move-wide/from16 v0, v28

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v20

    .line 138
    invoke-virtual {v8}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v28

    move-wide/from16 v0, v28

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v16

    .line 133
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 141
    .end local v8    # "geoPoint":Lcom/parse/ParseGeoPoint;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v28

    cmpg-double v23, v28, v18

    if-ltz v23, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v28

    cmpl-double v23, v28, v14

    if-gtz v23, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v28

    cmpg-double v23, v28, v20

    if-ltz v23, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v28

    cmpl-double v23, v28, v16

    if-lez v23, :cond_3

    :cond_1
    const/16 v22, 0x1

    .line 142
    .local v22, "outside":Z
    :goto_1
    if-eqz v22, :cond_4

    .line 143
    const/4 v11, 0x0

    .line 160
    :cond_2
    return v11

    .line 141
    .end local v22    # "outside":Z
    :cond_3
    const/16 v22, 0x0

    goto :goto_1

    .line 146
    .restart local v22    # "outside":Z
    :cond_4
    const/4 v11, 0x0

    .line 147
    .local v11, "inside":Z
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    add-int/lit8 v13, v23, -0x1

    .local v13, "j":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v9, v0, :cond_2

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v24

    .line 149
    .local v24, "startX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v26

    .line 150
    .local v26, "startY":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    .line 151
    .local v4, "endX":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/parse/ParseGeoPoint;

    invoke-virtual/range {v23 .. v23}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    .line 153
    .local v6, "endY":D
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v28

    cmpl-double v23, v26, v28

    if-lez v23, :cond_6

    const/16 v23, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v28

    cmpl-double v28, v6, v28

    if-lez v28, :cond_7

    const/16 v28, 0x1

    :goto_4
    move/from16 v0, v23

    move/from16 v1, v28

    if-eq v0, v1, :cond_8

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v28

    sub-double v30, v4, v24

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v32

    sub-double v32, v32, v26

    mul-double v30, v30, v32

    sub-double v32, v6, v26

    div-double v30, v30, v32

    add-double v30, v30, v24

    cmpg-double v23, v28, v30

    if-gez v23, :cond_8

    const/4 v12, 0x1

    .line 156
    .local v12, "intersect":Z
    :goto_5
    if-eqz v12, :cond_5

    .line 157
    if-nez v11, :cond_9

    const/4 v11, 0x1

    .line 147
    :cond_5
    :goto_6
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "i":I
    .local v10, "i":I
    move v13, v9

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_2

    .line 153
    .end local v12    # "intersect":Z
    :cond_6
    const/16 v23, 0x0

    goto :goto_3

    :cond_7
    const/16 v28, 0x0

    goto :goto_4

    .line 154
    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    .line 157
    .restart local v12    # "intersect":Z
    :cond_9
    const/4 v11, 0x0

    goto :goto_6
.end method

.method protected coordinatesToJSONArray()Lorg/json/JSONArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 115
    .local v2, "points":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    .line 116
    .local v0, "coordinate":Lcom/parse/ParseGeoPoint;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 117
    .local v1, "point":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 118
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 119
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 121
    .end local v0    # "coordinate":Lcom/parse/ParseGeoPoint;
    .end local v1    # "point":Lorg/json/JSONArray;
    :cond_0
    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 175
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/parse/ParsePolygon;

    if-nez v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    if-ne p1, p0, :cond_2

    .line 179
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move-object v2, p1

    .line 181
    check-cast v2, Lcom/parse/ParsePolygon;

    .line 183
    .local v2, "other":Lcom/parse/ParsePolygon;
    iget-object v3, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/parse/ParsePolygon;->getCoordinates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 188
    .local v1, "isEqual":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/parse/ParsePolygon;->getCoordinates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    .line 190
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/parse/ParsePolygon;->getCoordinates()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_4

    .line 191
    :cond_3
    const/4 v1, 0x0

    .line 192
    goto :goto_0

    .line 188
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCoordinates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    return-object v0
.end method

.method public setCoordinates(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "coords":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    invoke-static {p1}, Lcom/parse/ParsePolygon;->validate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 200
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "ParsePolygon: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 210
    invoke-static {}, Lcom/parse/ParseParcelEncoder;->get()Lcom/parse/ParseParcelEncoder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParsePolygon;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 211
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/parse/ParsePolygon;->coordinates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 215
    return-void
.end method
