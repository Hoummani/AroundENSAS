.class Lcom/parse/OfflineStore$38;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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

.field final synthetic val$includeChildren:Z

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/parse/OfflineStore$38;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$38;->val$objects:Ljava/util/List;

    iput-boolean p3, p0, Lcom/parse/OfflineStore$38;->val$includeChildren:Z

    iput-object p4, p0, Lcom/parse/OfflineStore$38;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
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
    .line 1230
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParsePin;

    .line 1238
    .local v2, "pin":Lcom/parse/ParsePin;
    invoke-virtual {v2}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 1239
    .local v0, "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-nez v0, :cond_1

    .line 1240
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v3, p0, Lcom/parse/OfflineStore$38;->val$objects:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1248
    .restart local v0    # "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_0
    invoke-virtual {v2, v0}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 1250
    iget-boolean v3, p0, Lcom/parse/OfflineStore$38;->val$includeChildren:Z

    if-eqz v3, :cond_3

    .line 1251
    iget-object v3, p0, Lcom/parse/OfflineStore$38;->this$0:Lcom/parse/OfflineStore;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parse/OfflineStore$38;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v3, v2, v4, v5}, Lcom/parse/OfflineStore;->access$1500(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v3

    .line 1253
    :goto_0
    return-object v3

    .line 1242
    :cond_1
    iget-object v3, p0, Lcom/parse/OfflineStore$38;->val$objects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 1243
    .local v1, "object":Lcom/parse/ParseObject;
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1244
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1253
    .end local v1    # "object":Lcom/parse/ParseObject;
    :cond_3
    iget-object v3, p0, Lcom/parse/OfflineStore$38;->this$0:Lcom/parse/OfflineStore;

    invoke-virtual {v2}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/OfflineStore$38;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v3, v2, v4, v5}, Lcom/parse/OfflineStore;->access$1800(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v3

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
    .line 1227
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$38;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
