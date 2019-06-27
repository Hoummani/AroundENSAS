.class Lcom/parse/ParseInstallation$2;
.super Ljava/lang/Object;
.source "ParseInstallation.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseInstallation;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseInstallation;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$toAwait:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;Ljava/lang/String;Lbolts/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseInstallation;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iput-object p2, p0, Lcom/parse/ParseInstallation$2;->val$sessionToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseInstallation$2;->val$toAwait:Lbolts/Task;

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
    .line 152
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lcom/parse/ParseException;

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    .line 155
    .local v0, "errCode":I
    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    const/16 v1, 0x87

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    .line 156
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iget-object v2, v1, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 158
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    new-instance v1, Lcom/parse/ParseObject$State$Builder;

    iget-object v4, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    invoke-virtual {v4}, Lcom/parse/ParseInstallation;->getState()Lcom/parse/ParseObject$State;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/parse/ParseObject$State$Builder;-><init>(Lcom/parse/ParseObject$State;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/parse/ParseObject$State$Builder;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject$State$Builder;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Builder;->build()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/parse/ParseInstallation;->setState(Lcom/parse/ParseObject$State;)V

    .line 159
    iget-object v1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->markAllFieldsDirty()V

    .line 160
    iget-object v1, p0, Lcom/parse/ParseInstallation$2;->this$0:Lcom/parse/ParseInstallation;

    iget-object v3, p0, Lcom/parse/ParseInstallation$2;->val$sessionToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseInstallation$2;->val$toAwait:Lbolts/Task;

    invoke-static {v1, v3, v4}, Lcom/parse/ParseInstallation;->access$101(Lcom/parse/ParseInstallation;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object p1

    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    monitor-exit v2

    .line 164
    .end local v0    # "errCode":I
    :cond_1
    return-object p1

    .line 161
    .restart local v0    # "errCode":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 148
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
