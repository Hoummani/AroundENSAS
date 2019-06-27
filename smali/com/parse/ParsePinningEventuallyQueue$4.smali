.class Lcom/parse/ParsePinningEventuallyQueue$4;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePinningEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$tcs:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePinningEventuallyQueue;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iput-object p2, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$command:Lcom/parse/ParseRESTCommand;

    iput-object p3, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$object:Lcom/parse/ParseObject;

    iput-object p4, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$tcs:Lbolts/TaskCompletionSource;

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
    .line 227
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$command:Lcom/parse/ParseRESTCommand;

    iget-object v2, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$object:Lcom/parse/ParseObject;

    iget-object v3, p0, Lcom/parse/ParsePinningEventuallyQueue$4;->val$tcs:Lbolts/TaskCompletionSource;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/parse/ParsePinningEventuallyQueue;->access$100(Lcom/parse/ParsePinningEventuallyQueue;Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;Lbolts/Task;Lbolts/TaskCompletionSource;)Lbolts/Task;

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
    .line 224
    invoke-virtual {p0, p1}, Lcom/parse/ParsePinningEventuallyQueue$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
