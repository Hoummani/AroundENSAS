.class Lcom/parse/OfflineStore$29$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$29;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$29;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$29;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/OfflineStore$29;

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/parse/OfflineStore$29$1;->this$1:Lcom/parse/OfflineStore$29;

    iput-object p2, p0, Lcom/parse/OfflineStore$29$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 1053
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$29$1;->this$1:Lcom/parse/OfflineStore$29;

    iget-object v0, v0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$29$1;->this$1:Lcom/parse/OfflineStore$29;

    iget-object v1, v1, Lcom/parse/OfflineStore$29;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$29$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v0, v1, v2}, Lcom/parse/OfflineStore;->access$1400(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$29$1$2;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$29$1$2;-><init>(Lcom/parse/OfflineStore$29$1;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$29$1$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$29$1$1;-><init>(Lcom/parse/OfflineStore$29$1;)V

    .line 1058
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1053
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
    .line 1050
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$29$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
