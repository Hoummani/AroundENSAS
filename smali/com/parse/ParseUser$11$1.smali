.class Lcom/parse/ParseUser$11$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$11;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser$State;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$11;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$11;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseUser$11;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/parse/ParseUser$11$1;->this$0:Lcom/parse/ParseUser$11;

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
            "Lcom/parse/ParseUser$State;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    .line 1133
    .local v0, "result":Lcom/parse/ParseUser$State;
    invoke-static {v0}, Lcom/parse/ParseObject;->from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 1134
    .local v1, "user":Lcom/parse/ParseUser;
    invoke-static {v1}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$11$1$1;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseUser$11$1$1;-><init>(Lcom/parse/ParseUser$11$1;Lcom/parse/ParseUser;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1129
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$11$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
