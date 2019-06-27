.class Lcom/parse/OfflineStore$48$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$48;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$48;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$48;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/OfflineStore$48;

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/parse/OfflineStore$48$1;->this$1:Lcom/parse/OfflineStore$48;

    iput-object p2, p0, Lcom/parse/OfflineStore$48$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
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
    .line 1522
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$48$1;->this$1:Lcom/parse/OfflineStore$48;

    iget-object v0, v0, Lcom/parse/OfflineStore$48;->val$callable:Lcom/parse/OfflineStore$SQLiteDatabaseCallable;

    iget-object v1, p0, Lcom/parse/OfflineStore$48$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-interface {v0, v1}, Lcom/parse/OfflineStore$SQLiteDatabaseCallable;->call(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    new-instance v1, Lcom/parse/OfflineStore$48$1$2;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$48$1$2;-><init>(Lcom/parse/OfflineStore$48$1;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$48$1$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$48$1$1;-><init>(Lcom/parse/OfflineStore$48$1;)V

    .line 1527
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1522
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
    .line 1519
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$48$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
