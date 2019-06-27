.class Lcom/parse/ParseObject$46$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$46;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject$46;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$46;Lcom/parse/ParseUser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject$46;

    .prologue
    .line 2783
    iput-object p1, p0, Lcom/parse/ParseObject$46$1;->this$0:Lcom/parse/ParseObject$46;

    iput-object p2, p0, Lcom/parse/ParseObject$46$1;->val$user:Lcom/parse/ParseUser;

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
            "Ljava/lang/Void;",
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
    .line 2786
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$46$1;->this$0:Lcom/parse/ParseObject$46;

    iget-object v0, v0, Lcom/parse/ParseObject$46;->val$objects:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/ParseObject$46$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseObject$46$1;->this$0:Lcom/parse/ParseObject$46;

    iget-boolean v2, v2, Lcom/parse/ParseObject$46;->val$onlyIfNeeded:Z

    invoke-static {v0, v1, v2, p1}, Lcom/parse/ParseObject;->access$1900(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2783
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$46$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
