.class Lcom/parse/ParseFileController$3$1;
.super Ljava/lang/Object;
.source "ParseFileController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFileController$3;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/ParseFileController$3;

.field final synthetic val$tempFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/parse/ParseFileController$3;Ljava/io/File;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseFileController$3;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iput-object p2, p0, Lcom/parse/ParseFileController$3$1;->val$tempFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
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
    .line 219
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cancellationToken:Lbolts/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cancellationToken:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->val$tempFile:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 224
    invoke-virtual {p1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 231
    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->val$tempFile:Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v1, v1, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/parse/ParseFileUtils;->moveFile(Ljava/io/File;Ljava/io/File;)V

    .line 232
    iget-object v0, p0, Lcom/parse/ParseFileController$3$1;->this$1:Lcom/parse/ParseFileController$3;

    iget-object v0, v0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

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
    .line 215
    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController$3$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
