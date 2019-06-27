.class Lcom/parse/OfflineStore$11;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/parse/OfflineStore$11;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$11;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p3, p0, Lcom/parse/OfflineStore$11;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 629
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 630
    .local v2, "jsonString":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 636
    new-instance v4, Lcom/parse/ParseException;

    const/16 v5, 0x78

    const-string v6, "Attempted to fetch an object offline which was never saved to the offline cache."

    invoke-direct {v4, v5, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v4}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v4

    .line 666
    :goto_0
    return-object v4

    .line 646
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 654
    .local v3, "offlineObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbolts/Task<Lcom/parse/ParseObject;>;>;"
    new-instance v4, Lcom/parse/OfflineStore$11$1;

    invoke-direct {v4, p0, v3}, Lcom/parse/OfflineStore$11$1;-><init>(Lcom/parse/OfflineStore$11;Ljava/util/Map;)V

    .line 664
    invoke-virtual {v4, v5}, Lcom/parse/OfflineStore$11$1;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/parse/ParseTraverser;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 666
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$11$2;

    invoke-direct {v5, p0, v1, v3}, Lcom/parse/OfflineStore$11$2;-><init>(Lcom/parse/OfflineStore$11;Lorg/json/JSONObject;Ljava/util/Map;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 647
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v3    # "offlineObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbolts/Task<Lcom/parse/ParseObject;>;>;"
    :catch_0
    move-exception v0

    .line 648
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v4

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
    .line 626
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
