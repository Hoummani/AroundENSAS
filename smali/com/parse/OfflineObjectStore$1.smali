.class final Lcom/parse/OfflineObjectStore$1;
.super Ljava/lang/Object;
.source "OfflineObjectStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->migrate(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$from:Lcom/parse/ParseObjectStore;

.field final synthetic val$to:Lcom/parse/ParseObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parse/OfflineObjectStore$1;->val$from:Lcom/parse/ParseObjectStore;

    iput-object p2, p0, Lcom/parse/OfflineObjectStore$1;->val$to:Lcom/parse/ParseObjectStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 29
    .local v0, "object":Lcom/parse/ParseObject;, "TT;"
    if-nez v0, :cond_0

    .line 33
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lbolts/Task;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineObjectStore$1;->val$from:Lcom/parse/ParseObjectStore;

    .line 34
    invoke-interface {v3}, Lcom/parse/ParseObjectStore;->deleteAsync()Lbolts/Task;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/OfflineObjectStore$1;->val$to:Lcom/parse/ParseObjectStore;

    .line 35
    invoke-interface {v3, v0}, Lcom/parse/ParseObjectStore;->setAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v3

    aput-object v3, v1, v2

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineObjectStore$1$1;-><init>(Lcom/parse/OfflineObjectStore$1;Lcom/parse/ParseObject;)V

    .line 36
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

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
    .line 25
    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
