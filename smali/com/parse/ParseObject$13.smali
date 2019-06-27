.class Lcom/parse/ParseObject$13;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
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

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$13;->val$operations:Lcom/parse/ParseOperationSet;

    iput-object p3, p0, Lcom/parse/ParseObject$13;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
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
    .line 1606
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    invoke-static {v2}, Lcom/parse/ParseObject;->access$800(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v1

    .line 1607
    .local v1, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1608
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    invoke-static {}, Lcom/parse/ParseObject;->access$900()Lcom/parse/ParseObjectController;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v3}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseObject$13;->val$operations:Lcom/parse/ParseOperationSet;

    iget-object v5, p0, Lcom/parse/ParseObject$13;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/parse/ParseObjectController;->saveAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1603
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$13;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
