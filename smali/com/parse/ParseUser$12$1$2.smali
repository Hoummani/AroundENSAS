.class Lcom/parse/ParseUser$12$1$2;
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
        "Ljava/lang/Void;",
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
    .line 1159
    iput-object p1, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 1162
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1164
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseUser;->access$600(Lcom/parse/ParseUser;)V

    .line 1165
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v2, v2, Lcom/parse/ParseUser$12$1;->this$0:Lcom/parse/ParseUser$12;

    iget-object v2, v2, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v3, v3, Lcom/parse/ParseUser$12$1;->this$0:Lcom/parse/ParseUser$12;

    iget-object v3, v3, Lcom/parse/ParseUser$12;->val$authData:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 1167
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$2;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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
    .line 1159
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12$1$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
