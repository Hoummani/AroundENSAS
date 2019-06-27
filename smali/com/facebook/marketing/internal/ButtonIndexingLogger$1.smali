.class final Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;
.super Ljava/lang/Object;
.source "ButtonIndexingLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/marketing/internal/ButtonIndexingLogger;->logAllIndexing(Lorg/json/JSONObject;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activityName:Ljava/lang/String;

.field final synthetic val$tree:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;->val$activityName:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;->val$tree:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 148
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v5, "viewTree":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "applicationId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 152
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const-string v6, "screenname"

    iget-object v7, p0, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;->val$activityName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 154
    .local v4, "viewArray":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;->val$tree:Lorg/json/JSONObject;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 155
    const-string v6, "view"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "button_sampling"

    .line 156
    invoke-static {v6, v0, v1, v7}, Lcom/facebook/appevents/codeless/ViewIndexer;->buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 159
    .local v3, "request":Lcom/facebook/GraphRequest;
    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    .end local v1    # "applicationId":Ljava/lang/String;
    .end local v3    # "request":Lcom/facebook/GraphRequest;
    .end local v4    # "viewArray":Lorg/json/JSONArray;
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
