.class Lcom/parse/OfflineObjectStore$4;
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
        "<",
        "Ljava/util/List",
        "<TT;>;",
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
    .line 76
    .local p0, "this":Lcom/parse/OfflineObjectStore$4;, "Lcom/parse/OfflineObjectStore$4;"
    iput-object p1, p0, Lcom/parse/OfflineObjectStore$4;->this$0:Lcom/parse/OfflineObjectStore;

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
            "Ljava/util/List",
            "<TT;>;>;)",
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
    .line 79
    .local p0, "this":Lcom/parse/OfflineObjectStore$4;, "Lcom/parse/OfflineObjectStore$4;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<TT;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 80
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 87
    :goto_0
    return-object v1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineObjectStore$4;->this$0:Lcom/parse/OfflineObjectStore;

    invoke-static {v1}, Lcom/parse/OfflineObjectStore;->access$000(Lcom/parse/OfflineObjectStore;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

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
    .line 76
    .local p0, "this":Lcom/parse/OfflineObjectStore$4;, "Lcom/parse/OfflineObjectStore$4;"
    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
