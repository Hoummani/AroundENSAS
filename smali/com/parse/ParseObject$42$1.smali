.class Lcom/parse/ParseObject$42$1;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$42;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject$42;

.field final synthetic val$current:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$42;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject$42;

    .prologue
    .line 2590
    iput-object p1, p0, Lcom/parse/ParseObject$42$1;->this$0:Lcom/parse/ParseObject$42;

    iput-object p2, p0, Lcom/parse/ParseObject$42$1;->val$current:Ljava/util/List;

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
    .line 2593
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$42$1;->val$current:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/ParseObject$42$1;->this$0:Lcom/parse/ParseObject$42;

    iget-object v1, v1, Lcom/parse/ParseObject$42;->val$sessionToken:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/parse/ParseObject;->access$1700(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

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
    .line 2590
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$42$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
