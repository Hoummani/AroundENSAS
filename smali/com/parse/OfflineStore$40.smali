.class Lcom/parse/OfflineStore$40;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Lcom/parse/ParsePin;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$40;->val$objects:Ljava/util/List;

    iput-object p3, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParsePin;",
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
    .line 1280
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParsePin;

    .line 1288
    .local v1, "pin":Lcom/parse/ParsePin;
    invoke-virtual {v1}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 1289
    .local v0, "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-nez v0, :cond_0

    .line 1291
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1300
    :goto_0
    return-object v2

    .line 1294
    :cond_0
    iget-object v2, p0, Lcom/parse/OfflineStore$40;->val$objects:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 1295
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1296
    iget-object v2, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    iget-object v3, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v2, v1, v3}, Lcom/parse/OfflineStore;->access$2000(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 1298
    :cond_1
    invoke-virtual {v1, v0}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 1300
    iget-object v2, p0, Lcom/parse/OfflineStore$40;->this$0:Lcom/parse/OfflineStore;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/OfflineStore$40;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v2, v1, v3, v4}, Lcom/parse/OfflineStore;->access$1500(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v2

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
    .line 1277
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$40;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
