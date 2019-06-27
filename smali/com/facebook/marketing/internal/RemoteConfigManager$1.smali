.class final Lcom/facebook/marketing/internal/RemoteConfigManager$1;
.super Ljava/lang/Object;
.source "RemoteConfigManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/marketing/internal/RemoteConfigManager;->loadRemoteConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 54
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 55
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "applicationId":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v3

    .line 58
    .local v3, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {v3}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "advertiserId":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/facebook/marketing/internal/RemoteConfigManager;->access$000(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 62
    .local v4, "resultJSON":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 63
    invoke-static {v1, v4}, Lcom/facebook/marketing/internal/RemoteConfigManager;->access$100(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 66
    .end local v0    # "advertiserId":Ljava/lang/String;
    .end local v4    # "resultJSON":Lorg/json/JSONObject;
    :cond_0
    return-void
.end method
