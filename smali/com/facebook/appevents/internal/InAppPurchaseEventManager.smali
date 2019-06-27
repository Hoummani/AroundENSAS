.class Lcom/facebook/appevents/internal/InAppPurchaseEventManager;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.java"


# static fields
.field private static final AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final CACHE_CLEAR_TIME_LIMIT_SEC:I = 0x93a80

.field private static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final GET_PURCHASES:Ljava/lang/String; = "getPurchases"

.field private static final GET_PURCHASE_HISTORY:Ljava/lang/String; = "getPurchaseHistory"

.field private static final GET_SKU_DETAILS:Ljava/lang/String; = "getSkuDetails"

.field private static final INAPP:Ljava/lang/String; = "inapp"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final IN_APP_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field private static final IN_APP_BILLING_SERVICE_STUB:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final IS_BILLING_SUPPORTED:Ljava/lang/String; = "isBillingSupported"

.field private static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final LAST_CLEARED_TIME:Ljava/lang/String; = "LAST_CLEARED_TIME"

.field private static final LAST_LOGGED_TIME_SEC:Ljava/lang/String; = "LAST_LOGGED_TIME_SEC"

.field private static final MAX_QUERY_PURCHASE_NUM:I = 0x1e

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final PURCHASE_EXPIRE_TIME_SEC:I = 0xa8c0

.field private static final PURCHASE_INAPP_STORE:Ljava/lang/String; = "com.facebook.internal.PURCHASE"

.field private static final PURCHASE_STOP_QUERY_TIME_SEC:I = 0x4b0

.field private static final PURCHASE_SUBS_STORE:Ljava/lang/String; = "com.facebook.internal.PURCHASE_SUBS"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final SKU_DETAILS_STORE:Ljava/lang/String; = "com.facebook.internal.SKU_DETAILS"

.field private static final SKU_DETAIL_EXPIRE_TIME_SEC:I = 0xa8c0

.field private static final SUBSCRIPTION:Ljava/lang/String; = "subs"

.field private static final SUBSCRIPTION_HARTBEAT_INTERVAL:J = 0x15180L

.field private static final TAG:Ljava/lang/String;

.field private static final classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

.field private static final purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

.field private static final skuDetailSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const-class v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    .line 87
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.SKU_DETAILS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    .line 104
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.PURCHASE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    .line 108
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.PURCHASE_SUBS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    .line 107
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 114
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 115
    .local v0, "args":[Ljava/lang/Object;
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    const-string v2, "asInterface"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static clearSkuDetailsCache()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 607
    .local v2, "nowSec":J
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "LAST_CLEARED_TIME"

    invoke-interface {v4, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 608
    .local v0, "lastClearedTimeSec":J
    cmp-long v4, v0, v8

    if-nez v4, :cond_1

    .line 609
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LAST_CLEARED_TIME"

    .line 610
    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 611
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    sub-long v4, v2, v0

    const-wide/32 v6, 0x93a80

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 613
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 614
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "LAST_CLEARED_TIME"

    .line 615
    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 616
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static filterPurchasesInapp(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v2, "filteredPurchase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v12, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 479
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v4, v12, v14

    .line 480
    .local v4, "nowSec":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 482
    .local v6, "purchase":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 483
    .local v7, "purchaseJson":Lorg/json/JSONObject;
    const-string v13, "productId"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 484
    .local v11, "sku":Ljava/lang/String;
    const-string v13, "purchaseTime"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 485
    .local v8, "purchaseTimeMillis":J
    const-string v13, "purchaseToken"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, "purchaseToken":Ljava/lang/String;
    const-wide/16 v14, 0x3e8

    div-long v14, v8, v14

    sub-long v14, v4, v14

    const-wide/32 v16, 0xa8c0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_0

    .line 490
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, ""

    invoke-interface {v13, v11, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 492
    .local v3, "historyPurchaseToken":Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 496
    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    .end local v3    # "historyPurchaseToken":Ljava/lang/String;
    .end local v7    # "purchaseJson":Lorg/json/JSONObject;
    .end local v8    # "purchaseTimeMillis":J
    .end local v10    # "purchaseToken":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Lorg/json/JSONException;
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v14, "parsing purchase failure: "

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 503
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v6    # "purchase":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    return-object v2
.end method

.method private static getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 550
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 551
    .local v0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 566
    .end local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 556
    .end local v1    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 557
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 566
    .end local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 558
    .end local v1    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 559
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not available, please add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to the project."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 12
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 510
    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 511
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 545
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .local v2, "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 516
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v3, 0x0

    .line 517
    .local v3, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_1
    move v5, v6

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 539
    :goto_2
    invoke-virtual {p0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 540
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object v2, v1

    .line 545
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 517
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :sswitch_0
    const-string v7, "asInterface"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :sswitch_1
    const-string v5, "getSkuDetails"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string v5, "isBillingSupported"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_1

    :sswitch_3
    const-string v5, "getPurchases"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v9

    goto :goto_1

    :sswitch_4
    const-string v5, "getPurchaseHistory"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v10

    goto :goto_1

    .line 519
    :pswitch_0
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    .end local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local v4, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v4

    .line 520
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    .line 522
    :pswitch_1
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5

    .end local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v4

    .line 524
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    .line 526
    :pswitch_2
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .end local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v4

    .line 528
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_2

    .line 530
    :pswitch_3
    const/4 v5, 0x4

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    .end local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v4

    .line 532
    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto/16 :goto_2

    .line 534
    :pswitch_4
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Landroid/os/Bundle;

    aput-object v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v4

    .end local v4    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v3    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto/16 :goto_2

    .line 541
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " method not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 517
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b5af324 -> :sswitch_3
        -0x5677d643 -> :sswitch_2
        -0x42f2e6d9 -> :sswitch_0
        -0x236d29e3 -> :sswitch_4
        -0x222c05a5 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v13, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 428
    const/4 v5, 0x0

    .line 429
    .local v5, "continuationToken":Ljava/lang/String;
    const/16 v16, 0x0

    .line 430
    .local v16, "queriedPurchaseNum":I
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    .line 433
    .local v17, "reachTimeLimit":Ljava/lang/Boolean;
    :cond_0
    const/16 v20, 0x5

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0x6

    .line 434
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v4, v20

    const/16 v20, 0x1

    sget-object v21, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v21, v4, v20

    const/16 v20, 0x2

    aput-object p2, v4, v20

    const/16 v20, 0x3

    aput-object v5, v4, v20

    const/16 v20, 0x4

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    aput-object v21, v4, v20

    .line 435
    .local v4, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .line 437
    const-string v20, "com.android.vending.billing.IInAppBillingService"

    const-string v21, "getPurchaseHistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 439
    .local v19, "result":Ljava/lang/Object;
    if-eqz v19, :cond_2

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v22, 0x3e8

    div-long v10, v20, v22

    .local v10, "nowSec":J
    move-object/from16 v12, v19

    .line 441
    check-cast v12, Landroid/os/Bundle;

    .line 442
    .local v12, "purchaseDetails":Landroid/os/Bundle;
    const-string v20, "RESPONSE_CODE"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 443
    .local v18, "response":I
    if-nez v18, :cond_2

    .line 444
    const-string v20, "INAPP_PURCHASE_DATA_LIST"

    .line 445
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 447
    .local v8, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 449
    .local v6, "detail":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 450
    .local v7, "detailJSON":Lorg/json/JSONObject;
    const-string v21, "purchaseTime"

    .line 451
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v14, v22, v24

    .line 453
    .local v14, "purchaseTimeSec":J
    sub-long v22, v10, v14

    const-wide/16 v24, 0x4b0

    cmp-long v21, v22, v24

    if-lez v21, :cond_4

    .line 454
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 465
    .end local v6    # "detail":Ljava/lang/String;
    .end local v7    # "detailJSON":Lorg/json/JSONObject;
    .end local v14    # "purchaseTimeSec":J
    :cond_1
    const-string v20, "INAPP_CONTINUATION_TOKEN"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 468
    .end local v8    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "nowSec":J
    .end local v12    # "purchaseDetails":Landroid/os/Bundle;
    .end local v18    # "response":I
    :cond_2
    const/16 v20, 0x1e

    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    if-eqz v5, :cond_3

    .line 470
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 473
    .end local v4    # "args":[Ljava/lang/Object;
    .end local v5    # "continuationToken":Ljava/lang/String;
    .end local v16    # "queriedPurchaseNum":I
    .end local v17    # "reachTimeLimit":Ljava/lang/Boolean;
    .end local v19    # "result":Ljava/lang/Object;
    :cond_3
    return-object v13

    .line 457
    .restart local v4    # "args":[Ljava/lang/Object;
    .restart local v5    # "continuationToken":Ljava/lang/String;
    .restart local v6    # "detail":Ljava/lang/String;
    .restart local v7    # "detailJSON":Lorg/json/JSONObject;
    .restart local v8    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "nowSec":J
    .restart local v12    # "purchaseDetails":Landroid/os/Bundle;
    .restart local v14    # "purchaseTimeSec":J
    .restart local v16    # "queriedPurchaseNum":I
    .restart local v17    # "reachTimeLimit":Ljava/lang/Boolean;
    .restart local v18    # "response":I
    .restart local v19    # "result":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 458
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 460
    .end local v7    # "detailJSON":Lorg/json/JSONObject;
    .end local v14    # "purchaseTimeSec":J
    :catch_0
    move-exception v9

    .line 461
    .local v9, "e":Lorg/json/JSONException;
    sget-object v21, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v22, "parsing purchase failure: "

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getPurchaseHistoryInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v2, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    move-object v3, v2

    .line 418
    :goto_0
    return-object v3

    .line 406
    :cond_0
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    invoke-static {p0, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 407
    .local v0, "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    move-object v3, v2

    .line 408
    goto :goto_0

    .line 411
    :cond_1
    const-string v3, "getPurchaseHistory"

    invoke-static {v0, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 412
    .local v1, "method":Ljava/lang/reflect/Method;
    if-nez v1, :cond_2

    move-object v3, v2

    .line 413
    goto :goto_0

    .line 416
    :cond_2
    const-string v3, "inapp"

    invoke-static {p0, p1, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 418
    invoke-static {v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchasesInapp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_0
.end method

.method private static getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    .line 358
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v4, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-object v4

    .line 364
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "continuationToken":Ljava/lang/String;
    const/4 v5, 0x0

    .line 370
    .local v5, "queriedPurchaseNum":I
    :cond_2
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v9, v0, v8

    const/4 v8, 0x2

    aput-object p2, v0, v8

    aput-object v1, v0, v10

    .line 371
    .local v0, "args":[Ljava/lang/Object;
    const-string v8, "com.android.vending.billing.IInAppBillingService"

    const-string v9, "getPurchases"

    invoke-static {p0, v8, v9, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 374
    .local v7, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 376
    if-eqz v7, :cond_3

    move-object v3, v7

    .line 377
    check-cast v3, Landroid/os/Bundle;

    .line 378
    .local v3, "purchaseDetails":Landroid/os/Bundle;
    const-string v8, "RESPONSE_CODE"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 379
    .local v6, "response":I
    if-nez v6, :cond_3

    .line 380
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 381
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 382
    .local v2, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v5, v8

    .line 384
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 385
    const-string v8, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v2    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "purchaseDetails":Landroid/os/Bundle;
    .end local v6    # "response":I
    :cond_3
    const/16 v8, 0x1e

    if-ge v5, v8, :cond_0

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public static getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    const-string v0, "inapp"

    invoke-static {p0, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchasesInapp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/internal/SubscriptionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v1, "purchaseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/appevents/internal/SubscriptionType;>;"
    const-string v4, "subs"

    .line 274
    invoke-static {p0, p1, v4}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 276
    .local v2, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "purchase":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSubsType(Ljava/lang/String;)Lcom/facebook/appevents/internal/SubscriptionType;

    move-result-object v3

    .line 278
    .local v3, "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    sget-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->UNKNOWN:Lcom/facebook/appevents/internal/SubscriptionType;

    if-eq v3, v5, :cond_0

    .line 279
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    .end local v0    # "purchase":Ljava/lang/String;
    .end local v3    # "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    :cond_1
    return-object v1
.end method

.method public static getPurchasesSubsExpire(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 226
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v8, "expirePurchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v15, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v11

    .line 229
    .local v11, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 263
    :goto_0
    return-object v8

    .line 233
    :cond_0
    const-string v15, "subs"

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    .local v2, "currPurchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 236
    .local v3, "currSkuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 238
    .local v12, "purchase":Ljava/lang/String;
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v13, "purchaseJson":Lorg/json/JSONObject;
    const-string v16, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 240
    .end local v13    # "purchaseJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 241
    .local v4, "e":Lorg/json/JSONException;
    sget-object v16, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v17, "Error parsing purchase json"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 245
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v12    # "purchase":Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v10, "expireSkuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 247
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 248
    .local v14, "sku":Ljava/lang/String;
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 249
    invoke-interface {v10, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 253
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v14    # "sku":Ljava/lang/String;
    :cond_3
    sget-object v15, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 254
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_4
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 255
    .local v9, "expireSku":Ljava/lang/String;
    sget-object v16, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "expirePurchase":Ljava/lang/String;
    invoke-interface {v5, v9}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_4

    .line 258
    sget-object v16, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 261
    .end local v7    # "expirePurchase":Ljava/lang/String;
    .end local v9    # "expireSku":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "inAppBillingObj"    # Ljava/lang/Object;
    .param p3, "isSubscription"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v1

    .line 125
    .local v1, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "unresolvedSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "sku":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 128
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    .end local v0    # "sku":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v2, p2, p3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    return-object v1
.end method

.method private static getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "inAppBillingObj"    # Ljava/lang/Object;
    .param p3, "isSubscription"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x3

    .line 142
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v7, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-object v7

    .line 148
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v3, "querySkus":Landroid/os/Bundle;
    const-string v8, "ITEM_ID_LIST"

    invoke-virtual {v3, v8, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 151
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v9, v0, v8

    const/4 v9, 0x2

    if-eqz p3, :cond_2

    const-string v8, "subs"

    :goto_1
    aput-object v8, v0, v9

    aput-object v3, v0, v10

    .line 153
    .local v0, "args":[Ljava/lang/Object;
    const-string v8, "com.android.vending.billing.IInAppBillingService"

    const-string v9, "getSkuDetails"

    invoke-static {p0, v8, v9, p2, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    .local v5, "result":Ljava/lang/Object;
    if-eqz v5, :cond_0

    move-object v1, v5

    .line 157
    check-cast v1, Landroid/os/Bundle;

    .line 158
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "RESPONSE_CODE"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    .local v4, "response":I
    if-nez v4, :cond_0

    .line 160
    const-string v8, "DETAILS_LIST"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 161
    .local v6, "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 162
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 163
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v4    # "response":I
    .end local v5    # "result":Ljava/lang/Object;
    .end local v6    # "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v8, "inapp"

    goto :goto_1

    .line 167
    .restart local v0    # "args":[Ljava/lang/Object;
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "response":I
    .restart local v5    # "result":Ljava/lang/Object;
    .restart local v6    # "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static {v7}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->writeSkuDetailsToCache(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static getSubsType(Ljava/lang/String;)Lcom/facebook/appevents/internal/SubscriptionType;
    .locals 20
    .param p0, "purchase"    # Ljava/lang/String;

    .prologue
    .line 298
    const/4 v15, 0x0

    .line 299
    .local v15, "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    div-long v6, v16, v18

    .line 301
    .local v6, "nowSec":J
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    .local v11, "purchaseJson":Lorg/json/JSONObject;
    const-string v16, "productId"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "sku":Ljava/lang/String;
    sget-object v16, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    const-string v17, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 305
    .local v9, "oldPurchase":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_4

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 309
    .local v10, "oldPurchaseJson":Lorg/json/JSONObject;
    :goto_0
    const-string v16, "purchaseToken"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "purchaseToken"

    .line 310
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 311
    const-string v16, "purchaseTime"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 312
    .local v12, "purchaseTimeMillis":J
    const-wide/16 v16, 0x3e8

    div-long v16, v12, v16

    sub-long v16, v6, v16

    const-wide/32 v18, 0xa8c0

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->NEW:Lcom/facebook/appevents/internal/SubscriptionType;

    .line 317
    .end local v12    # "purchaseTimeMillis":J
    :cond_0
    :goto_1
    if-nez v15, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    .line 318
    const-string v16, "autoRenewing"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 319
    .local v8, "oldAutoRenewing":Z
    const-string v16, "autoRenewing"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 321
    .local v3, "newAutoRenewing":Z
    if-nez v3, :cond_6

    if-eqz v8, :cond_6

    .line 322
    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->CANCEL:Lcom/facebook/appevents/internal/SubscriptionType;

    .line 329
    .end local v3    # "newAutoRenewing":Z
    .end local v8    # "oldAutoRenewing":Z
    :cond_1
    :goto_2
    if-nez v15, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_2

    .line 330
    const-string v16, "LAST_LOGGED_TIME_SEC"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 332
    .local v4, "lastLoggedTimeSec":J
    sub-long v16, v6, v4

    const-wide/32 v18, 0x15180

    cmp-long v16, v16, v18

    if-lez v16, :cond_7

    .line 333
    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->HEARTBEAT:Lcom/facebook/appevents/internal/SubscriptionType;

    .line 339
    .end local v4    # "lastLoggedTimeSec":J
    :cond_2
    :goto_3
    sget-object v16, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_3

    .line 340
    const-string v16, "LAST_LOGGED_TIME_SEC"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 341
    sget-object v16, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 342
    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 343
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 350
    .end local v6    # "nowSec":J
    .end local v9    # "oldPurchase":Ljava/lang/String;
    .end local v10    # "oldPurchaseJson":Lorg/json/JSONObject;
    .end local v11    # "purchaseJson":Lorg/json/JSONObject;
    .end local v14    # "sku":Ljava/lang/String;
    .end local v15    # "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    :cond_3
    :goto_4
    return-object v15

    .line 305
    .restart local v6    # "nowSec":J
    .restart local v9    # "oldPurchase":Ljava/lang/String;
    .restart local v11    # "purchaseJson":Lorg/json/JSONObject;
    .restart local v14    # "sku":Ljava/lang/String;
    .restart local v15    # "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    :cond_4
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 347
    .end local v6    # "nowSec":J
    .end local v9    # "oldPurchase":Ljava/lang/String;
    .end local v11    # "purchaseJson":Lorg/json/JSONObject;
    .end local v14    # "sku":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Lorg/json/JSONException;
    sget-object v16, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v17, "parsing purchase failure: "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->UNKNOWN:Lcom/facebook/appevents/internal/SubscriptionType;

    goto :goto_4

    .line 312
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v6    # "nowSec":J
    .restart local v9    # "oldPurchase":Ljava/lang/String;
    .restart local v10    # "oldPurchaseJson":Lorg/json/JSONObject;
    .restart local v11    # "purchaseJson":Lorg/json/JSONObject;
    .restart local v12    # "purchaseTimeMillis":J
    .restart local v14    # "sku":Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->HEARTBEAT:Lcom/facebook/appevents/internal/SubscriptionType;

    goto :goto_1

    .line 323
    .end local v12    # "purchaseTimeMillis":J
    .restart local v3    # "newAutoRenewing":Z
    .restart local v8    # "oldAutoRenewing":Z
    :cond_6
    if-nez v8, :cond_1

    if-eqz v3, :cond_1

    .line 324
    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->RESTORE:Lcom/facebook/appevents/internal/SubscriptionType;

    goto :goto_2

    .line 335
    .end local v3    # "newAutoRenewing":Z
    .end local v8    # "oldAutoRenewing":Z
    .restart local v4    # "lastLoggedTimeSec":J
    :cond_7
    sget-object v15, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method private static invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 572
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 573
    .local v0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-object v3

    .line 577
    :cond_1
    invoke-static {v0, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 578
    .local v2, "methodObj":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 582
    if-eqz p3, :cond_2

    .line 583
    invoke-virtual {v0, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 587
    :cond_2
    :try_start_0
    invoke-virtual {v2, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 588
    :catch_0
    move-exception v1

    .line 589
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal access to method "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 591
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 589
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 593
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 594
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invocation target exception in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 596
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 594
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    if-nez p1, :cond_0

    .line 209
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 216
    :goto_0
    return-object v2

    .line 212
    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v4, 0x2

    aput-object p2, v0, v4

    .line 213
    .local v0, "args":[Ljava/lang/Object;
    const-string v4, "com.android.vending.billing.IInAppBillingService"

    const-string v5, "isBillingSupported"

    invoke-static {p0, v4, v5, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 216
    .local v1, "result":Ljava/lang/Object;
    if-eqz v1, :cond_1

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "result":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private static readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v4, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 180
    .local v0, "nowSec":J
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 181
    .local v3, "sku":Ljava/lang/String;
    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "rawString":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 183
    const-string v9, ";"

    const/4 v10, 0x2

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "splitted":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 185
    .local v6, "timeSec":J
    sub-long v10, v0, v6

    const-wide/32 v12, 0xa8c0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 186
    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-interface {v4, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 191
    .end local v2    # "rawString":Ljava/lang/String;
    .end local v3    # "sku":Ljava/lang/String;
    .end local v5    # "splitted":[Ljava/lang/String;
    .end local v6    # "timeSec":J
    :cond_1
    return-object v4
.end method

.method private static writeSkuDetailsToCache(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 197
    .local v2, "nowSec":J
    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 199
    .local v1, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 202
    .end local v1    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void
.end method
