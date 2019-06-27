.class Lcom/parse/ParseUser$16$1$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$16$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseUser$16$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$16$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/ParseUser$16$1;

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/parse/ParseUser$16$1$2;->this$2:Lcom/parse/ParseUser$16$1;

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
            "Lcom/parse/ParseUser$State;",
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
    .line 1414
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser$State;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser$State;

    .line 1415
    .local v1, "result":Lcom/parse/ParseUser$State;
    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1418
    invoke-static {v1}, Lcom/parse/ParseObject;->from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1419
    .local v0, "newUser":Lcom/parse/ParseUser;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v2

    .line 1421
    .end local v0    # "newUser":Lcom/parse/ParseUser;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

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
    .line 1411
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16$1$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
