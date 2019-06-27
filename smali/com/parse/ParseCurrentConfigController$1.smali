.class Lcom/parse/ParseCurrentConfigController$1;
.super Ljava/lang/Object;
.source "ParseCurrentConfigController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCurrentConfigController;->setCurrentConfigAsync(Lcom/parse/ParseConfig;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCurrentConfigController;

.field final synthetic val$config:Lcom/parse/ParseConfig;


# direct methods
.method constructor <init>(Lcom/parse/ParseCurrentConfigController;Lcom/parse/ParseConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseCurrentConfigController;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/parse/ParseCurrentConfigController$1;->this$0:Lcom/parse/ParseCurrentConfigController;

    iput-object p2, p0, Lcom/parse/ParseCurrentConfigController$1;->val$config:Lcom/parse/ParseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/parse/ParseCurrentConfigController$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$1;->this$0:Lcom/parse/ParseCurrentConfigController;

    invoke-static {v0}, Lcom/parse/ParseCurrentConfigController;->access$000(Lcom/parse/ParseCurrentConfigController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$1;->this$0:Lcom/parse/ParseCurrentConfigController;

    iget-object v2, p0, Lcom/parse/ParseCurrentConfigController$1;->val$config:Lcom/parse/ParseConfig;

    iput-object v2, v0, Lcom/parse/ParseCurrentConfigController;->currentConfig:Lcom/parse/ParseConfig;

    .line 36
    iget-object v0, p0, Lcom/parse/ParseCurrentConfigController$1;->this$0:Lcom/parse/ParseCurrentConfigController;

    iget-object v2, p0, Lcom/parse/ParseCurrentConfigController$1;->val$config:Lcom/parse/ParseConfig;

    invoke-virtual {v0, v2}, Lcom/parse/ParseCurrentConfigController;->saveToDisk(Lcom/parse/ParseConfig;)V

    .line 37
    monitor-exit v1

    .line 38
    const/4 v0, 0x0

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
