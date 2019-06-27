.class Lcom/parse/CacheQueryController$4;
.super Ljava/lang/Object;
.source "CacheQueryController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CacheQueryController;->countFromCacheAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/CacheQueryController;

.field final synthetic val$cacheKey:Ljava/lang/String;

.field final synthetic val$state:Lcom/parse/ParseQuery$State;


# direct methods
.method constructor <init>(Lcom/parse/CacheQueryController;Ljava/lang/String;Lcom/parse/ParseQuery$State;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/CacheQueryController;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/parse/CacheQueryController$4;->this$0:Lcom/parse/CacheQueryController;

    iput-object p2, p0, Lcom/parse/CacheQueryController$4;->val$cacheKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/CacheQueryController$4;->val$state:Lcom/parse/ParseQuery$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v6, 0x78

    .line 109
    iget-object v2, p0, Lcom/parse/CacheQueryController$4;->val$cacheKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/CacheQueryController$4;->val$state:Lcom/parse/ParseQuery$State;

    invoke-virtual {v3}, Lcom/parse/ParseQuery$State;->maxCacheAge()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/parse/ParseKeyValueCache;->jsonFromKeyValueCache(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 110
    .local v0, "cached":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 111
    new-instance v2, Lcom/parse/ParseException;

    const-string v3, "results not cached"

    invoke-direct {v2, v6, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 114
    :cond_0
    :try_start_0
    const-string v2, "count"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Lcom/parse/ParseException;

    const-string v3, "the cache contains corrupted json"

    invoke-direct {v2, v6, v3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/parse/CacheQueryController$4;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
