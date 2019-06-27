.class Lcom/parse/OfflineObjectStore$5;
.super Ljava/lang/Object;
.source "OfflineObjectStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->existsAsync()Lbolts/Task;
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
        "Ljava/lang/Integer;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineObjectStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineObjectStore;

    .prologue
    .line 108
    .local p0, "this":Lcom/parse/OfflineObjectStore$5;, "Lcom/parse/OfflineObjectStore$5;"
    iput-object p1, p0, Lcom/parse/OfflineObjectStore$5;->this$0:Lcom/parse/OfflineObjectStore;

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
            "Ljava/lang/Integer;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/parse/OfflineObjectStore$5;, "Lcom/parse/OfflineObjectStore$5;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v0, v2

    .line 112
    .local v0, "exists":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 113
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 115
    :goto_1
    return-object v1

    .line 111
    .end local v0    # "exists":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    .restart local v0    # "exists":Z
    :cond_1
    iget-object v1, p0, Lcom/parse/OfflineObjectStore$5;->this$0:Lcom/parse/OfflineObjectStore;

    invoke-static {v1}, Lcom/parse/OfflineObjectStore;->access$100(Lcom/parse/OfflineObjectStore;)Lcom/parse/ParseObjectStore;

    move-result-object v1

    invoke-interface {v1}, Lcom/parse/ParseObjectStore;->existsAsync()Lbolts/Task;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/parse/OfflineObjectStore$5;, "Lcom/parse/OfflineObjectStore$5;"
    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
