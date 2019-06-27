.class Lcom/parse/ParsePinningEventuallyQueue$13;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->process(Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$eventuallyPin:Lcom/parse/EventuallyPin;

.field final synthetic val$operationSet:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/EventuallyPin;Lcom/parse/ParseOperationSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
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
    .line 493
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getType()I

    move-result v4

    .line 494
    .local v4, "type":I
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getObject()Lcom/parse/ParseObject;

    move-result-object v2

    .line 495
    .local v2, "object":Lcom/parse/ParseObject;
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, "sessionToken":Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 499
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {v5}, Lcom/parse/ParsePinningEventuallyQueue;->access$1300(Lcom/parse/ParsePinningEventuallyQueue;)Lcom/parse/ParseHttpClient;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-virtual {v2, v5, v6, v3}, Lcom/parse/ParseObject;->saveAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 512
    .local v1, "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :goto_0
    new-instance v5, Lcom/parse/ParsePinningEventuallyQueue$13$1;

    invoke-direct {v5, p0, v4, v2}, Lcom/parse/ParsePinningEventuallyQueue$13$1;-><init>(Lcom/parse/ParsePinningEventuallyQueue$13;ILcom/parse/ParseObject;)V

    invoke-virtual {v1, v5}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    return-object v5

    .line 500
    .end local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 501
    invoke-virtual {v2, v3}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v5

    invoke-virtual {v5}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v1

    .restart local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    goto :goto_0

    .line 503
    .end local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :cond_1
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->val$eventuallyPin:Lcom/parse/EventuallyPin;

    invoke-virtual {v5}, Lcom/parse/EventuallyPin;->getCommand()Lcom/parse/ParseRESTCommand;

    move-result-object v0

    .line 504
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    if-nez v0, :cond_2

    .line 505
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 506
    .restart local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/parse/ParsePinningEventuallyQueue;->notifyTestHelper(I)V

    goto :goto_0

    .line 508
    .end local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :cond_2
    iget-object v5, p0, Lcom/parse/ParsePinningEventuallyQueue$13;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {v5}, Lcom/parse/ParsePinningEventuallyQueue;->access$1300(Lcom/parse/ParsePinningEventuallyQueue;)Lcom/parse/ParseHttpClient;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "executeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
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
    .line 490
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$13;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
