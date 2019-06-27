.class Lcom/parse/OfflineStore$11$2;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$11;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$11;

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$offlineObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$11;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/OfflineStore$11;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/parse/OfflineStore$11$2;->this$1:Lcom/parse/OfflineStore$11;

    iput-object p2, p0, Lcom/parse/OfflineStore$11$2;->val$json:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$11$2;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 666
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$11$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v6, 0x0

    .line 669
    iget-object v0, p0, Lcom/parse/OfflineStore$11$2;->this$1:Lcom/parse/OfflineStore$11;

    iget-object v0, v0, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineStore$11$2;->this$1:Lcom/parse/OfflineStore$11;

    iget-object v1, v1, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/OfflineStore$11$2;->val$json:Lorg/json/JSONObject;

    new-instance v3, Lcom/parse/OfflineStore$OfflineDecoder;

    iget-object v4, p0, Lcom/parse/OfflineStore$11$2;->this$1:Lcom/parse/OfflineStore$11;

    iget-object v4, v4, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    iget-object v5, p0, Lcom/parse/OfflineStore$11$2;->val$offlineObjects:Ljava/util/Map;

    invoke-direct {v3, v4, v5, v6}, Lcom/parse/OfflineStore$OfflineDecoder;-><init>(Lcom/parse/OfflineStore;Ljava/util/Map;Lcom/parse/OfflineStore$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/ParseObject;->mergeREST(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    .line 670
    return-object v6
.end method
