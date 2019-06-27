.class final Lcom/parse/ParseUser$12;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$logInWithTask:Lbolts/Continuation;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lbolts/Continuation;)V
    .locals 0

    .prologue
    .line 1146
    iput-object p1, p0, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$12;->val$authData:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseUser$12;->val$logInWithTask:Lbolts/Continuation;

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
            "Lcom/parse/ParseUser;",
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
    .line 1149
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;

    .line 1150
    .local v1, "user":Lcom/parse/ParseUser;
    if-eqz v1, :cond_2

    .line 1151
    iget-object v3, v1, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1152
    :try_start_0
    invoke-static {v1}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1153
    invoke-virtual {v1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    const-string v2, "anonymous"

    .line 1155
    invoke-static {v1, v2}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1156
    .local v0, "oldAnonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v1, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v4, Lcom/parse/ParseUser$12$1;

    invoke-direct {v4, p0, v1, v0}, Lcom/parse/ParseUser$12$1;-><init>(Lcom/parse/ParseUser$12;Lcom/parse/ParseUser;Ljava/util/Map;)V

    invoke-virtual {v2, v4}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    .line 1215
    .end local v0    # "oldAnonymousData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 1192
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseUser$12;->val$authData:Ljava/util/Map;

    invoke-virtual {v1, v2, v4}, Lcom/parse/ParseUser;->linkWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v2

    new-instance v4, Lcom/parse/ParseUser$12$2;

    invoke-direct {v4, p0, v1}, Lcom/parse/ParseUser$12$2;-><init>(Lcom/parse/ParseUser$12;Lcom/parse/ParseUser;)V

    .line 1193
    invoke-virtual {v2, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 1213
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1215
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseUser$12;->val$logInWithTask:Lbolts/Continuation;

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

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
    .line 1146
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
