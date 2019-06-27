.class Lcom/parse/ParseObject$26;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseObject$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 2039
    iput-object p1, p0, Lcom/parse/ParseObject$26;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$26;->val$sessionToken:Ljava/lang/String;

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
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2044
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/ParseObject$26;->this$0:Lcom/parse/ParseObject;

    iget-object v4, v3, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 2045
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject$26;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v3}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 2046
    .local v2, "state":Lcom/parse/ParseObject$State;
    iget-object v3, p0, Lcom/parse/ParseObject$26;->this$0:Lcom/parse/ParseObject;

    invoke-static {v3}, Lcom/parse/ParseObject;->access$800(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v1

    .line 2047
    .local v1, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2048
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 2049
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    invoke-static {}, Lcom/parse/ParseObject;->access$900()Lcom/parse/ParseObjectController;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseObject$26;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v3, v2, v4, v0}, Lcom/parse/ParseObjectController;->fetchAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 2047
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    .end local v1    # "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    .end local v2    # "state":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2039
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$26;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
