.class Lcom/parse/ParseObjectParcelDecoder;
.super Lcom/parse/ParseParcelDecoder;
.source "ParseObjectParcelDecoder.java"


# instance fields
.field private objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parse/ParseParcelDecoder;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObjectParcelDecoder;->objects:Ljava/util/Map;

    .line 21
    return-void
.end method

.method private getObjectOrLocalId(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/parse/ParseObjectParcelDecoder;->objects:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/parse/ParseObjectParcelDecoder;->getObjectOrLocalId(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method protected decodePointer(Landroid/os/Parcel;)Lcom/parse/ParseObject;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "objectId":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParseObjectParcelDecoder;->objects:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    iget-object v3, p0, Lcom/parse/ParseObjectParcelDecoder;->objects:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 37
    :goto_0
    return-object v3

    .line 35
    :cond_0
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 36
    .local v1, "object":Lcom/parse/ParseObject;
    iget-object v3, p0, Lcom/parse/ParseObjectParcelDecoder;->objects:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v1

    .line 37
    goto :goto_0
.end method
