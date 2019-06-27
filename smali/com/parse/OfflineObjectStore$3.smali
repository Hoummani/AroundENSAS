.class Lcom/parse/OfflineObjectStore$3;
.super Ljava/lang/Object;
.source "OfflineObjectStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->getAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineObjectStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineObjectStore;

    .prologue
    .line 89
    .local p0, "this":Lcom/parse/OfflineObjectStore$3;, "Lcom/parse/OfflineObjectStore$3;"
    iput-object p1, p0, Lcom/parse/OfflineObjectStore$3;->this$0:Lcom/parse/OfflineObjectStore;

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
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lcom/parse/OfflineObjectStore$3;, "Lcom/parse/OfflineObjectStore$3;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 93
    .local v0, "ldsObject":Lcom/parse/ParseObject;, "TT;"
    if-eqz v0, :cond_0

    .line 97
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineObjectStore$3;->this$0:Lcom/parse/OfflineObjectStore;

    invoke-static {v1}, Lcom/parse/OfflineObjectStore;->access$100(Lcom/parse/OfflineObjectStore;)Lcom/parse/ParseObjectStore;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/OfflineObjectStore$3;->this$0:Lcom/parse/OfflineObjectStore;

    invoke-static {v1, v2}, Lcom/parse/OfflineObjectStore;->access$200(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object p1

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
    .line 89
    .local p0, "this":Lcom/parse/OfflineObjectStore$3;, "Lcom/parse/OfflineObjectStore$3;"
    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
