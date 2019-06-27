.class Lcom/parse/ParseFile$12;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->fetchInBackground(Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
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
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;

.field final synthetic val$cancellationToken:Lbolts/Task;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;Lbolts/Task;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFile;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/parse/ParseFile$12;->this$0:Lcom/parse/ParseFile;

    iput-object p2, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:Lbolts/Task;

    iput-object p3, p0, Lcom/parse/ParseFile$12;->val$progressCallback:Lcom/parse/ProgressCallback;

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
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 692
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:Lbolts/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 693
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 695
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile$12;->this$0:Lcom/parse/ParseFile;

    .line 696
    invoke-static {v1}, Lcom/parse/ParseFile;->access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/ParseFile$12;->val$progressCallback:Lcom/parse/ProgressCallback;

    .line 698
    invoke-static {v3}, Lcom/parse/ParseFile;->access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseFile$12;->val$cancellationToken:Lbolts/Task;

    .line 695
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/parse/ParseFileController;->fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

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
    .line 689
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$12;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
