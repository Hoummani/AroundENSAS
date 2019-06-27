.class Lcom/parse/ParseCommandCache$4;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V
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
        "Lorg/json/JSONObject;",
        "Lbolts/Task",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseRESTCommand;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseCommandCache;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$4;->val$command:Lcom/parse/ParseRESTCommand;

    iput-object p3, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/TaskCompletionSource;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 537
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    iget-object v4, p0, Lcom/parse/ParseCommandCache$4;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v4}, Lcom/parse/ParseRESTCommand;->getLocalId()Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "localId":Ljava/lang/String;
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 539
    .local v0, "error":Ljava/lang/Exception;
    if-eqz v0, :cond_2

    .line 540
    instance-of v4, v0, Lcom/parse/ParseException;

    if-eqz v4, :cond_1

    move-object v4, v0

    check-cast v4, Lcom/parse/ParseException;

    .line 541
    invoke-virtual {v4}, Lcom/parse/ParseException;->getCode()I

    move-result v4

    const/16 v5, 0x64

    if-ne v4, v5, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-object p1

    .line 544
    :cond_1
    iget-object v4, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/TaskCompletionSource;

    if-eqz v4, :cond_0

    .line 545
    iget-object v4, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v4, v0}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 551
    :cond_2
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 552
    .local v1, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/TaskCompletionSource;

    if-eqz v4, :cond_3

    .line 553
    iget-object v4, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v4, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 554
    :cond_3
    if-eqz v2, :cond_0

    .line 556
    const-string v4, "objectId"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "objectId":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 558
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v4

    .line 559
    invoke-virtual {v4}, Lcom/parse/ParseCorePlugins;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 534
    invoke-virtual {p0, p1}, Lcom/parse/ParseCommandCache$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
