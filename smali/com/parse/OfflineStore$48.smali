.class Lcom/parse/OfflineStore$48;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->runWithManagedTransaction(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$callable:Lcom/parse/OfflineStore$SQLiteDatabaseCallable;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 1515
    iput-object p1, p0, Lcom/parse/OfflineStore$48;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$48;->val$callable:Lcom/parse/OfflineStore$SQLiteDatabaseCallable;

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
            "Lcom/parse/ParseSQLiteDatabase;",
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
    .line 1518
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseSQLiteDatabase;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseSQLiteDatabase;

    .line 1519
    .local v0, "db":Lcom/parse/ParseSQLiteDatabase;
    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->beginTransactionAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$48$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$48$1;-><init>(Lcom/parse/OfflineStore$48;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 1515
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$48;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
