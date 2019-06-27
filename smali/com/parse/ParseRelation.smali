.class public Lcom/parse/ParseRelation;
.super Ljava/lang/Object;
.source "ParseRelation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parse/ParseRelation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private key:Ljava/lang/String;

.field private knownObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private parentClassName:Ljava/lang/String;

.field private parentObjectId:Ljava/lang/String;

.field private targetClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/parse/ParseRelation$1;

    invoke-direct {v0}, Lcom/parse/ParseRelation$1;-><init>()V

    sput-object v0, Lcom/parse/ParseRelation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v3, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 86
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 87
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 89
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v3, :cond_4

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2, p1}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 90
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 92
    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-virtual {p2, p1}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_5
    return-void
.end method

.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 49
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 50
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "targetClass"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 57
    iput-object v1, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 58
    iput-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 62
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    .line 68
    iput-object v3, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 69
    iput-object v3, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 70
    iput-object v3, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 72
    const-string v2, "className"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 73
    const-string v2, "objects"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 74
    .local v1, "objectsArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 125
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    .line 126
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 127
    .local v0, "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 130
    iget-object v1, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v2

    .line 132
    return-void

    .line 131
    .end local v0    # "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 204
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 248
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method encodeToJSON(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 172
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v2, "relation":Lorg/json/JSONObject;
    const-string v3, "__type"

    const-string v5, "Relation"

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v3, "className"

    iget-object v5, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 176
    .local v1, "knownObjectsArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    .local v0, "knownObject":Lcom/parse/ParseObject;
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/parse/ParseEncoder;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v5

    goto :goto_0

    .line 183
    .end local v0    # "knownObject":Lcom/parse/ParseObject;
    :cond_0
    :try_start_2
    const-string v3, "objects"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    monitor-exit v4

    return-object v2

    .line 185
    .end local v1    # "knownObjectsArray":Lorg/json/JSONArray;
    .end local v2    # "relation":Lorg/json/JSONObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "someParent"    # Lcom/parse/ParseObject;
    .param p2, "someKey"    # Ljava/lang/String;

    .prologue
    .line 97
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 104
    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different ParseObjects."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 110
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different keys."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    return-void
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    return-object v0
.end method

.method getKnownObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    return-object v0
.end method

.method getParent()Lcom/parse/ParseObject;
    .locals 2

    .prologue
    .line 229
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getQuery()Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 160
    new-instance v1, Lcom/parse/ParseQuery$State$Builder;

    iget-object v3, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    .line 161
    invoke-virtual {v1, v3}, Lcom/parse/ParseQuery$State$Builder;->redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    .line 165
    .local v0, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/parse/ParseQuery$State$Builder;->whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 166
    new-instance v1, Lcom/parse/ParseQuery;

    invoke-direct {v1, v0}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    monitor-exit v2

    return-object v1

    .line 163
    .end local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    iget-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    .restart local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    goto :goto_0

    .line 167
    .end local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 2

    .prologue
    .line 189
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasKnownObject(Lcom/parse/ParseObject;)Z
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 223
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v2, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 142
    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    const/4 v1, 0x0

    .line 143
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 144
    .local v0, "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 147
    iget-object v1, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v2

    .line 149
    return-void

    .line 148
    .end local v0    # "operation":Lcom/parse/ParseRelationOperation;, "Lcom/parse/ParseRelationOperation<TT;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeKnownObject(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 213
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 215
    monitor-exit v1

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTargetClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 195
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 253
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    new-instance v0, Lcom/parse/ParseObjectParcelEncoder;

    invoke-direct {v0}, Lcom/parse/ParseObjectParcelEncoder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseRelation;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 254
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .local p0, "this":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    iget-object v5, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 259
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-eqz v4, :cond_5

    move v4, v2

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 260
    iget-object v4, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-eqz v4, :cond_6

    move v4, v2

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 262
    iget-object v4, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    if-eqz v4, :cond_7

    move v4, v2

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 264
    iget-object v4, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    :cond_2
    iget-object v4, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    if-eqz v4, :cond_8

    move v4, v2

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 266
    iget-object v4, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    :cond_3
    iget-object v4, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    move v0, v2

    .line 268
    .local v0, "has":Z
    :goto_4
    if-eqz v0, :cond_a

    :goto_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 269
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 270
    :cond_4
    iget-object v2, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v2, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 272
    .local v1, "obj":Lcom/parse/ParseObject;
    invoke-virtual {p2, v1, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_6

    .line 274
    .end local v0    # "has":Z
    .end local v1    # "obj":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_5
    move v4, v3

    .line 259
    goto :goto_0

    :cond_6
    move v4, v3

    .line 261
    goto :goto_1

    :cond_7
    move v4, v3

    .line 263
    goto :goto_2

    :cond_8
    move v4, v3

    .line 265
    goto :goto_3

    :cond_9
    move v0, v3

    .line 267
    goto :goto_4

    .restart local v0    # "has":Z
    :cond_a
    move v2, v3

    .line 268
    goto :goto_5

    .line 274
    :cond_b
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    return-void
.end method
