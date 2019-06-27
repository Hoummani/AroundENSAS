.class Lcom/parse/ParseQuery$State$Builder;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQuery$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

.field private final className:Ljava/lang/String;

.field private final extraOptions:Ljava/util/Map;
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

.field private ignoreACLs:Z

.field private final includes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFromLocalDatastore:Z

.field private limit:I

.field private maxCacheAge:J

.field private order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pinName:Ljava/lang/String;

.field private selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field private final where:Lcom/parse/ParseQuery$QueryConstraints;


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery$State$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p1, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v2, 0x0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 344
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    .line 348
    iput v2, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    .line 356
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 357
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    .line 360
    iput-boolean v2, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 390
    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery$QueryConstraints;->putAll(Ljava/util/Map;)V

    .line 392
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 393
    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    .line 394
    iget v0, p1, Lcom/parse/ParseQuery$State$Builder;->limit:I

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    .line 395
    iget v0, p1, Lcom/parse/ParseQuery$State$Builder;->skip:I

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    .line 396
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 397
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 398
    iget-boolean v0, p1, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    .line 399
    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 400
    iget-wide v0, p1, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    .line 401
    iget-boolean v0, p1, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 402
    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    .line 403
    iget-boolean v0, p1, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    .line 404
    return-void

    .line 393
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/parse/ParseQuery$State;)V
    .locals 3
    .param p1, "state"    # Lcom/parse/ParseQuery$State;

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v2, 0x0

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 344
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    .line 348
    iput v2, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    .line 356
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 357
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    .line 360
    iput-boolean v2, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 373
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    .line 374
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery$QueryConstraints;->putAll(Ljava/util/Map;)V

    .line 375
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->includes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 376
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    .line 377
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->limit()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    .line 378
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    .line 379
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 380
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->extraOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 381
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isTracingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    .line 382
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 383
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->maxCacheAge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    .line 384
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 385
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->pinName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->ignoreACLs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    .line 387
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p1, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$000()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v2, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    .line 344
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    .line 347
    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    .line 348
    iput v2, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    .line 356
    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 357
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    .line 360
    iput-boolean v2, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 365
    iput-object p1, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    .line 366
    return-void
.end method

.method static synthetic access$1000(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParseQuery$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$CachePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParseQuery$State$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/parse/ParseQuery$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/parse/ParseQuery$State$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/ParseQuery$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parse/ParseQuery$State$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$QueryConstraints;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseQuery$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    return v0
.end method

.method static synthetic access$900(Lcom/parse/ParseQuery$State$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseQuery$State$Builder;

    .prologue
    .line 302
    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    return v0
.end method

.method private addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v1, 0x0

    .line 506
    .local v1, "whereValue":Lcom/parse/ParseQuery$KeyConstraints;
    iget-object v2, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v2, p1}, Lcom/parse/ParseQuery$QueryConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v2, p1}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 508
    .local v0, "existingValue":Ljava/lang/Object;
    instance-of v2, v0, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 509
    check-cast v1, Lcom/parse/ParseQuery$KeyConstraints;

    .line 512
    .end local v0    # "existingValue":Ljava/lang/Object;
    :cond_0
    if-nez v1, :cond_1

    .line 513
    new-instance v1, Lcom/parse/ParseQuery$KeyConstraints;

    .end local v1    # "whereValue":Lcom/parse/ParseQuery$KeyConstraints;
    invoke-direct {v1}, Lcom/parse/ParseQuery$KeyConstraints;-><init>()V

    .line 516
    .restart local v1    # "whereValue":Lcom/parse/ParseQuery$KeyConstraints;
    :cond_1
    invoke-virtual {v1, p2, p3}, Lcom/parse/ParseQuery$KeyConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v2, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v2, p1, v1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    return-object p0
.end method

.method private addOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    return-object p0
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "builders":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery$State$Builder<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t take an or of an empty list of queries"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 310
    :cond_0
    const/4 v1, 0x0

    .line 311
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v2, "constraints":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery$QueryConstraints;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$State$Builder;

    .line 313
    .local v0, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 314
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "All of the queries in an or query must be on the same class "

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    :cond_1
    iget v4, v0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    if-ltz v4, :cond_2

    .line 318
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have limits in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 320
    :cond_2
    iget v4, v0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    if-lez v4, :cond_3

    .line 321
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have skips in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 323
    :cond_3
    iget-object v4, v0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 324
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have an order in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 326
    :cond_4
    iget-object v4, v0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 327
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have an include in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 329
    :cond_5
    iget-object v4, v0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    if-eqz v4, :cond_6

    .line 330
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot have an selectKeys in sub queries of an \'OR\' query"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :cond_6
    iget-object v1, v0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    .line 335
    iget-object v4, v0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    .end local v0    # "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    :cond_7
    new-instance v3, Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v3, v1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-direct {v3, v2}, Lcom/parse/ParseQuery$State$Builder;->whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v3

    .line 338
    return-object v3
.end method

.method private setOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 562
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    return-object p0
.end method

.method private whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p1, "constraints":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseQuery$QueryConstraints;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "$or"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 592
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery$State$Builder;->addOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "condition"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 493
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p3, "value":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 616
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->addOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/parse/ParseQuery$State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`ignoreACLs` cannot be combined with network queries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseQuery$State;-><init>(Lcom/parse/ParseQuery$State$Builder;Lcom/parse/ParseQuery$1;)V

    return-object v0
.end method

.method clear(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$QueryConstraints;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    return-object p0
.end method

.method public fromLocalDatastore()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public fromNetwork()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 718
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    .line 719
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    .line 721
    return-object p0
.end method

.method public fromPin()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 733
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const-string v0, "_default"

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "pinName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 737
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    .line 738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    .line 739
    iput-object p1, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    .line 740
    return-object p0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 691
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    .line 692
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 662
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 702
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    .line 703
    iget-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 671
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    return v0
.end method

.method public ignoreACLs()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 744
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    .line 745
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    .line 746
    return-object p0
.end method

.method public include(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 634
    return-object p0
.end method

.method public isFromLocalDatstore()Z
    .locals 1

    .prologue
    .line 729
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    return v0
.end method

.method public isFromNetwork()Z
    .locals 1

    .prologue
    .line 713
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    .line 714
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxDistance(Ljava/lang/String;D)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "maxDistance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 459
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const-string v0, "$maxDistance"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseQuery$State$Builder;->setOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 603
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->setOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 681
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    const-string v1, "redirectClassNameForKey"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 655
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 658
    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .param p1, "cachePolicy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    .line 697
    iput-object p1, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    .line 698
    return-object p0
.end method

.method public setLimit(I)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .param p1, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iput p1, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    .line 667
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "maxCacheAge"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    .line 708
    iput-wide p1, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    .line 709
    return-object p0
.end method

.method public setSkip(I)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .param p1, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iput p1, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    .line 676
    return-object p0
.end method

.method public setTracingEnabled(Z)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .param p1, "trace"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iput-boolean p1, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    .line 687
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p3, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 431
    .local v0, "condition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v1, "query"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v1, "$dontSelect"

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 446
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p2, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<*>;"
    const-string v0, "$notInQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-object p0
.end method

.method public whereGeoIntersects(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    .local v0, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseGeoPoint;>;"
    const-string v1, "$point"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v1, "$geoIntersects"

    invoke-virtual {p0, p1, v1, v0}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whereGeoWithin(Ljava/lang/String;Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseGeoPoint;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 473
    .local v0, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/parse/ParseGeoPoint;>;>;"
    const-string v1, "$polygon"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v1, "$geoWithin"

    invoke-virtual {p0, p1, v1, v0}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "keyInQuery"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p3, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<*>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 439
    .local v0, "condition":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string v1, "query"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v1, "$select"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    return-object v1
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 451
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    .local p2, "builder":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<*>;"
    const-string v0, "$inQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "point"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const-string v0, "$nearSphere"

    invoke-virtual {p0, p1, v0, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method whereObjectIdEquals(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 545
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$QueryConstraints;->clear()V

    .line 546
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    return-object p0
.end method

.method whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "parent"    # Lcom/parse/ParseObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "$relatedTo"

    new-instance v2, Lcom/parse/ParseQuery$RelationConstraint;

    invoke-direct {v2, p2, p1}, Lcom/parse/ParseQuery$RelationConstraint;-><init>(Ljava/lang/String;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-object p0
.end method

.method public whereText(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 484
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 485
    .local v1, "termDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v0, "searchDictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v2, "$term"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v2, "$search"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v2, "$text"

    invoke-virtual {p0, p1, v2, v0}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    return-object v2
.end method

.method public whereWithin(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "southwest"    # Lcom/parse/ParseGeoPoint;
    .param p3, "northeast"    # Lcom/parse/ParseGeoPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "this":Lcom/parse/ParseQuery$State$Builder;, "Lcom/parse/ParseQuery$State$Builder<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 467
    .local v1, "dictionary":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    const-string v2, "$box"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v2, "$within"

    invoke-virtual {p0, p1, v2, v1}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    return-object v2
.end method
