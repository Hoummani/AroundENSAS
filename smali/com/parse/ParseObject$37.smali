.class final Lcom/parse/ParseObject$37;
.super Lcom/parse/ParseTraverser;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alreadySeen:Ljava/util/Set;

.field final synthetic val$alreadySeenNew:Ljava/util/Set;

.field final synthetic val$dirtyChildren:Ljava/util/Collection;

.field final synthetic val$dirtyFiles:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/parse/ParseObject$37;->val$dirtyFiles:Ljava/util/Collection;

    iput-object p2, p0, Lcom/parse/ParseObject$37;->val$dirtyChildren:Ljava/util/Collection;

    iput-object p3, p0, Lcom/parse/ParseObject$37;->val$alreadySeen:Ljava/util/Set;

    iput-object p4, p0, Lcom/parse/ParseObject$37;->val$alreadySeenNew:Ljava/util/Set;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "node"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    .line 2395
    instance-of v6, p1, Lcom/parse/ParseFile;

    if-eqz v6, :cond_2

    .line 2396
    iget-object v6, p0, Lcom/parse/ParseObject$37;->val$dirtyFiles:Ljava/util/Collection;

    if-nez v6, :cond_1

    .line 2451
    :cond_0
    :goto_0
    return v9

    :cond_1
    move-object v0, p1

    .line 2400
    check-cast v0, Lcom/parse/ParseFile;

    .line 2401
    .local v0, "file":Lcom/parse/ParseFile;
    invoke-virtual {v0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 2402
    iget-object v6, p0, Lcom/parse/ParseObject$37;->val$dirtyFiles:Ljava/util/Collection;

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2408
    .end local v0    # "file":Lcom/parse/ParseFile;
    :cond_2
    instance-of v6, p1, Lcom/parse/ParseObject;

    if-eqz v6, :cond_0

    .line 2412
    iget-object v6, p0, Lcom/parse/ParseObject$37;->val$dirtyChildren:Ljava/util/Collection;

    if-eqz v6, :cond_0

    move-object v1, p1

    .line 2417
    check-cast v1, Lcom/parse/ParseObject;

    .line 2418
    .local v1, "object":Lcom/parse/ParseObject;
    iget-object v2, p0, Lcom/parse/ParseObject$37;->val$alreadySeen:Ljava/util/Set;

    .line 2419
    .local v2, "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    iget-object v4, p0, Lcom/parse/ParseObject$37;->val$alreadySeenNew:Ljava/util/Set;

    .line 2423
    .local v4, "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 2424
    new-instance v4, Ljava/util/HashSet;

    .end local v4    # "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2436
    .restart local v4    # "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    :goto_1
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2439
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2440
    .end local v2    # "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local v3, "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2445
    invoke-static {v1}, Lcom/parse/ParseObject;->access$1400(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/parse/ParseObject$37;->val$dirtyChildren:Ljava/util/Collection;

    iget-object v8, p0, Lcom/parse/ParseObject$37;->val$dirtyFiles:Ljava/util/Collection;

    invoke-static {v6, v7, v8, v3, v4}, Lcom/parse/ParseObject;->access$1500(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    .line 2447
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2448
    iget-object v6, p0, Lcom/parse/ParseObject$37;->val$dirtyChildren:Ljava/util/Collection;

    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2426
    .end local v3    # "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .restart local v2    # "seen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2427
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Found a circular dependency while saving."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2429
    :cond_4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2430
    .end local v4    # "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local v5, "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    .end local v5    # "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .restart local v4    # "seenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    goto :goto_1
.end method
