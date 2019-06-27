.class final Lcom/parse/ParseObject$45;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 2688
    iput-object p1, p0, Lcom/parse/ParseObject$45;->val$objects:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    const/4 v6, 0x0

    .line 2691
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 2692
    .local v1, "current":Lcom/parse/ParseUser;
    if-nez v1, :cond_0

    .line 2693
    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 2726
    :goto_0
    return-object v4

    .line 2695
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2696
    invoke-virtual {v1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 2701
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseObject$45;->val$objects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2702
    .local v2, "object":Lcom/parse/ParseObject;
    const-string v5, "ACL"

    invoke-virtual {v2, v5}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2705
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    .line 2706
    .local v0, "acl":Lcom/parse/ParseACL;
    if-eqz v0, :cond_2

    .line 2709
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getUnresolvedUser()Lcom/parse/ParseUser;

    move-result-object v3

    .line 2710
    .local v3, "user":Lcom/parse/ParseUser;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2712
    invoke-virtual {v3, v6}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/ParseObject$45$1;

    invoke-direct {v5, p0, v0, v3}, Lcom/parse/ParseObject$45$1;-><init>(Lcom/parse/ParseObject$45;Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 2726
    .end local v0    # "acl":Lcom/parse/ParseACL;
    .end local v2    # "object":Lcom/parse/ParseObject;
    .end local v3    # "user":Lcom/parse/ParseUser;
    :cond_3
    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2688
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$45;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
