.class Lcom/parse/ParseFile$2;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cancellationToken:Lbolts/Task;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$uploadProgressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lbolts/Task;Ljava/lang/String;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFile;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:Lbolts/Task;

    iput-object p3, p0, Lcom/parse/ParseFile$2;->val$sessionToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseFile$2;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

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
    .line 321
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 345
    :goto_0
    return-object v0

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:Lbolts/Task;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iget-object v0, v0, Lcom/parse/ParseFile;->data:[B

    if-eqz v0, :cond_2

    .line 330
    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    .line 331
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->data:[B

    iget-object v3, p0, Lcom/parse/ParseFile$2;->val$sessionToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseFile$2;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    .line 334
    invoke-static {v4}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:Lbolts/Task;

    .line 330
    invoke-virtual/range {v0 .. v5}, Lcom/parse/ParseFileController;->saveAsync(Lcom/parse/ParseFile$State;[BLjava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v6

    .line 345
    .local v6, "saveTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseFile$State;>;"
    :goto_1
    new-instance v0, Lcom/parse/ParseFile$2$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseFile$2$1;-><init>(Lcom/parse/ParseFile$2;)V

    invoke-virtual {v6, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 337
    .end local v6    # "saveTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseFile$State;>;"
    :cond_2
    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    .line 338
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iget-object v2, v2, Lcom/parse/ParseFile;->file:Ljava/io/File;

    iget-object v3, p0, Lcom/parse/ParseFile$2;->val$sessionToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseFile$2;->val$uploadProgressCallback:Lcom/parse/ProgressCallback;

    .line 341
    invoke-static {v4}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseFile$2;->val$cancellationToken:Lbolts/Task;

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/parse/ParseFileController;->saveAsync(Lcom/parse/ParseFile$State;Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v6

    .restart local v6    # "saveTask":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseFile$State;>;"
    goto :goto_1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 318
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
