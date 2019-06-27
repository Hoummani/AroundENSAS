.class abstract Lcom/parse/ParseObject$State$Init;
.super Ljava/lang/Object;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Init"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject$State$Init;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private availableKeys:Ljava/util/Set;
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

.field private createdAt:J

.field private isComplete:Z

.field private objectId:Ljava/lang/String;

.field serverData:Ljava/util/Map;
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

.field private updatedAt:J


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$State;)V
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseObject$State;

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v2, -0x1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 116
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 118
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    .line 126
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 129
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 130
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->availableKeys()Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    .line 131
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 132
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    iget-object v2, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    iput-boolean v1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v0, -0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 116
    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    .line 122
    iput-object p1, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObject$State$Init;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/parse/ParseObject$State$Init;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/parse/ParseObject$State$Init;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    return v0
.end method

.method static synthetic access$500(Lcom/parse/ParseObject$State$Init;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;
    .locals 6
    .param p1, "other"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v4, 0x0

    .line 207
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 211
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parse/ParseObject$State$Init;->createdAt(J)Lcom/parse/ParseObject$State$Init;

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 214
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/parse/ParseObject$State$Init;->updatedAt(J)Lcom/parse/ParseObject$State$Init;

    .line 216
    :cond_2
    iget-boolean v1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 217
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 216
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 220
    :cond_5
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->availableKeys()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parse/ParseObject$State$Init;->availableKeys(Ljava/util/Collection;)Lcom/parse/ParseObject$State$Init;

    .line 221
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    return-object v1
.end method

.method public apply(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseObject$State$Init;
    .locals 6
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 227
    .local v3, "operation":Lcom/parse/ParseFieldOperation;
    iget-object v5, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 228
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-interface {v3, v2, v0}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject$State$Init;->remove(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 235
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;
    .end local v3    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v4

    return-object v4
.end method

.method public availableKeys(Ljava/util/Collection;)Lcom/parse/ParseObject$State$Init;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    return-object v1
.end method

.method abstract build()Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/parse/ParseObject$State;",
            ">()TS;"
        }
    .end annotation
.end method

.method public clear()Lcom/parse/ParseObject$State$Init;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    const-wide/16 v2, -0x1

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    .line 192
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 193
    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    .line 195
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 196
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 197
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public createdAt(J)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "createdAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-wide p1, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 154
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;
    .locals 2
    .param p1, "createdAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    .line 149
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public isComplete(Z)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "complete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-boolean p1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    .line 169
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->availableKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/parse/ParseObject$State$Init;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public updatedAt(J)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "updatedAt"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    iput-wide p1, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 164
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;
    .locals 2
    .param p1, "updatedAt"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<TT;>;"
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    .line 159
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method
