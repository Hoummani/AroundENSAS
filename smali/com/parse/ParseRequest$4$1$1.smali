.class Lcom/parse/ParseRequest$4$1$1;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TResponse;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseRequest$4$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/ParseRequest$4$1;

    .prologue
    .line 245
    .local p0, "this":Lcom/parse/ParseRequest$4$1$1;, "Lcom/parse/ParseRequest$4$1$1;"
    iput-object p1, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

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
            "<TResponse;>;)",
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
    .line 248
    .local p0, "this":Lcom/parse/ParseRequest$4$1$1;, "Lcom/parse/ParseRequest$4$1$1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TResponse;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$4$1;->val$retryTask:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->setCancelled()V

    .line 255
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$4$1;->val$retryTask:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$4$1;->val$retryTask:Lbolts/TaskCompletionSource;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

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
    .line 245
    .local p0, "this":Lcom/parse/ParseRequest$4$1$1;, "Lcom/parse/ParseRequest$4$1$1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$4$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
