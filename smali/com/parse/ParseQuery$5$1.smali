.class Lcom/parse/ParseQuery$5$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$5;->call()Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$5;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseQuery$5;

    .prologue
    .line 1287
    .local p0, "this":Lcom/parse/ParseQuery$5$1;, "Lcom/parse/ParseQuery$5$1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$5$1;->this$1:Lcom/parse/ParseQuery$5;

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
            "Lcom/parse/ParseUser;",
            ">;)",
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
    .line 1290
    .local p0, "this":Lcom/parse/ParseQuery$5$1;, "Lcom/parse/ParseQuery$5$1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1291
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/parse/ParseQuery$5$1;->this$1:Lcom/parse/ParseQuery$5;

    iget-object v1, v1, Lcom/parse/ParseQuery$5;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$5$1;->this$1:Lcom/parse/ParseQuery$5;

    iget-object v2, v2, Lcom/parse/ParseQuery$5;->val$state:Lcom/parse/ParseQuery$State;

    iget-object v3, p0, Lcom/parse/ParseQuery$5$1;->this$1:Lcom/parse/ParseQuery$5;

    iget-object v3, v3, Lcom/parse/ParseQuery$5;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v3}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/parse/ParseQuery;->access$1900(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

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
    .line 1287
    .local p0, "this":Lcom/parse/ParseQuery$5$1;, "Lcom/parse/ParseQuery$5$1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$5$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
