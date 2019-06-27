.class Lcom/parse/CachedCurrentInstallationController$2$1;
.super Ljava/lang/Object;
.source "CachedCurrentInstallationController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentInstallationController$2;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseInstallation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/CachedCurrentInstallationController$2;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentInstallationController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/CachedCurrentInstallationController$2;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    invoke-static {v0}, Lcom/parse/CachedCurrentInstallationController;->access$200(Lcom/parse/CachedCurrentInstallationController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 91
    :goto_0
    return-object v0

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    invoke-static {v0}, Lcom/parse/CachedCurrentInstallationController;->access$100(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/ParseObjectStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->getAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/CachedCurrentInstallationController$2$1$1;

    invoke-direct {v1, p0}, Lcom/parse/CachedCurrentInstallationController$2$1$1;-><init>(Lcom/parse/CachedCurrentInstallationController$2$1;)V

    .line 108
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController$2$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
