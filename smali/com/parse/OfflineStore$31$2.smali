.class Lcom/parse/OfflineStore$31$2;
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
        "Lcom/parse/ParseObject;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParsePin;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$31;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$31;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/OfflineStore$31;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/parse/OfflineStore$31$2;->this$1:Lcom/parse/OfflineStore$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParsePin;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1119
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    .line 1120
    .local v0, "pin":Lcom/parse/ParsePin;
    iget-object v1, p0, Lcom/parse/OfflineStore$31$2;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v1, v1, Lcom/parse/OfflineStore$31;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$31$2;->this$1:Lcom/parse/OfflineStore$31;

    iget-object v2, v2, Lcom/parse/OfflineStore$31;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$31$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
