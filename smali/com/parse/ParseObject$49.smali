.class final Lcom/parse/ParseObject$49;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 3725
    iput-object p1, p0, Lcom/parse/ParseObject$49;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    .line 3728
    iget-object v2, p0, Lcom/parse/ParseObject$49;->val$object:Lcom/parse/ParseObject;

    const-string v3, "ACL"

    invoke-virtual {v2, v3}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3729
    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 3742
    :goto_0
    return-object v2

    .line 3732
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject$49;->val$object:Lcom/parse/ParseObject;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    .line 3733
    .local v0, "acl":Lcom/parse/ParseACL;
    if-nez v0, :cond_1

    .line 3734
    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 3737
    :cond_1
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getUnresolvedUser()Lcom/parse/ParseUser;

    move-result-object v1

    .line 3738
    .local v1, "user":Lcom/parse/ParseUser;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3739
    :cond_2
    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 3742
    :cond_3
    invoke-static {v1}, Lcom/parse/ParseUser;->pinCurrentUserIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;

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
    .line 3725
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$49;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
