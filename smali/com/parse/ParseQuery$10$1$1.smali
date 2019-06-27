.class Lcom/parse/ParseQuery$10$1$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$10$1;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TTResult;",
        "Lbolts/Task",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseQuery$10$1;

.field final synthetic val$networkState:Lcom/parse/ParseQuery$State;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$10$1;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/ParseQuery$10$1;

    .prologue
    .line 1549
    .local p0, "this":Lcom/parse/ParseQuery$10$1$1;, "Lcom/parse/ParseQuery$10$1$1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$10$1$1;->this$2:Lcom/parse/ParseQuery$10$1;

    iput-object p2, p0, Lcom/parse/ParseQuery$10$1$1;->val$networkState:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/ParseQuery$10$1$1;->val$user:Lcom/parse/ParseUser;

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
            "<TTResult;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1552
    .local p0, "this":Lcom/parse/ParseQuery$10$1$1;, "Lcom/parse/ParseQuery$10$1$1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$10$1$1;->this$2:Lcom/parse/ParseQuery$10$1;

    iget-object v0, v0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v0, v0, Lcom/parse/ParseQuery$10;->val$delegate:Lcom/parse/ParseQuery$CacheThenNetworkCallable;

    iget-object v1, p0, Lcom/parse/ParseQuery$10$1$1;->val$networkState:Lcom/parse/ParseQuery$State;

    iget-object v2, p0, Lcom/parse/ParseQuery$10$1$1;->val$user:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseQuery$10$1$1;->this$2:Lcom/parse/ParseQuery$10$1;

    iget-object v3, v3, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v3, v3, Lcom/parse/ParseQuery$10;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v3}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/parse/ParseQuery$CacheThenNetworkCallable;->call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    move-object p1, v0

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
    .line 1549
    .local p0, "this":Lcom/parse/ParseQuery$10$1$1;, "Lcom/parse/ParseQuery$10$1$1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$10$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
