.class Lcom/parse/ParseUser$8$1$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$8$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseUser$8$1;

.field final synthetic val$signUpTask:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$8$1;Lbolts/Task;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/ParseUser$8$1;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/parse/ParseUser$8$1$1;->this$2:Lcom/parse/ParseUser$8$1;

    iput-object p2, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 708
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->this$2:Lcom/parse/ParseUser$8$1;

    iget-object v0, v0, Lcom/parse/ParseUser$8$1;->this$1:Lcom/parse/ParseUser$8;

    iget-object v0, v0, Lcom/parse/ParseUser$8;->this$0:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    .line 711
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$8$1$1;->val$signUpTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

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
    .line 705
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$8$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
