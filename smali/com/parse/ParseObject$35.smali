.class final Lcom/parse/ParseObject$35;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$uniqueObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/parse/ParseObject$35;->val$uniqueObjects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$35;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2295
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v8, p0, Lcom/parse/ParseObject$35;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    .line 2296
    .local v5, "objectCount":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2297
    .local v6, "states":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject$State;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 2298
    iget-object v8, p0, Lcom/parse/ParseObject$35;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 2299
    .local v3, "object":Lcom/parse/ParseObject;
    invoke-virtual {v3}, Lcom/parse/ParseObject;->validateDelete()V

    .line 2300
    invoke-virtual {v3}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2297
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2302
    .end local v3    # "object":Lcom/parse/ParseObject;
    :cond_0
    invoke-static {}, Lcom/parse/ParseObject;->access$900()Lcom/parse/ParseObjectController;

    move-result-object v8

    iget-object v9, p0, Lcom/parse/ParseObject$35;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v8, v6, v9}, Lcom/parse/ParseObjectController;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2304
    .local v1, "batchTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2305
    .local v7, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    .line 2306
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 2307
    .local v0, "batchTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v8, p0, Lcom/parse/ParseObject$35;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 2308
    .local v4, "object":Lcom/parse/ParseObject;, "TT;"
    new-instance v8, Lcom/parse/ParseObject$35$1;

    invoke-direct {v8, p0, v4}, Lcom/parse/ParseObject$35$1;-><init>(Lcom/parse/ParseObject$35;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v8}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2305
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2320
    .end local v0    # "batchTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v4    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_1
    invoke-static {v7}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v8

    return-object v8
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2292
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$35;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
