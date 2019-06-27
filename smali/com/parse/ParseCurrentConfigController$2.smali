.class Lcom/parse/ParseCurrentConfigController$2;
.super Ljava/lang/Object;
.source "ParseCurrentConfigController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCurrentConfigController;->getCurrentConfigAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCurrentConfigController;


# direct methods
.method constructor <init>(Lcom/parse/ParseCurrentConfigController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseCurrentConfigController;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    invoke-static {v1}, Lcom/parse/ParseCurrentConfigController;->access$000(Lcom/parse/ParseCurrentConfigController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    iget-object v1, v1, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    invoke-virtual {v1}, Lcom/parse/ParseCurrentConfigController;->getFromDisk()Lcom/parse/ParseConfig;

    move-result-object v0

    .line 50
    .local v0, "config":Lcom/parse/ParseConfig;
    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    if-eqz v0, :cond_1

    .end local v0    # "config":Lcom/parse/ParseConfig;
    :goto_0
    iput-object v0, v1, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    .line 52
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    iget-object v1, p0, Lcom/parse/ParseCurrentConfigController$2;->this$0:Lcom/parse/ParseCurrentConfigController;

    iget-object v1, v1, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    return-object v1

    .line 50
    .restart local v0    # "config":Lcom/parse/ParseConfig;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/ParseConfig;

    .end local v0    # "config":Lcom/parse/ParseConfig;
    invoke-direct {v0}, Lcom/parse/ParseConfig;-><init>()V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/parse/ParseCurrentConfigController$2;->call()Lcom/parse/ParseConfig;

    move-result-object v0

    return-object v0
.end method
