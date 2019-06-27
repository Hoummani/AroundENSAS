.class public Lorg/apache/cordova/facebook/ConnectPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ConnectPlugin.java"


# static fields
.field private static final INVALID_ERROR_CODE:I = -0x2

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private callbackManager:Lcom/facebook/CallbackManager;

.field private gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

.field private graphPath:Ljava/lang/String;

.field private lastGraphContext:Lorg/apache/cordova/CallbackContext;

.field private logger:Lcom/facebook/appevents/AppEventsLogger;

.field private loginContext:Lorg/apache/cordova/CallbackContext;

.field private messageDialog:Lcom/facebook/share/widget/MessageDialog;

.field private shareDialog:Lcom/facebook/share/widget/ShareDialog;

.field private showDialogContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lorg/apache/cordova/facebook/ConnectPlugin$1;

    invoke-direct {v0}, Lorg/apache/cordova/facebook/ConnectPlugin$1;-><init>()V

    sput-object v0, Lorg/apache/cordova/facebook/ConnectPlugin;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 70
    const-string v0, "ConnectPlugin"

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->TAG:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    .line 75
    iput-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 76
    iput-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$102(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$200(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/facebook/ConnectPlugin;Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;
    .param p1, "x1"    # Lcom/facebook/FacebookException;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/facebook/ConnectPlugin;->handleError(Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/cordova/facebook/ConnectPlugin;)Lorg/apache/cordova/CallbackContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/CallbackContext;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;
    .param p1, "x1"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    return-object p1
.end method

.method static synthetic access$502(Lorg/apache/cordova/facebook/ConnectPlugin;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/facebook/ConnectPlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    return-object p1
.end method

.method private buildContent(Ljava/util/Map;)Lcom/facebook/share/model/ShareLinkContent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/share/model/ShareLinkContent;"
        }
    .end annotation

    .prologue
    .line 728
    .local p1, "paramBundle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 729
    .local v0, "builder":Lcom/facebook/share/model/ShareLinkContent$Builder;
    const-string v1, "href"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    const-string v1, "href"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 731
    :cond_0
    const-string v1, "caption"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    const-string v1, "caption"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 733
    :cond_1
    const-string v1, "description"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    const-string v1, "description"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 735
    :cond_2
    const-string v1, "link"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 736
    const-string v1, "link"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 737
    :cond_3
    const-string v1, "picture"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 738
    const-string v1, "picture"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 739
    :cond_4
    const-string v1, "quote"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 740
    const-string v1, "quote"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setQuote(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 741
    :cond_5
    const-string v1, "hashtag"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 742
    new-instance v2, Lcom/facebook/share/model/ShareHashtag$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareHashtag$Builder;-><init>()V

    const-string v1, "hashtag"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setShareHashtag(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 744
    :cond_6
    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v1

    return-object v1
.end method

.method private enableHybridAppEvents()V
    .locals 8

    .prologue
    .line 712
    :try_start_0
    iget-object v5, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 713
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 714
    .local v4, "res":Landroid/content/res/Resources;
    const-string v5, "fb_hybrid_app_events"

    const-string v6, "bool"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 715
    .local v3, "enableHybridAppEventsId":I
    if-eqz v3, :cond_0

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    .line 716
    .local v2, "enableHybridAppEvents":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 717
    iget-object v5, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;

    invoke-static {v5, v0}, Lcom/facebook/appevents/AppEventsLogger;->augmentWebView(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 718
    const-string v5, "ConnectPlugin"

    const-string v6, "FB Hybrid app events are enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v2    # "enableHybridAppEvents":Z
    .end local v3    # "enableHybridAppEventsId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :goto_1
    return-void

    .line 715
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v3    # "enableHybridAppEventsId":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 720
    .restart local v2    # "enableHybridAppEvents":Z
    :cond_1
    const-string v5, "ConnectPlugin"

    const-string v6, "FB Hybrid app events are not enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 722
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v2    # "enableHybridAppEvents":Z
    .end local v3    # "enableHybridAppEventsId":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "ConnectPlugin"

    const-string v6, "FB Hybrid app events cannot be enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private executeDialog(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 24
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v19, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 343
    .local v14, "method":Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 348
    .local v18, "parameters":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 349
    .local v10, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 350
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 351
    .local v13, "key":Ljava/lang/String;
    const-string v22, "method"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 353
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v14

    goto :goto_1

    .line 344
    .end local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v18    # "parameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 345
    .local v8, "e":Lorg/json/JSONException;
    new-instance v18, Lorg/json/JSONObject;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONObject;-><init>()V

    .restart local v18    # "parameters":Lorg/json/JSONObject;
    goto :goto_0

    .line 354
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v10    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v13    # "key":Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 355
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v22, "ConnectPlugin"

    const-string v23, "Nonstring method parameter provided to dialog"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 359
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 360
    :catch_2
    move-exception v8

    .line 362
    .restart local v8    # "e":Lorg/json/JSONException;
    const-string v22, "ConnectPlugin"

    const-string v23, "Non-string parameter provided to dialog discarded"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    .end local v8    # "e":Lorg/json/JSONException;
    .end local v13    # "key":Ljava/lang/String;
    :cond_1
    if-nez v14, :cond_2

    .line 368
    const-string v22, "No method provided"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 515
    :goto_2
    return-void

    .line 369
    :cond_2
    const-string v22, "apprequests"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 371
    invoke-static {}, Lcom/facebook/share/widget/GameRequestDialog;->canShow()Z

    move-result v22

    if-nez v22, :cond_3

    .line 372
    const-string v22, "Cannot show dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 375
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 376
    new-instance v20, Lorg/apache/cordova/PluginResult;

    sget-object v22, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 377
    .local v20, "pr":Lorg/apache/cordova/PluginResult;
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 380
    new-instance v6, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {v6}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    .line 381
    .local v6, "builder":Lcom/facebook/share/model/GameRequestContent$Builder;
    const-string v22, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 382
    const-string v22, "message"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 383
    :cond_4
    const-string v22, "to"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 384
    const-string v22, "to"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTo(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 385
    :cond_5
    const-string v22, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 386
    const-string v22, "data"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 387
    :cond_6
    const-string v22, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 388
    const-string v22, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 389
    :cond_7
    const-string v22, "objectId"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 390
    const-string v22, "objectId"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    .line 391
    :cond_8
    const-string v22, "actionType"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 393
    :try_start_3
    const-string v22, "actionType"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/facebook/share/model/GameRequestContent$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$ActionType;

    move-result-object v5

    .line 394
    .local v5, "actionType":Lcom/facebook/share/model/GameRequestContent$ActionType;
    invoke-virtual {v6, v5}, Lcom/facebook/share/model/GameRequestContent$Builder;->setActionType(Lcom/facebook/share/model/GameRequestContent$ActionType;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 399
    .end local v5    # "actionType":Lcom/facebook/share/model/GameRequestContent$ActionType;
    :cond_9
    :goto_3
    const-string v22, "filters"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 401
    :try_start_4
    const-string v22, "filters"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Lcom/facebook/share/model/GameRequestContent$Filters;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Filters;

    move-result-object v9

    .line 402
    .local v9, "filters":Lcom/facebook/share/model/GameRequestContent$Filters;
    invoke-virtual {v6, v9}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    .line 409
    .end local v9    # "filters":Lcom/facebook/share/model/GameRequestContent$Filters;
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/share/widget/GameRequestDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 395
    :catch_3
    move-exception v8

    .line 396
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "ConnectPlugin"

    const-string v23, "Discarding invalid argument actionType"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 403
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v8

    .line 404
    .restart local v8    # "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "ConnectPlugin"

    const-string v23, "Discarding invalid argument filters"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 413
    .end local v6    # "builder":Lcom/facebook/share/model/GameRequestContent$Builder;
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v20    # "pr":Lorg/apache/cordova/PluginResult;
    :cond_b
    const-string v22, "share"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_c

    const-string v22, "feed"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 414
    :cond_c
    const-class v22, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static/range {v22 .. v22}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 415
    const-string v22, "Cannot show dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 418
    :cond_d
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 419
    new-instance v20, Lorg/apache/cordova/PluginResult;

    sget-object v22, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 420
    .restart local v20    # "pr":Lorg/apache/cordova/PluginResult;
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 423
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->buildContent(Ljava/util/Map;)Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v7

    .line 425
    .local v7, "content":Lcom/facebook/share/model/ShareLinkContent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 428
    .end local v7    # "content":Lcom/facebook/share/model/ShareLinkContent;
    .end local v20    # "pr":Lorg/apache/cordova/PluginResult;
    :cond_e
    const-string v22, "share_open_graph"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_16

    .line 429
    const-class v22, Lcom/facebook/share/model/ShareOpenGraphContent;

    invoke-static/range {v22 .. v22}, Lcom/facebook/share/widget/ShareDialog;->canShow(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 430
    const-string v22, "Cannot show dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 433
    :cond_f
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 434
    new-instance v20, Lorg/apache/cordova/PluginResult;

    sget-object v22, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 435
    .restart local v20    # "pr":Lorg/apache/cordova/PluginResult;
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 438
    const-string v22, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    .line 439
    const-string v22, "Missing required parameter \'action\'"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 442
    :cond_10
    const-string v22, "object"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 443
    const-string v22, "Missing required parameter \'object\'."

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 446
    :cond_11
    new-instance v15, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    invoke-direct {v15}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;-><init>()V

    .line 447
    .local v15, "objectBuilder":Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    new-instance v12, Lorg/json/JSONObject;

    const-string v22, "object"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 449
    .local v12, "jObject":Lorg/json/JSONObject;
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 451
    .local v16, "objectKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const-string v17, ""

    .line 453
    .local v17, "objectType":Ljava/lang/String;
    :cond_12
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_13

    .line 454
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 455
    .restart local v13    # "key":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 457
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v15, v13, v0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 459
    const-string v22, "og:type"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 460
    move-object/from16 v17, v21

    goto :goto_5

    .line 463
    .end local v13    # "key":Ljava/lang/String;
    .end local v21    # "value":Ljava/lang/String;
    :cond_13
    const-string v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    .line 464
    const-string v22, "Missing required object parameter \'og:type\'"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 467
    :cond_14
    new-instance v2, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    invoke-direct {v2}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;-><init>()V

    .line 468
    .local v2, "actionBuilder":Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    const-string v22, "action"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->setActionType(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    .line 470
    const-string v22, "action_properties"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 471
    new-instance v11, Lorg/json/JSONObject;

    const-string v22, "action_properties"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 473
    .local v11, "jActionProperties":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 475
    .local v4, "actionKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_15

    .line 476
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 478
    .local v3, "actionKey":Ljava/lang/String;
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    goto :goto_6

    .line 482
    .end local v3    # "actionKey":Ljava/lang/String;
    .end local v4    # "actionKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v11    # "jActionProperties":Lorg/json/JSONObject;
    :cond_15
    invoke-virtual {v15}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 484
    new-instance v22, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    invoke-direct/range {v22 .. v22}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;-><init>()V

    .line 485
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setPreviewPropertyName(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v22

    .line 486
    invoke-virtual {v2}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->setAction(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphContent$Builder;

    move-result-object v7

    .line 488
    .local v7, "content":Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    move-object/from16 v22, v0

    invoke-virtual {v7}, Lcom/facebook/share/model/ShareOpenGraphContent$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphContent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/share/widget/ShareDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 490
    .end local v2    # "actionBuilder":Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    .end local v7    # "content":Lcom/facebook/share/model/ShareOpenGraphContent$Builder;
    .end local v12    # "jObject":Lorg/json/JSONObject;
    .end local v15    # "objectBuilder":Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    .end local v16    # "objectKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v17    # "objectType":Ljava/lang/String;
    .end local v20    # "pr":Lorg/apache/cordova/PluginResult;
    :cond_16
    const-string v22, "send"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 491
    const-class v22, Lcom/facebook/share/model/ShareLinkContent;

    invoke-static/range {v22 .. v22}, Lcom/facebook/share/widget/MessageDialog;->canShow(Ljava/lang/Class;)Z

    move-result v22

    if-nez v22, :cond_17

    .line 492
    const-string v22, "Cannot show dialog"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 495
    :cond_17
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    .line 496
    new-instance v20, Lorg/apache/cordova/PluginResult;

    sget-object v22, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 497
    .restart local v20    # "pr":Lorg/apache/cordova/PluginResult;
    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->showDialogContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 500
    new-instance v6, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v6}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    .line 501
    .local v6, "builder":Lcom/facebook/share/model/ShareLinkContent$Builder;
    const-string v22, "link"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_18

    .line 502
    const-string v22, "link"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    .line 503
    :cond_18
    const-string v22, "caption"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_19

    .line 504
    const-string v22, "caption"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 505
    :cond_19
    const-string v22, "picture"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    .line 506
    const-string v22, "picture"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 507
    :cond_1a
    const-string v22, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    .line 508
    const-string v22, "description"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    .line 510
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/facebook/ConnectPlugin;->messageDialog:Lcom/facebook/share/widget/MessageDialog;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/facebook/share/widget/MessageDialog;->show(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 513
    .end local v6    # "builder":Lcom/facebook/share/model/ShareLinkContent$Builder;
    .end local v20    # "pr":Lorg/apache/cordova/PluginResult;
    :cond_1c
    const-string v22, "Unsupported dialog method."

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private executeGetDeferredApplink(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 319
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/facebook/ConnectPlugin$7;

    invoke-direct {v1, p0, p2}, Lorg/apache/cordova/facebook/ConnectPlugin$7;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v0, v1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    .line 335
    return-void
.end method

.method private executeGraph(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 15
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 518
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    .line 519
    move-object/from16 v5, p2

    .line 520
    .local v5, "graphContext":Lorg/apache/cordova/CallbackContext;
    new-instance v10, Lorg/apache/cordova/PluginResult;

    sget-object v13, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v10, v13}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 521
    .local v10, "pr":Lorg/apache/cordova/PluginResult;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 522
    invoke-virtual {v5, v10}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 524
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    .line 525
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 527
    .local v2, "arr":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/HashSet;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    invoke-direct {v9, v13}, Ljava/util/HashSet;-><init>(I)V

    .line 528
    .local v9, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_0

    .line 529
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 528
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 532
    :cond_0
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v13

    if-nez v13, :cond_1

    .line 533
    invoke-direct {p0, v5}, Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V

    .line 588
    :goto_1
    return-void

    .line 537
    :cond_1
    const/4 v11, 0x0

    .line 538
    .local v11, "publishPermissions":Z
    const/4 v12, 0x0

    .line 539
    .local v12, "readPermissions":Z
    const/4 v4, 0x0

    .line 541
    .local v4, "declinedPermission":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    .line 542
    .local v1, "accessToken":Lcom/facebook/AccessToken;
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13, v9}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 543
    invoke-direct {p0, v5}, Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V

    goto :goto_1

    .line 547
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v3

    .line 550
    .local v3, "declined":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 551
    .local v8, "permission":Ljava/lang/String;
    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 552
    move-object v4, v8

    .line 568
    .end local v8    # "permission":Ljava/lang/String;
    :cond_4
    :goto_2
    if-eqz v4, :cond_7

    .line 569
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This request needs declined permission: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 556
    .restart local v8    # "permission":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v8}, Lorg/apache/cordova/facebook/ConnectPlugin;->isPublishPermission(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 557
    const/4 v11, 0x1

    .line 563
    :goto_3
    if-eqz v11, :cond_3

    if-eqz v12, :cond_3

    goto :goto_2

    .line 559
    :cond_6
    const/4 v12, 0x1

    goto :goto_3

    .line 573
    .end local v8    # "permission":Ljava/lang/String;
    :cond_7
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    .line 574
    const-string v13, "Cannot ask for both read and publish permissions."

    invoke-virtual {v5, v13}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 578
    :cond_8
    iget-object v13, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v13, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 579
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v7

    .line 581
    .local v7, "loginManager":Lcom/facebook/login/LoginManager;
    if-eqz v11, :cond_9

    .line 583
    iget-object v13, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v13}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v7, v13, v9}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_1

    .line 586
    :cond_9
    iget-object v13, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v13}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v7, v13, v9}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private executeLogEvent(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 13
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x1

    .line 591
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 593
    const-string v7, "Invalid arguments"

    invoke-virtual {p2, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "eventName":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 599
    iget-object v7, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v7, v2}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 605
    :cond_2
    invoke-virtual {p1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 606
    .local v6, "params":Lorg/json/JSONObject;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 607
    .local v5, "parameters":Landroid/os/Bundle;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 609
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 610
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 613
    .local v4, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 614
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v5, v4, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 615
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 617
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "ConnectPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Type in AppEvent parameters was not String for key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :try_start_1
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 620
    .local v8, "value":I
    invoke-virtual {v5, v4, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 621
    .end local v8    # "value":I
    :catch_1
    move-exception v1

    .line 623
    .local v1, "e2":Lorg/json/JSONException;
    const-string v7, "ConnectPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported type in AppEvent parameters for key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 628
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e2":Lorg/json/JSONException;
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ne v7, v12, :cond_4

    .line 629
    iget-object v7, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v7, v2, v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 630
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 633
    :cond_4
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/4 v10, 0x3

    if-ne v7, v10, :cond_0

    .line 634
    invoke-virtual {p1, v12}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v8

    .line 635
    .local v8, "value":D
    iget-object v7, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-virtual {v7, v2, v8, v9, v5}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 636
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0
.end method

.method private executeLogin(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 9
    .param p1, "args"    # Lorg/json/JSONArray;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 641
    const-string v6, "ConnectPlugin"

    const-string v7, "login FB"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput-object v8, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->lastGraphContext:Lorg/apache/cordova/CallbackContext;

    .line 647
    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 649
    .local v2, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 650
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 654
    :cond_0
    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    .line 655
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 656
    .local v3, "pr":Lorg/apache/cordova/PluginResult;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 657
    iget-object v6, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v6, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 660
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result v6

    if-nez v6, :cond_1

    .line 662
    iget-object v6, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 665
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 708
    :goto_1
    return-void

    .line 670
    :cond_1
    const/4 v4, 0x0

    .line 671
    .local v4, "publishPermissions":Z
    const/4 v5, 0x0

    .line 673
    .local v5, "readPermissions":Z
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 675
    const/4 v5, 0x1

    .line 680
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 681
    .local v1, "permission":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->isPublishPermission(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 682
    const/4 v4, 0x1

    .line 687
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 692
    .end local v1    # "permission":Ljava/lang/String;
    :cond_4
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    .line 693
    iget-object v6, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    const-string v7, "Cannot ask for both read and publish permissions."

    invoke-virtual {v6, v7}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 694
    iput-object v8, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->loginContext:Lorg/apache/cordova/CallbackContext;

    goto :goto_1

    .line 684
    .restart local v1    # "permission":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    goto :goto_2

    .line 699
    .end local v1    # "permission":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 701
    if-eqz v4, :cond_7

    .line 703
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_1

    .line 706
    :cond_7
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v7}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_1
.end method

.method private handleError(Lcom/facebook/FacebookException;Lorg/apache/cordova/CallbackContext;)V
    .locals 5
    .param p1, "exception"    # Lcom/facebook/FacebookException;
    .param p2, "context"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 753
    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 754
    const-string v2, "ConnectPlugin"

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Facebook error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "errMsg":Ljava/lang/String;
    const/4 v1, -0x2

    .line 759
    .local v1, "errorCode":I
    instance-of v2, p1, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v2, :cond_2

    .line 760
    const-string v0, "User cancelled dialog"

    .line 761
    const/16 v1, 0x1069

    .line 767
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 768
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->getErrorResponse(Ljava/lang/Exception;Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 772
    :goto_1
    return-void

    .line 762
    :cond_2
    instance-of v2, p1, Lcom/facebook/FacebookDialogException;

    if-eqz v2, :cond_1

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialog error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_3
    const-string v2, "ConnectPlugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error already sent so no context, msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private hasAccessToken()Z
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPublishPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 821
    if-eqz p1, :cond_1

    const-string v0, "publish"

    .line 822
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    .line 823
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/apache/cordova/facebook/ConnectPlugin;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    .line 824
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 821
    :goto_0
    return v0

    .line 824
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeGraphCall(Lorg/apache/cordova/CallbackContext;)V
    .locals 14
    .param p1, "graphContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 777
    :try_start_0
    iget-object v10, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 782
    :goto_0
    iget-object v10, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->graphPath:Ljava/lang/String;

    const-string v11, "\\?"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 783
    .local v8, "urlParts":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v1, v8, v10

    .line 784
    .local v1, "graphAction":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v10

    new-instance v11, Lorg/apache/cordova/facebook/ConnectPlugin$8;

    invoke-direct {v11, p0, p1}, Lorg/apache/cordova/facebook/ConnectPlugin$8;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V

    invoke-static {v10, v1, v11}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v2

    .line 798
    .local v2, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 800
    .local v4, "params":Landroid/os/Bundle;
    array-length v10, v8

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 801
    const/4 v10, 0x1

    aget-object v10, v8, v10

    const-string v11, "&"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 803
    .local v5, "queries":[Ljava/lang/String;
    array-length v11, v5

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    aget-object v6, v5, v10

    .line 804
    .local v6, "query":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 805
    .local v7, "splitPoint":I
    if-lez v7, :cond_0

    .line 806
    const/4 v12, 0x0

    invoke-virtual {v6, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 807
    .local v3, "key":Ljava/lang/String;
    add-int/lit8 v12, v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 808
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v4, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .end local v3    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 778
    .end local v1    # "graphAction":Ljava/lang/String;
    .end local v2    # "graphRequest":Lcom/facebook/GraphRequest;
    .end local v4    # "params":Landroid/os/Bundle;
    .end local v5    # "queries":[Ljava/lang/String;
    .end local v6    # "query":Ljava/lang/String;
    .end local v7    # "splitPoint":I
    .end local v8    # "urlParts":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 813
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "graphAction":Ljava/lang/String;
    .restart local v2    # "graphRequest":Lcom/facebook/GraphRequest;
    .restart local v4    # "params":Landroid/os/Bundle;
    .restart local v8    # "urlParts":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 814
    invoke-virtual {v2}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 815
    return-void
.end method

.method private static wrapObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 928
    if-nez p0, :cond_1

    .line 929
    sget-object p0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 962
    .end local p0    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 931
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_0

    instance-of v0, p0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 934
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 938
    :try_start_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 939
    new-instance v0, Lorg/json/JSONArray;

    check-cast p0, Ljava/util/Collection;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    move-object p0, v0

    goto :goto_0

    .line 940
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 941
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    goto :goto_0

    .line 943
    :cond_3
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 944
    new-instance v0, Lorg/json/JSONObject;

    check-cast p0, Ljava/util/Map;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object p0, v0

    goto :goto_0

    .line 946
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 958
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 960
    :catch_0
    move-exception v0

    .line 962
    :cond_5
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 6
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    const-string v4, "login"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 249
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeLogin(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 314
    :goto_0
    return v2

    .line 252
    :cond_0
    const-string v4, "logout"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/login/LoginManager;->logOut()V

    .line 255
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 257
    :cond_1
    const-string v3, "No valid session found, must call init and login before logout."

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v4, "getLoginStatus"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    invoke-virtual {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->getResponse()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 265
    :cond_3
    const-string v4, "getAccessToken"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 267
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_4
    const-string v3, "Session not open."

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_5
    const-string v4, "logEvent"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 275
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeLogEvent(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 278
    :cond_6
    const-string v4, "logPurchase"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 283
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 284
    const-string v3, "Invalid arguments"

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 287
    :cond_7
    new-instance v1, Ljava/math/BigDecimal;

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, "value":Ljava/math/BigDecimal;
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "currency":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/facebook/appevents/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 290
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 293
    .end local v0    # "currency":Ljava/lang/String;
    .end local v1    # "value":Ljava/math/BigDecimal;
    :cond_8
    const-string v4, "showDialog"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 294
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeDialog(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 297
    :cond_9
    const-string v4, "graphApi"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 298
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeGraph(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 301
    :cond_a
    const-string v4, "getDeferredApplink"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 302
    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/facebook/ConnectPlugin;->executeGetDeferredApplink(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 304
    :cond_b
    const-string v4, "activateApp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 305
    iget-object v3, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lorg/apache/cordova/facebook/ConnectPlugin$6;

    invoke-direct {v4, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$6;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_c
    move v2, v3

    .line 314
    goto/16 :goto_0
.end method

.method public getErrorResponse(Ljava/lang/Exception;Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 4
    .param p1, "error"    # Ljava/lang/Exception;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 887
    instance-of v2, p1, Lcom/facebook/FacebookServiceException;

    if-eqz v2, :cond_0

    .line 888
    check-cast p1, Lcom/facebook/FacebookServiceException;

    .end local p1    # "error":Ljava/lang/Exception;
    invoke-virtual {p1}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/cordova/facebook/ConnectPlugin;->getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;

    move-result-object v2

    .line 912
    :goto_0
    return-object v2

    .line 891
    .restart local p1    # "error":Ljava/lang/Exception;
    :cond_0
    const-string v1, "{"

    .line 893
    .local v1, "response":Ljava/lang/String;
    instance-of v2, p1, Lcom/facebook/FacebookDialogException;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 894
    check-cast v2, Lcom/facebook/FacebookDialogException;

    invoke-virtual {v2}, Lcom/facebook/FacebookDialogException;->getErrorCode()I

    move-result p3

    .line 897
    :cond_1
    const/4 v2, -0x2

    if-eq p3, v2, :cond_2

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"errorCode\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 901
    :cond_2
    if-nez p2, :cond_3

    .line 902
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 905
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"errorMessage\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 908
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 912
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"errorCode\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 863
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"errorType\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\",\"errorMessage\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 865
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 867
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"errorUserMessage\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 872
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"errorUserTitle\": \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorUserTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 875
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 878
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :goto_0
    return-object v2

    .line 879
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 883
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getResponse()Lorg/json/JSONObject;
    .locals 10

    .prologue
    .line 833
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 834
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->hasAccessToken()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 835
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 836
    .local v5, "today":Ljava/util/Date;
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 837
    .local v2, "expiresTimeInterval":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "{\"status\": \"connected\",\"authResponse\": {\"accessToken\": \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 840
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\"expiresIn\": \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v8, 0x0

    .line 841
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\",\"session_key\": true,\"sig\": \"...\",\"userID\": \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 844
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 853
    .end local v2    # "expiresTimeInterval":J
    .end local v5    # "today":Ljava/util/Date;
    .local v4, "response":Ljava/lang/String;
    :goto_0
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_1
    return-object v6

    .line 848
    .end local v4    # "response":Ljava/lang/String;
    :cond_0
    const-string v4, "{\"status\": \"unknown\"}"

    .restart local v4    # "response":Ljava/lang/String;
    goto :goto_0

    .line 854
    :catch_0
    move-exception v1

    .line 855
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 857
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 241
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 242
    const-string v0, "ConnectPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity result in plugin: requestCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), resultCode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 244
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 235
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 236
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->deactivateApp(Landroid/content/Context;)V

    .line 237
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 228
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 230
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 231
    return-void
.end method

.method protected pluginInitialize()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 87
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    .line 90
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->logger:Lcom/facebook/appevents/AppEventsLogger;

    .line 93
    invoke-direct {p0}, Lorg/apache/cordova/facebook/ConnectPlugin;->enableHybridAppEvents()V

    .line 96
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0, p0}, Lorg/apache/cordova/CordovaInterface;->setActivityResultCallback(Lorg/apache/cordova/CordovaPlugin;)V

    .line 98
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$2;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$2;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 148
    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    .line 149
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->shareDialog:Lcom/facebook/share/widget/ShareDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$3;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$3;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 171
    new-instance v0, Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/MessageDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->messageDialog:Lcom/facebook/share/widget/MessageDialog;

    .line 172
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->messageDialog:Lcom/facebook/share/widget/MessageDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$4;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$4;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/MessageDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 194
    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    .line 195
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v2, Lorg/apache/cordova/facebook/ConnectPlugin$5;

    invoke-direct {v2, p0}, Lorg/apache/cordova/facebook/ConnectPlugin$5;-><init>(Lorg/apache/cordova/facebook/ConnectPlugin;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/widget/GameRequestDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 224
    return-void
.end method
