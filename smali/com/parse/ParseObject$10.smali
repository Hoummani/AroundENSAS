.class Lcom/parse/ParseObject$10;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    const/4 v5, 0x0

    .line 1527
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 1528
    .local v1, "current":Lcom/parse/ParseUser;
    if-nez v1, :cond_0

    .line 1529
    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 1548
    :goto_0
    return-object v3

    .line 1531
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1532
    invoke-virtual {v1}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 1537
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    const-string v4, "ACL"

    invoke-virtual {v3, v4}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1538
    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 1540
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    .line 1541
    .local v0, "acl":Lcom/parse/ParseACL;
    if-nez v0, :cond_3

    .line 1542
    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 1544
    :cond_3
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getUnresolvedUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 1545
    .local v2, "user":Lcom/parse/ParseUser;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1546
    :cond_4
    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 1548
    :cond_5
    invoke-virtual {v2, v5}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseObject$10$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/parse/ParseObject$10$1;-><init>(Lcom/parse/ParseObject$10;Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

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
    .line 1524
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
