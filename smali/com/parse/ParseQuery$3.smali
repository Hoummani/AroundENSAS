.class Lcom/parse/ParseQuery$3;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$state:Lcom/parse/ParseQuery$State;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 1216
    .local p0, "this":Lcom/parse/ParseQuery$3;, "Lcom/parse/ParseQuery$3;"
    iput-object p1, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$3;->val$state:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/ParseQuery$3;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1219
    .local p0, "this":Lcom/parse/ParseQuery$3;, "Lcom/parse/ParseQuery$3;"
    iget-object v0, p0, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v1, p0, Lcom/parse/ParseQuery$3;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseQuery$3$1;-><init>(Lcom/parse/ParseQuery$3;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1216
    .local p0, "this":Lcom/parse/ParseQuery$3;, "Lcom/parse/ParseQuery$3;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery$3;->call()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
