.class Lcom/parse/ParseObject$State;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$State$Builder;,
        Lcom/parse/ParseObject$State$Init;
    }
.end annotation


# instance fields
.field private final availableKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final className:Ljava/lang/String;

.field private final createdAt:J

.field private final isComplete:Z

.field private final objectId:Ljava/lang/String;

.field private final serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedAt:J


# direct methods
.method constructor <init>(Landroid/os/Parcel;Ljava/lang/String;Lcom/parse/ParseParcelDecoder;)V
    .locals 12
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "clazz"    # Ljava/lang/String;
    .param p3, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    const/4 v9, 0x1

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-ne v8, v9, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    iput-object v8, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/parse/ParseObject$State;->createdAt:J

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 284
    .local v6, "updated":J
    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-lez v8, :cond_1

    .end local v6    # "updated":J
    :goto_1
    iput-wide v6, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 286
    .local v5, "size":I
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 287
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_2

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p3, p1}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    .line 290
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 281
    .end local v1    # "i":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "size":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 284
    .restart local v6    # "updated":J
    :cond_1
    iget-wide v6, p0, Lcom/parse/ParseObject$State;->createdAt:J

    goto :goto_1

    .line 292
    .end local v6    # "updated":J
    .restart local v1    # "i":I
    .restart local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5    # "size":I
    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    iput-object v8, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    if-ne v8, v9, :cond_3

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "available":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 296
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v8, p0, Lcom/parse/ParseObject$State;->availableKeys:Ljava/util/Set;

    .line 297
    return-void

    .line 293
    .end local v0    # "available":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method constructor <init>(Lcom/parse/ParseObject$State$Init;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$000(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    .line 269
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$100(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    .line 270
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$200(Lcom/parse/ParseObject$State$Init;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State;->createdAt:J

    .line 271
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$300(Lcom/parse/ParseObject$State$Init;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 272
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$300(Lcom/parse/ParseObject$State$Init;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    .line 274
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    .line 275
    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$400(Lcom/parse/ParseObject$State$Init;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    .line 276
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Lcom/parse/ParseObject$State$Init;->access$500(Lcom/parse/ParseObject$State$Init;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/parse/ParseObject$State;->availableKeys:Ljava/util/Set;

    .line 277
    return-void

    .line 272
    :cond_0
    iget-wide v0, p0, Lcom/parse/ParseObject$State;->createdAt:J

    goto :goto_0
.end method

.method static createFromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseObject$State;
    .locals 2
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "className":Ljava/lang/String;
    const-string v1, "_User"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/parse/ParseUser$State;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/ParseUser$State;-><init>(Landroid/os/Parcel;Ljava/lang/String;Lcom/parse/ParseParcelDecoder;)V

    .line 108
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/parse/ParseObject$State;

    invoke-direct {v1, p0, v0, p1}, Lcom/parse/ParseObject$State;-><init>(Landroid/os/Parcel;Ljava/lang/String;Lcom/parse/ParseParcelDecoder;)V

    goto :goto_0
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "_User"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseUser$State$Builder;-><init>()V

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/parse/ParseObject$State;->availableKeys:Ljava/util/Set;

    return-object v0
.end method

.method public className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    return-object v0
.end method

.method public createdAt()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/parse/ParseObject$State;->createdAt:J

    return-wide v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 325
    iget-object v0, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;>()TT;"
        }
    .end annotation

    .prologue
    .line 301
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$State$Builder;-><init>(Lcom/parse/ParseObject$State;)V

    return-object v0
.end method

.method public objectId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 361
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s@%s[className=%s, objectId=%s, createdAt=%d, updatedAt=%d, isComplete=%s, serverData=%s, availableKeys=%s]"

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 365
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-wide v4, p0, Lcom/parse/ParseObject$State;->createdAt:J

    .line 368
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-wide v4, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    .line 369
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-boolean v4, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    .line 370
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/parse/ParseObject$State;->availableKeys:Ljava/util/Set;

    aput-object v4, v2, v3

    .line 361
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updatedAt()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    return-wide v0
.end method

.method protected writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 342
    iget-object v2, p0, Lcom/parse/ParseObject$State;->className:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 344
    iget-object v2, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/parse/ParseObject$State;->objectId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    :cond_0
    iget-wide v6, p0, Lcom/parse/ParseObject$State;->createdAt:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 348
    iget-wide v6, p0, Lcom/parse/ParseObject$State;->updatedAt:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 349
    iget-object v2, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object v2, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 351
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v5, p0, Lcom/parse/ParseObject$State;->serverData:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    goto :goto_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    move v2, v4

    .line 343
    goto :goto_0

    .line 355
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    iget-boolean v2, p0, Lcom/parse/ParseObject$State;->isComplete:Z

    if-eqz v2, :cond_3

    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 356
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/parse/ParseObject$State;->availableKeys:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 357
    return-void

    :cond_3
    move v3, v4

    .line 355
    goto :goto_2
.end method
