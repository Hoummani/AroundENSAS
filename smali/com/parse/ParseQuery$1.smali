.class Lcom/parse/ParseQuery$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->perform(Ljava/util/concurrent/Callable;Lbolts/TaskCompletionSource;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 1163
    .local p0, "this":Lcom/parse/ParseQuery$1;, "Lcom/parse/ParseQuery$1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$1;->val$tcs:Lbolts/TaskCompletionSource;

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
    .line 1166
    .local p0, "this":Lcom/parse/ParseQuery$1;, "Lcom/parse/ParseQuery$1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TTResult;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->val$tcs:Lbolts/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 1167
    iget-object v0, p0, Lcom/parse/ParseQuery$1;->this$0:Lcom/parse/ParseQuery;

    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1800(Lcom/parse/ParseQuery;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseQuery$1;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1168
    return-object p1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1163
    .local p0, "this":Lcom/parse/ParseQuery$1;, "Lcom/parse/ParseQuery$1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
