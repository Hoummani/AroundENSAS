.class Lcom/parse/OfflineStore$5;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$isCount:Z

.field final synthetic val$query:Lcom/parse/ParseQuery$State;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseQuery$State;ZLcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/parse/OfflineStore$5;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$5;->val$results:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    iput-boolean p4, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    iput-object p5, p0, Lcom/parse/OfflineStore$5;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v6, p0, Lcom/parse/OfflineStore$5;->val$results:Ljava/util/List;

    iget-object v7, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-static {v6, v7}, Lcom/parse/OfflineQueryLogic;->sort(Ljava/util/List;Lcom/parse/ParseQuery$State;)V

    .line 440
    iget-object v5, p0, Lcom/parse/OfflineStore$5;->val$results:Ljava/util/List;

    .line 441
    .local v5, "trimmedResults":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v6, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-virtual {v6}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v4

    .line 442
    .local v4, "skip":I
    iget-boolean v6, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    if-nez v6, :cond_0

    if-ltz v4, :cond_0

    .line 443
    iget-object v6, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-virtual {v6}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 444
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 448
    :cond_0
    iget-object v6, p0, Lcom/parse/OfflineStore$5;->val$query:Lcom/parse/ParseQuery$State;

    invoke-virtual {v6}, Lcom/parse/ParseQuery$State;->limit()I

    move-result v2

    .line 449
    .local v2, "limit":I
    iget-boolean v6, p0, Lcom/parse/OfflineStore$5;->val$isCount:Z

    if-nez v6, :cond_1

    if-ltz v2, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 450
    const/4 v6, 0x0

    invoke-interface {v5, v6, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 454
    :cond_1
    const/4 v6, 0x0

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 455
    .local v0, "fetchedIncludesTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 456
    .local v3, "object":Lcom/parse/ParseObject;, "TT;"
    new-instance v7, Lcom/parse/OfflineStore$5$1;

    invoke-direct {v7, p0, v3}, Lcom/parse/OfflineStore$5$1;-><init>(Lcom/parse/OfflineStore$5;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 462
    goto :goto_0

    .line 464
    .end local v3    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_2
    move-object v1, v5

    .line 465
    .local v1, "finalTrimmedResults":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v6, Lcom/parse/OfflineStore$5$2;

    invoke-direct {v6, p0, v1}, Lcom/parse/OfflineStore$5$2;-><init>(Lcom/parse/OfflineStore$5;Ljava/util/List;)V

    invoke-virtual {v0, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
