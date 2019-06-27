.class Lcom/parse/ParseQuery$3$1;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$3;->call()Lbolts/Task;
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
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseQuery$3;

    .prologue
    .line 1219
    .local p0, "this":Lcom/parse/ParseQuery$3$1;, "Lcom/parse/ParseQuery$3$1;"
    iput-object p1, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

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
    .line 1222
    .local p0, "this":Lcom/parse/ParseQuery$3$1;, "Lcom/parse/ParseQuery$3$1;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1223
    .local v0, "user":Lcom/parse/ParseUser;
    iget-object v1, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    iget-object v1, v1, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    iget-object v2, v2, Lcom/parse/ParseQuery$3;->val$state:Lcom/parse/ParseQuery$State;

    iget-object v3, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    iget-object v3, v3, Lcom/parse/ParseQuery$3;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v3}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

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
    .line 1219
    .local p0, "this":Lcom/parse/ParseQuery$3$1;, "Lcom/parse/ParseQuery$3$1;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$3$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
