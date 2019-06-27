.class Lcom/parse/ParseSession$1$1;
.super Ljava/lang/Object;
.source "ParseSession.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSession$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseObject$State;",
        "Lcom/parse/ParseSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSession$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseSession$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseSession$1;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parse/ParseSession$1$1;->this$0:Lcom/parse/ParseSession$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseSession;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;)",
            "Lcom/parse/ParseSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject$State;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State;

    .line 58
    .local v0, "result":Lcom/parse/ParseObject$State;
    invoke-static {v0}, Lcom/parse/ParseObject;->from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseSession;

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
    .line 54
    invoke-virtual {p0, p1}, Lcom/parse/ParseSession$1$1;->then(Lbolts/Task;)Lcom/parse/ParseSession;

    move-result-object v0

    return-object v0
.end method
