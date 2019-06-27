.class Lcom/parse/OfflineStore$31$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$31;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$31;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$31;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/OfflineStore$31;

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iput-object p2, p0, Lcom/parse/OfflineStore$31$1;->val$uuid:Ljava/lang/String;

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
    .line 1125
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParsePin;

    .line 1127
    .local v1, "pin":Lcom/parse/ParsePin;
    invoke-virtual {v1}, Lcom/parse/ParsePin;->getObjects()Ljava/util/List;

    move-result-object v0

    .line 1128
    .local v0, "modified":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v2, v2, Lcom/parse/OfflineStore$31;->val$object:Lcom/parse/ParseObject;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1129
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

    .line 1138
    :goto_0
    return-object v2

    .line 1132
    :cond_1
    iget-object v2, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v2, v2, Lcom/parse/OfflineStore$31;->val$object:Lcom/parse/ParseObject;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1133
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 1134
    iget-object v2, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v2, v2, Lcom/parse/OfflineStore$31;->this$0:Lcom/parse/OfflineStore;

    iget-object v3, p0, Lcom/parse/OfflineStore$31$1;->val$uuid:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v4, v4, Lcom/parse/OfflineStore$31;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/parse/OfflineStore;->access$1000(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 1137
    :cond_2
    invoke-virtual {v1, v0}, Lcom/parse/ParsePin;->setObjects(Ljava/util/List;)V

    .line 1138
    iget-object v2, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v2, v2, Lcom/parse/OfflineStore$31;->this$0:Lcom/parse/OfflineStore;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/OfflineStore$31$1;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v4, v4, Lcom/parse/OfflineStore$31;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 1122
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$31$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
