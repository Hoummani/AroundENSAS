.class Lcom/parse/OfflineStore$6;
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
        "Landroid/database/Cursor;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$query:Lcom/parse/ParseQuery$State;

.field final synthetic val$queryLogic:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$results:Ljava/util/List;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/parse/OfflineStore$6;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$6;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery$State;

    iput-object p4, p0, Lcom/parse/OfflineStore$6;->val$user:Lcom/parse/ParseUser;

    iput-object p5, p0, Lcom/parse/OfflineStore$6;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p6, p0, Lcom/parse/OfflineStore$6;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
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
    .line 387
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 388
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .local v5, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 390
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 392
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 395
    iget-object v6, p0, Lcom/parse/OfflineStore$6;->val$queryLogic:Lcom/parse/OfflineQueryLogic;

    iget-object v7, p0, Lcom/parse/OfflineStore$6;->val$query:Lcom/parse/ParseQuery$State;

    iget-object v8, p0, Lcom/parse/OfflineStore$6;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v6, v7, v8}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v2

    .line 397
    .local v2, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 398
    .local v0, "checkedAllObjects":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 399
    .local v4, "uuid":Ljava/lang/String;
    new-instance v3, Lbolts/Capture;

    invoke-direct {v3}, Lbolts/Capture;-><init>()V

    .line 401
    .local v3, "object":Lbolts/Capture;, "Lbolts/Capture<TT;>;"
    new-instance v7, Lcom/parse/OfflineStore$6$4;

    invoke-direct {v7, p0, v4}, Lcom/parse/OfflineStore$6$4;-><init>(Lcom/parse/OfflineStore$6;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/OfflineStore$6$3;

    invoke-direct {v8, p0, v3}, Lcom/parse/OfflineStore$6$3;-><init>(Lcom/parse/OfflineStore$6;Lbolts/Capture;)V

    .line 406
    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/OfflineStore$6$2;

    invoke-direct {v8, p0, v3, v2}, Lcom/parse/OfflineStore$6$2;-><init>(Lcom/parse/OfflineStore$6;Lbolts/Capture;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    .line 412
    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/OfflineStore$6$1;

    invoke-direct {v8, p0, v3}, Lcom/parse/OfflineStore$6$1;-><init>(Lcom/parse/OfflineStore$6;Lbolts/Capture;)V

    .line 420
    invoke-virtual {v7, v8}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 429
    goto :goto_1

    .line 431
    .end local v3    # "object":Lbolts/Capture;, "Lbolts/Capture<TT;>;"
    .end local v4    # "uuid":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
