.class Lcom/parse/ParsePushChannelsController$1;
.super Ljava/lang/Object;
.source "ParsePushChannelsController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushChannelsController;->subscribeInBackground(Ljava/lang/String;)Lbolts/Task;
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
        "Lcom/parse/ParseInstallation;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePushChannelsController;

.field final synthetic val$channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParsePushChannelsController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePushChannelsController;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/parse/ParsePushChannelsController$1;->this$0:Lcom/parse/ParsePushChannelsController;

    iput-object p2, p0, Lcom/parse/ParsePushChannelsController$1;->val$channel:Ljava/lang/String;

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
            "Lcom/parse/ParseInstallation;",
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
    .line 32
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseInstallation;

    .line 33
    .local v1, "installation":Lcom/parse/ParseInstallation;
    const-string v2, "channels"

    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 34
    .local v0, "channels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v2, "channels"

    .line 35
    invoke-virtual {v1, v2}, Lcom/parse/ParseInstallation;->isDirty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/parse/ParsePushChannelsController$1;->val$channel:Ljava/lang/String;

    .line 36
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 37
    :cond_0
    const-string v2, "channels"

    iget-object v3, p0, Lcom/parse/ParsePushChannelsController$1;->val$channel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/parse/ParseInstallation;->addUnique(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->saveInBackground()Lbolts/Task;

    move-result-object v2

    .line 40
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

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
    .line 29
    invoke-virtual {p0, p1}, Lcom/parse/ParsePushChannelsController$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
