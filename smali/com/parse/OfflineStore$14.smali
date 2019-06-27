.class Lcom/parse/OfflineStore$14;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuidCapture:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/parse/OfflineStore$14;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$14;->val$uuidCapture:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/OfflineStore$14;->val$object:Lcom/parse/ParseObject;

    iput-object p4, p0, Lcom/parse/OfflineStore$14;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
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
    .line 729
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 730
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/OfflineStore$14;->val$uuidCapture:Lbolts/Capture;

    invoke-virtual {v1, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 731
    iget-object v1, p0, Lcom/parse/OfflineStore$14;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$14;->val$object:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/OfflineStore$14;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v1, v0, v2, v3}, Lcom/parse/OfflineStore;->access$800(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

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
    .line 726
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$14;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
