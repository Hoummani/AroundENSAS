.class public Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"


# static fields
.field private static final BILLING_ACTIVITY_NAME:Ljava/lang/String; = "com.android.billingclient.api.ProxyBillingActivity"

.field private static final SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final TAG:Ljava/lang/String;

.field private static callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static hasBiillingActivity:Ljava/lang/Boolean;

.field private static hasBillingService:Ljava/lang/Boolean;

.field private static inAppBillingObj:Ljava/lang/Object;

.field private static intent:Landroid/content/Intent;

.field private static final isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    const-class v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    sput-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    .line 57
    sput-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;

    .prologue
    .line 44
    sput-object p0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchaseInapp(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchaseSubs(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static initializeIfNotInitialized()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 170
    .local v0, "ignored":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-void

    .line 79
    .end local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_0
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 80
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :try_start_1
    const-string v1, "com.android.billingclient.api.ProxyBillingActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 88
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    .restart local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    :goto_1
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->clearSkuDetailsCache()V

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    .line 96
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->intent:Landroid/content/Intent;

    .line 98
    new-instance v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;

    invoke-direct {v1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;-><init>()V

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->serviceConnection:Landroid/content/ServiceConnection;

    .line 112
    new-instance v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {v1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;-><init>()V

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_0

    .line 81
    .end local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 82
    .restart local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    goto :goto_0

    .line 89
    .end local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 90
    .restart local v0    # "ignored":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private static logPurchaseInapp(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 211
    :cond_0
    return-void

    .line 189
    :cond_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v4, "purchaseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v7, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    .local v2, "purchase":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v3, "purchaseJson":Lorg/json/JSONObject;
    const-string v9, "productId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "sku":Ljava/lang/String;
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    .end local v3    # "purchaseJson":Lorg/json/JSONObject;
    .end local v5    # "sku":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v10, "Error parsing in-app purchase data."

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p0, v7, v8, v9}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v6

    .line 207
    .local v6, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 209
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 208
    invoke-static {v8, v9}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static logPurchaseSubs(Landroid/content/Context;Ljava/util/Map;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/internal/SubscriptionType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "purchasesSubsTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/appevents/internal/SubscriptionType;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 242
    :cond_0
    return-void

    .line 220
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v7, "skuPurchaseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v6, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, "purchase":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v2, "purchaseJson":Lorg/json/JSONObject;
    const-string v10, "productId"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "sku":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v2    # "purchaseJson":Lorg/json/JSONObject;
    .end local v3    # "sku":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Lorg/json/JSONException;
    sget-object v10, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v11, "Error parsing in-app purchase data."

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 233
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "purchase":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    const/4 v10, 0x1

    invoke-static {p0, v6, v9, v10}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v5

    .line 236
    .local v5, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 237
    .restart local v3    # "sku":Ljava/lang/String;
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .restart local v1    # "purchase":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 239
    .local v4, "skuDetail":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/appevents/internal/SubscriptionType;

    .line 240
    .local v8, "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    invoke-static {v8, v1, v4}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseSubs(Lcom/facebook/appevents/internal/SubscriptionType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static startTracking()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_1

    .line 182
    .local v1, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 176
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    .restart local v1    # "context":Landroid/content/Context;
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 178
    check-cast v0, Landroid/app/Application;

    .line 179
    .local v0, "application":Landroid/app/Application;
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 180
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->intent:Landroid/content/Intent;

    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0
.end method

.method public static update()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->initializeIfNotInitialized()V

    .line 65
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->startTracking()V

    goto :goto_0
.end method
