.class Lcom/parse/ParseRequest$4$1;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest$4;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseRequest$4;

.field final synthetic val$retryTask:Lbolts/TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$4;Lbolts/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseRequest$4;

    .prologue
    .line 236
    .local p0, "this":Lcom/parse/ParseRequest$4$1;, "Lcom/parse/ParseRequest$4$1;"
    iput-object p1, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iput-object p2, p0, Lcom/parse/ParseRequest$4$1;->val$retryTask:Lbolts/TaskCompletionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 239
    .local p0, "this":Lcom/parse/ParseRequest$4$1;, "Lcom/parse/ParseRequest$4$1;"
    iget-object v0, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget-object v0, v0, Lcom/parse/ParseRequest$4;->this$0:Lcom/parse/ParseRequest;

    iget-object v1, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget-object v1, v1, Lcom/parse/ParseRequest$4;->val$client:Lcom/parse/ParseHttpClient;

    iget-object v2, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget-object v2, v2, Lcom/parse/ParseRequest$4;->val$request:Lcom/parse/http/ParseHttpRequest;

    iget-object v3, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget v3, v3, Lcom/parse/ParseRequest$4;->val$attemptsMade:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget-wide v4, v4, Lcom/parse/ParseRequest$4;->val$delay:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    iget-object v6, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget-object v6, v6, Lcom/parse/ParseRequest$4;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    iget-object v7, p0, Lcom/parse/ParseRequest$4$1;->this$1:Lcom/parse/ParseRequest$4;

    iget-object v7, v7, Lcom/parse/ParseRequest$4;->val$cancellationToken:Lbolts/Task;

    invoke-static/range {v0 .. v7}, Lcom/parse/ParseRequest;->access$100(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$4$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$4$1$1;-><init>(Lcom/parse/ParseRequest$4$1;)V

    .line 245
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    .line 258
    return-void
.end method
