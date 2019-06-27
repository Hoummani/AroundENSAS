.class Lcom/parse/ParseUser$12$1$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$12$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$12$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$12$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseUser$12$1;

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1173
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1174
    :try_start_0
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v2, v2, Lcom/parse/ParseUser$12$1;->this$0:Lcom/parse/ParseUser$12;

    iget-object v2, v2, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$500(Lcom/parse/ParseUser;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v2, v2, Lcom/parse/ParseUser$12$1;->val$oldAnonymousData:Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$300(Lcom/parse/ParseUser;Ljava/util/Map;)V

    .line 1177
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1182
    :goto_0
    return-object v0

    .line 1179
    :cond_0
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1182
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 1170
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
