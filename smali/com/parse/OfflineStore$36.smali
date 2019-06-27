.class Lcom/parse/OfflineStore$36;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParsePin;",
        ">;",
        "Lcom/parse/ParsePin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/parse/OfflineStore$36;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$36;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParsePin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParsePin;",
            ">;>;)",
            "Lcom/parse/ParsePin;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1190
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/ParsePin;>;>;"
    const/4 v0, 0x0

    .line 1191
    .local v0, "pin":Lcom/parse/ParsePin;
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1192
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pin":Lcom/parse/ParsePin;
    check-cast v0, Lcom/parse/ParsePin;

    .line 1197
    .restart local v0    # "pin":Lcom/parse/ParsePin;
    :cond_0
    if-nez v0, :cond_1

    .line 1198
    const-class v1, Lcom/parse/ParsePin;

    invoke-static {v1}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    .end local v0    # "pin":Lcom/parse/ParsePin;
    check-cast v0, Lcom/parse/ParsePin;

    .line 1199
    .restart local v0    # "pin":Lcom/parse/ParsePin;
    iget-object v1, p0, Lcom/parse/OfflineStore$36;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePin;->setName(Ljava/lang/String;)V

    .line 1201
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
    .line 1187
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$36;->then(Lbolts/Task;)Lcom/parse/ParsePin;

    move-result-object v0

    return-object v0
.end method
