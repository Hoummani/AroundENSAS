.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    .line 60
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    .locals 12
    .param p0, "purchase"    # Ljava/lang/String;
    .param p1, "skuDetails"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    .local v3, "purchaseJSON":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    .local v4, "skuDetailsJSON":Lorg/json/JSONObject;
    new-instance v2, Landroid/os/Bundle;

    const/4 v6, 0x1

    invoke-direct {v2, v6}, Landroid/os/Bundle;-><init>(I)V

    .line 190
    .local v2, "params":Landroid/os/Bundle;
    const-string v6, "fb_iap_product_id"

    const-string v7, "productId"

    .line 192
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 190
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 193
    const-string v6, "fb_iap_purchase_time"

    const-string v7, "purchaseTime"

    .line 195
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 196
    const-string v6, "fb_iap_purchase_token"

    const-string v7, "purchaseToken"

    .line 198
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 196
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 199
    const-string v6, "fb_iap_package_name"

    const-string v7, "packageName"

    .line 201
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 199
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 202
    const-string v6, "fb_iap_product_title"

    const-string v7, "title"

    .line 204
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 205
    const-string v6, "fb_iap_product_description"

    const-string v7, "description"

    .line 207
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 205
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 209
    const-string v6, "type"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, "type":Ljava/lang/String;
    const-string v6, "fb_iap_product_type"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 213
    const-string v6, "subs"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 214
    const-string v6, "fb_iap_subs_auto_renewing"

    const-string v7, "autoRenewing"

    const/4 v8, 0x0

    .line 216
    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .line 214
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 218
    const-string v6, "fb_iap_subs_period"

    const-string v7, "subscriptionPeriod"

    .line 220
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 218
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 221
    const-string v6, "fb_free_trial_period"

    const-string v7, "freeTrialPeriod"

    .line 223
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 225
    const-string v6, "introductoryPriceCycles"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "introductoryPriceCycles":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    const-string v6, "fb_intro_price_amount_micros"

    const-string v7, "introductoryPriceAmountMicros"

    .line 229
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 227
    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 230
    const-string v6, "fb_intro_price_cycles"

    invoke-virtual {v2, v6, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 236
    .end local v1    # "introductoryPriceCycles":Ljava/lang/String;
    :cond_0
    new-instance v6, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    new-instance v7, Ljava/math/BigDecimal;

    const-string v8, "price_amount_micros"

    .line 237
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v8, "price_currency_code"

    .line 238
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "purchaseJSON":Lorg/json/JSONObject;
    .end local v4    # "skuDetailsJSON":Lorg/json/JSONObject;
    .end local v5    # "type":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Lorg/json/JSONException;
    sget-object v6, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v7, "Error parsing in-app subscription data."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isImplicitPurchaseLoggingEnabled()Z
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 175
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getIAPAutomaticLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 175
    :goto_0
    return v2

    .line 177
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static logActivateAppEvent()V
    .locals 5

    .prologue
    .line 63
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 64
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v1

    .line 66
    .local v1, "autoLogAppEvents":Z
    const-string v3, "context"

    invoke-static {v2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    if-eqz v1, :cond_0

    .line 68
    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 69
    check-cast v2, Landroid/app/Application;

    .end local v2    # "context":Landroid/content/Context;
    invoke-static {v2, v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    .restart local v2    # "context":Landroid/content/Context;
    :cond_1
    sget-object v3, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v4, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .locals 9
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "timeSpentInSeconds"    # J

    .prologue
    .line 83
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 84
    .local v2, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "appId":Ljava/lang/String;
    const-string v5, "context"

    invoke-static {v2, v5}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    const/4 v5, 0x0

    invoke-static {v1, v5}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v4

    .line 88
    .local v4, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v4, :cond_0

    .line 89
    invoke-virtual {v4}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-lez v5, :cond_0

    .line 91
    invoke-static {v2}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 92
    .local v0, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v3, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 93
    .local v3, "params":Landroid/os/Bundle;
    const-string v5, "fb_aa_time_spent_view_name"

    invoke-virtual {v3, v5, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 94
    const-string v5, "fb_aa_time_spent_on_view"

    long-to-double v6, p1

    invoke-virtual {v0, v5, v6, v7, v3}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 97
    .end local v0    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v3    # "params":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public static logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "purchase"    # Ljava/lang/String;
    .param p1, "skuDetails"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    move-result-object v0

    .line 109
    .local v0, "loggingParameters":Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    if-eqz v0, :cond_0

    .line 110
    sget-object v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    iget-object v2, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->purchaseAmount:Ljava/math/BigDecimal;

    iget-object v3, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->currency:Ljava/util/Currency;

    iget-object v4, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->param:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logPurchaseImplicitlyInternal(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static logPurchaseSubs(Lcom/facebook/appevents/internal/SubscriptionType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "subsType"    # Lcom/facebook/appevents/internal/SubscriptionType;
    .param p1, "purchase"    # Ljava/lang/String;
    .param p2, "skuDetails"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "applicationId":Ljava/lang/String;
    sget-object v3, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->$SwitchMap$com$facebook$appevents$internal$SubscriptionType:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/internal/SubscriptionType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    const-string v1, "SubscriptionRestore"

    .line 159
    .local v1, "eventName":Ljava/lang/String;
    :goto_1
    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    move-result-object v2

    .line 161
    .local v2, "loggingParameters":Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    if-eqz v2, :cond_0

    .line 162
    sget-object v3, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    iget-object v4, v2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->purchaseAmount:Ljava/math/BigDecimal;

    iget-object v5, v2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->currency:Ljava/util/Currency;

    iget-object v6, v2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->param:Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    goto :goto_0

    .line 136
    .end local v1    # "eventName":Ljava/lang/String;
    .end local v2    # "loggingParameters":Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    :pswitch_1
    const-string v1, "SubscriptionCancel"

    .line 137
    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 139
    .end local v1    # "eventName":Ljava/lang/String;
    :pswitch_2
    const-string v1, "SubscriptionHeartbeat"

    .line 140
    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 142
    .end local v1    # "eventName":Ljava/lang/String;
    :pswitch_3
    const-string v1, "SubscriptionExpire"

    .line 143
    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 145
    .end local v1    # "eventName":Ljava/lang/String;
    :pswitch_4
    const-string v3, "app_events_if_auto_log_subs"

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->getGateKeeperForKey(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const-string v1, "Subscribe"

    .line 150
    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
