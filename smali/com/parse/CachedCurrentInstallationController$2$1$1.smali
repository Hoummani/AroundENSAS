.class Lcom/parse/CachedCurrentInstallationController$2$1$1;
.super Ljava/lang/Object;
.source "CachedCurrentInstallationController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentInstallationController$2$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseInstallation;",
        "Lcom/parse/ParseInstallation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/CachedCurrentInstallationController$2$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentInstallationController$2$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/CachedCurrentInstallationController$2$1;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseInstallation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lcom/parse/ParseInstallation;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;

    .line 95
    .local v0, "current":Lcom/parse/ParseInstallation;
    if-nez v0, :cond_0

    .line 96
    const-class v1, Lcom/parse/ParseInstallation;

    invoke-static {v1}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    .end local v0    # "current":Lcom/parse/ParseInstallation;
    check-cast v0, Lcom/parse/ParseInstallation;

    .line 97
    .restart local v0    # "current":Lcom/parse/ParseInstallation;
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    invoke-static {v1}, Lcom/parse/CachedCurrentInstallationController;->access$000(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/InstallationId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->updateDeviceInfo(Lcom/parse/InstallationId;)V

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    invoke-static {v1}, Lcom/parse/CachedCurrentInstallationController;->access$200(Lcom/parse/CachedCurrentInstallationController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    iput-object v0, v1, Lcom/parse/CachedCurrentInstallationController;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 105
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    return-object v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/parse/CachedCurrentInstallationController$2$1$1;->this$2:Lcom/parse/CachedCurrentInstallationController$2$1;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2$1;->this$1:Lcom/parse/CachedCurrentInstallationController$2;

    iget-object v1, v1, Lcom/parse/CachedCurrentInstallationController$2;->this$0:Lcom/parse/CachedCurrentInstallationController;

    invoke-static {v1}, Lcom/parse/CachedCurrentInstallationController;->access$000(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/InstallationId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/InstallationId;->set(Ljava/lang/String;)V

    .line 100
    const-string v1, "com.parse.CachedCurrentInstallationController"

    const-string v2, "Successfully deserialized Installation object"

    invoke-static {v1, v2}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController$2$1$1;->then(Lbolts/Task;)Lcom/parse/ParseInstallation;

    move-result-object v0

    return-object v0
.end method
