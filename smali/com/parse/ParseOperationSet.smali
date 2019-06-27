.class Lcom/parse/ParseOperationSet;
.super Ljava/util/HashMap;
.source "ParseOperationSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/parse/ParseFieldOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_KEY_IS_SAVE_EVENTUALLY:Ljava/lang/String; = "__isSaveEventually"

.field private static final REST_KEY_UUID:Ljava/lang/String; = "__uuid"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private isSaveEventually:Z

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseOperationSet;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseOperationSet;)V
    .locals 1
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    .line 46
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseOperationSet;->uuid:Ljava/lang/String;

    .line 47
    iget-boolean v0, p1, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    iput-boolean v0, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    .line 48
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    .line 54
    iput-object p1, p0, Lcom/parse/ParseOperationSet;->uuid:Ljava/lang/String;

    .line 55
    return-void
.end method

.method static fromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseOperationSet;
    .locals 7
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    const/4 v5, 0x1

    .line 159
    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/parse/ParseOperationSet;-><init>(Ljava/lang/String;)V

    .line 160
    .local v3, "set":Lcom/parse/ParseOperationSet;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_0

    :goto_0
    invoke-virtual {v3, v5}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 161
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 162
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 164
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, p0}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 165
    .local v2, "op":Lcom/parse/ParseFieldOperation;
    invoke-virtual {v3, v1, v2}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "op":Lcom/parse/ParseFieldOperation;
    .end local v4    # "size":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 167
    .restart local v0    # "i":I
    .restart local v4    # "size":I
    :cond_1
    return-object v3
.end method

.method public static fromRest(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseOperationSet;
    .locals 14
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 110
    .local v7, "keysIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v13

    new-array v6, v13, [Ljava/lang/String;

    .line 111
    .local v6, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 112
    .local v1, "index":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 113
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 114
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "index":I
    .local v2, "index":I
    aput-object v5, v6, v1

    move v1, v2

    .line 115
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 117
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 118
    .local v4, "jsonCopy":Lorg/json/JSONObject;
    const-string v13, "__uuid"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 119
    .local v11, "uuid":Ljava/lang/String;
    if-nez v11, :cond_2

    new-instance v10, Lcom/parse/ParseOperationSet;

    invoke-direct {v10}, Lcom/parse/ParseOperationSet;-><init>()V

    .line 122
    .local v10, "operationSet":Lcom/parse/ParseOperationSet;
    :goto_1
    const-string v13, "__isSaveEventually"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 123
    .local v3, "isSaveEventually":Z
    const-string v13, "__isSaveEventually"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    invoke-virtual {v10, v3}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 126
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 127
    .local v9, "opKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 128
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 129
    .local v8, "opKey":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {p1, v13}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 131
    .local v12, "value":Ljava/lang/Object;
    const-string v13, "ACL"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 132
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    invoke-static {v13, p1}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v12

    .line 134
    .end local v12    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v13, v12, Lcom/parse/ParseFieldOperation;

    if-eqz v13, :cond_3

    move-object v0, v12

    .line 135
    check-cast v0, Lcom/parse/ParseFieldOperation;

    .line 139
    .local v0, "fieldOp":Lcom/parse/ParseFieldOperation;
    :goto_3
    invoke-virtual {v10, v8, v0}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 119
    .end local v0    # "fieldOp":Lcom/parse/ParseFieldOperation;
    .end local v3    # "isSaveEventually":Z
    .end local v8    # "opKey":Ljava/lang/String;
    .end local v9    # "opKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v10    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_2
    new-instance v10, Lcom/parse/ParseOperationSet;

    invoke-direct {v10, v11}, Lcom/parse/ParseOperationSet;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    .restart local v3    # "isSaveEventually":Z
    .restart local v8    # "opKey":Ljava/lang/String;
    .restart local v9    # "opKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v10    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_3
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, v12}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    .restart local v0    # "fieldOp":Lcom/parse/ParseFieldOperation;
    goto :goto_3

    .line 142
    .end local v0    # "fieldOp":Lcom/parse/ParseFieldOperation;
    .end local v8    # "opKey":Ljava/lang/String;
    :cond_4
    return-object v10
.end method


# virtual methods
.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parse/ParseOperationSet;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isSaveEventually()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    return v0
.end method

.method public mergeFrom(Lcom/parse/ParseOperationSet;)V
    .locals 5
    .param p1, "other"    # Lcom/parse/ParseOperationSet;

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFieldOperation;

    .line 76
    .local v1, "operation1":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p0, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 77
    .local v2, "operation2":Lcom/parse/ParseFieldOperation;
    if-eqz v2, :cond_0

    .line 78
    invoke-interface {v2, v1}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v2

    .line 82
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 80
    :cond_0
    move-object v2, v1

    goto :goto_1

    .line 84
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "operation1":Lcom/parse/ParseFieldOperation;
    .end local v2    # "operation2":Lcom/parse/ParseFieldOperation;
    :cond_1
    return-void
.end method

.method public setIsSaveEventually(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    .line 63
    return-void
.end method

.method toParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/parse/ParseOperationSet;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-boolean v1, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    invoke-virtual {p0}, Lcom/parse/ParseOperationSet;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {p0}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_1

    .line 150
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    :cond_1
    return-void
.end method

.method public toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 91
    .local v2, "operationSetJSON":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFieldOperation;

    .line 93
    .local v1, "op":Lcom/parse/ParseFieldOperation;
    invoke-interface {v1, p1}, Lcom/parse/ParseFieldOperation;->encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 96
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "op":Lcom/parse/ParseFieldOperation;
    :cond_0
    const-string v3, "__uuid"

    iget-object v4, p0, Lcom/parse/ParseOperationSet;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-boolean v3, p0, Lcom/parse/ParseOperationSet;->isSaveEventually:Z

    if-eqz v3, :cond_1

    .line 98
    const-string v3, "__isSaveEventually"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 100
    :cond_1
    return-object v2
.end method
