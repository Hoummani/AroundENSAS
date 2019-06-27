.class public Lorg/apache/cordova/inappbrowser/InAppBrowser;
.super Lorg/apache/cordova/CordovaPlugin;
.source "InAppBrowser.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
    }
.end annotation


# static fields
.field private static final CLEAR_ALL_CACHE:Ljava/lang/String; = "clearcache"

.field private static final CLEAR_SESSION_CACHE:Ljava/lang/String; = "clearsessioncache"

.field private static final CLOSE_BUTTON_CAPTION:Ljava/lang/String; = "closebuttoncaption"

.field private static final CLOSE_BUTTON_COLOR:Ljava/lang/String; = "closebuttoncolor"

.field private static final DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

.field private static final EXIT_EVENT:Ljava/lang/String; = "exit"

.field private static final FILECHOOSER_REQUESTCODE:I = 0x1

.field private static final FILECHOOSER_REQUESTCODE_LOLLIPOP:I = 0x2

.field private static final FOOTER:Ljava/lang/String; = "footer"

.field private static final FOOTER_COLOR:Ljava/lang/String; = "footercolor"

.field private static final HARDWARE_BACK_BUTTON:Ljava/lang/String; = "hardwareback"

.field private static final HIDDEN:Ljava/lang/String; = "hidden"

.field private static final HIDE_NAVIGATION:Ljava/lang/String; = "hidenavigationbuttons"

.field private static final HIDE_URL:Ljava/lang/String; = "hideurlbar"

.field private static final LOAD_ERROR_EVENT:Ljava/lang/String; = "loaderror"

.field private static final LOAD_START_EVENT:Ljava/lang/String; = "loadstart"

.field private static final LOAD_STOP_EVENT:Ljava/lang/String; = "loadstop"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field protected static final LOG_TAG:Ljava/lang/String; = "InAppBrowser"

.field private static final MEDIA_PLAYBACK_REQUIRES_USER_ACTION:Ljava/lang/String; = "mediaPlaybackRequiresUserAction"

.field private static final NAVIGATION_COLOR:Ljava/lang/String; = "navigationbuttoncolor"

.field private static final NULL:Ljava/lang/String; = "null"

.field private static final SELF:Ljava/lang/String; = "_self"

.field private static final SHOULD_PAUSE:Ljava/lang/String; = "shouldPauseOnSuspend"

.field private static final SYSTEM:Ljava/lang/String; = "_system"

.field private static final TOOLBAR_COLOR:Ljava/lang/String; = "toolbarcolor"

.field private static final USER_WIDE_VIEW_PORT:Ljava/lang/String; = "useWideViewPort"

.field private static final ZOOM:Ljava/lang/String; = "zoom"

.field private static final customizableOptions:Ljava/util/List;


# instance fields
.field private allowedSchemes:[Ljava/lang/String;

.field private callbackContext:Lorg/apache/cordova/CallbackContext;

.field private clearAllCache:Z

.field private clearSessionCache:Z

.field private closeButtonCaption:Ljava/lang/String;

.field private closeButtonColor:Ljava/lang/String;

.field private dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

.field private edittext:Landroid/widget/EditText;

.field private footerColor:Ljava/lang/String;

.field private hadwareBackButton:Z

.field private hideNavigationButtons:Z

.field private hideUrlBar:Z

.field private inAppWebView:Landroid/webkit/WebView;

.field private mUploadCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadCallbackLollipop:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mediaPlaybackRequiresUserGesture:Z

.field private navigationButtonColor:Ljava/lang/String;

.field private openWindowHidden:Z

.field private shouldPauseInAppBrowser:Z

.field private showFooter:Z

.field private showLocationBar:Z

.field private showZoomControls:Z

.field private toolbarColor:I

.field private useWideViewPort:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

    .line 109
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "closebuttoncaption"

    aput-object v2, v0, v1

    const-string v1, "toolbarcolor"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "navigationbuttoncolor"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "closebuttoncolor"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "footercolor"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->customizableOptions:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 115
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 116
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    .line 117
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 118
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 119
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    .line 120
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    .line 121
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    .line 122
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    .line 123
    iput-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonCaption:Ljava/lang/String;

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonColor:Ljava/lang/String;

    .line 130
    const v0, -0x333334

    iput v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->toolbarColor:I

    .line 131
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideNavigationButtons:Z

    .line 132
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigationButtonColor:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideUrlBar:Z

    .line 134
    iput-boolean v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showFooter:Z

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->footerColor:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object v0
.end method

.method static synthetic access$002(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->dialog:Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/WebView;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->footerColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/ValueCallback;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    return v0
.end method

.method static synthetic access$1500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    return v0
.end method

.method static synthetic access$1600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    return v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    return v0
.end method

.method static synthetic access$2100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideNavigationButtons:Z

    return v0
.end method

.method static synthetic access$2200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideUrlBar:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getShowLocationBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showFooter:Z

    return v0
.end method

.method static synthetic access$2500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    return v0
.end method

.method static synthetic access$2600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->allowedSchemes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/apache/cordova/inappbrowser/InAppBrowser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->allowedSchemes:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->preferences:Lorg/apache/cordova/CordovaPreferences;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonCaption:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->toolbarColor:I

    return v0
.end method

.method static synthetic access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigationButtonColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    invoke-direct {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goForward()V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$902(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    return-object p1
.end method

.method private getInAppBrowser()Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .locals 0

    .prologue
    .line 545
    return-object p0
.end method

.method private getShowLocationBar()Z
    .locals 1

    .prologue
    .line 541
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    return v0
.end method

.method private goForward()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 515
    :cond_0
    return-void
.end method

.method private injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "jsWrapper"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 359
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    if-eqz v5, :cond_1

    .line 361
    if-eqz p2, :cond_0

    .line 362
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 363
    .local v1, "jsonEsc":Lorg/json/JSONArray;
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 364
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "jsonRepr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "jsonSourceString":Ljava/lang/String;
    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .end local v1    # "jsonEsc":Lorg/json/JSONArray;
    .end local v2    # "jsonRepr":Ljava/lang/String;
    .end local v3    # "jsonSourceString":Ljava/lang/String;
    .local v4, "scriptToInject":Ljava/lang/String;
    :goto_0
    move-object v0, v4

    .line 371
    .local v0, "finalScriptToInject":Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;

    invoke-direct {v6, p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$4;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 386
    .end local v0    # "finalScriptToInject":Ljava/lang/String;
    .end local v4    # "scriptToInject":Ljava/lang/String;
    :goto_1
    return-void

    .line 368
    :cond_0
    move-object v4, p1

    .restart local v4    # "scriptToInject":Ljava/lang/String;
    goto :goto_0

    .line 384
    .end local v4    # "scriptToInject":Ljava/lang/String;
    :cond_1
    const-string v5, "InAppBrowser"

    const-string v6, "Can\'t inject code into the system browser"

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private navigate(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 523
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 524
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 526
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 531
    :goto_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 532
    return-void

    .line 529
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFeature(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .param p1, "optString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 396
    const/4 v2, 0x0

    .line 412
    :cond_0
    return-object v2

    .line 398
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 399
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v0, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v0, "features":Ljava/util/StringTokenizer;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 402
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .local v3, "option":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 404
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "value":Ljava/lang/String;
    sget-object v5, Lorg/apache/cordova/inappbrowser/InAppBrowser;->customizableOptions:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 407
    const-string v5, "yes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "no"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 409
    :cond_3
    :goto_1
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 407
    :cond_4
    const-string v4, "yes"

    goto :goto_1
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z

    .prologue
    .line 980
    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V

    .line 981
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "keepCallback"    # Z
    .param p3, "status"    # Lorg/apache/cordova/PluginResult$Status;

    .prologue
    .line 990
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 991
    new-instance v0, Lorg/apache/cordova/PluginResult;

    invoke-direct {v0, p3, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 992
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 993
    iget-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 994
    if-nez p2, :cond_0

    .line 995
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 998
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public closeDialog()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$5;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 481
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    .line 147
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    .line 149
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 151
    .local v8, "t":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    const-string v8, "_self"

    .line 154
    :cond_1
    move-object v2, v8

    .line 155
    .local v2, "target":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->parseFeature(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 157
    .local v4, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "InAppBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "target = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    new-instance v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/inappbrowser/InAppBrowser$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lorg/apache/cordova/CallbackContext;)V

    invoke-virtual {v10, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .end local v2    # "target":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "t":Ljava/lang/String;
    :goto_0
    move v0, v9

    .line 303
    :cond_2
    return v0

    .line 241
    :cond_3
    const-string v1, "close"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    goto :goto_0

    .line 244
    :cond_4
    const-string v1, "injectScriptCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    const/4 v6, 0x0

    .line 246
    .local v6, "jsWrapper":Ljava/lang/String;
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    const-string v1, "(function(){prompt(JSON.stringify([eval(%%s)]), \'gap-iab://%s\')})()"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 249
    :cond_5
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_6
    const-string v1, "injectScriptFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 253
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    const-string v1, "(function(d) { var c = d.createElement(\'script\'); c.src = %%s; c.onload = function() { prompt(\'\', \'gap-iab://%s\'); }; d.body.appendChild(c); })(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 258
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_7
    const-string v6, "(function(d) { var c = d.createElement(\'script\'); c.src = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_1

    .line 260
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_8
    const-string v1, "injectStyleCode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 262
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 263
    const-string v1, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %%s; d.body.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 267
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_2
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_9
    const-string v6, "(function(d) { var c = d.createElement(\'style\'); c.innerHTML = %s; d.body.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_2

    .line 269
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_a
    const-string v1, "injectStyleFile"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 271
    invoke-virtual {p2, v9}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 272
    const-string v1, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %%s; d.head.appendChild(c); prompt(\'\', \'gap-iab://%s\');})(document)"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->getCallbackId()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v0

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 276
    .restart local v6    # "jsWrapper":Ljava/lang/String;
    :goto_3
    invoke-virtual {p2, v0}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->injectDeferredObject(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_b
    const-string v6, "(function(d) { var c = d.createElement(\'link\'); c.rel=\'stylesheet\'; c.type=\'text/css\'; c.href = %s; d.head.appendChild(c); })(document)"

    .restart local v6    # "jsWrapper":Ljava/lang/String;
    goto :goto_3

    .line 278
    .end local v6    # "jsWrapper":Ljava/lang/String;
    :cond_c
    const-string v1, "show"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 279
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 285
    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v7, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 286
    .local v7, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v7, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 287
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0

    .line 289
    .end local v7    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :cond_d
    const-string v1, "hide"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;

    invoke-direct {v1, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    new-instance v7, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v7, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 297
    .restart local v7    # "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v7, v9}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 298
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0, v7}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 490
    :cond_0
    return-void
.end method

.method public hardwareBack()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 1009
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 1010
    const-string v2, "InAppBrowser"

    const-string v3, "onActivityResult (For Android >= 5.0)"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_2

    .line 1013
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 1034
    :cond_1
    :goto_0
    return-void

    .line 1016
    :cond_2
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1017
    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallbackLollipop:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 1021
    :cond_3
    const-string v2, "InAppBrowser"

    const-string v3, "onActivityResult (For Android < 5.0)"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    if-nez v2, :cond_5

    .line 1024
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1028
    :cond_5
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_1

    .line 1029
    if-eqz p3, :cond_6

    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    const/4 v2, -0x1

    if-eq p2, v2, :cond_7

    :cond_6
    move-object v0, v1

    .line 1031
    .local v0, "result":Landroid/net/Uri;
    :goto_1
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1032
    iput-object v1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mUploadCallback:Landroid/webkit/ValueCallback;

    goto :goto_0

    .line 1029
    .end local v0    # "result":Landroid/net/Uri;
    :cond_7
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 339
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 340
    return-void
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 322
    :cond_0
    return-void
.end method

.method public onReset()V
    .locals 0

    .prologue
    .line 311
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    .line 312
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->inAppWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 332
    :cond_0
    return-void
.end method

.method public openExternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 424
    const/4 v1, 0x0

    .line 425
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    .end local v1    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :try_start_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 429
    .local v3, "uri":Landroid/net/Uri;
    const-string v4, "file"

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaWebView;->getResourceApi()Lorg/apache/cordova/CordovaResourceApi;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/cordova/CordovaResourceApi;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    :goto_0
    const-string v4, "com.android.browser.application_id"

    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    iget-object v4, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 436
    const-string v4, ""

    .line 440
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v4

    .line 432
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 438
    .end local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 439
    .end local v2    # "intent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_2
    const-string v4, "InAppBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InAppBrowser: Error loading url "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 438
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 22
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 556
    .local p2, "features":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 557
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    .line 558
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 559
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    .line 561
    if-eqz p2, :cond_e

    .line 562
    const-string v21, "location"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 563
    .local v15, "show":Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 564
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    .line 566
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showLocationBar:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 567
    const-string v21, "hidenavigationbuttons"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 568
    .local v9, "hideNavigation":Ljava/lang/String;
    const-string v21, "hideurlbar"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 569
    .local v10, "hideUrl":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/16 v21, 0x1

    :goto_1
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideNavigationButtons:Z

    .line 570
    :cond_1
    if-eqz v10, :cond_2

    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hideUrlBar:Z

    .line 572
    .end local v9    # "hideNavigation":Ljava/lang/String;
    .end local v10    # "hideUrl":Ljava/lang/String;
    :cond_2
    const-string v21, "zoom"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 573
    .local v20, "zoom":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 574
    const-string v21, "yes"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showZoomControls:Z

    .line 576
    :cond_3
    const-string v21, "hidden"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 577
    .local v8, "hidden":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 578
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x1

    :goto_4
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->openWindowHidden:Z

    .line 580
    :cond_4
    const-string v21, "hardwareback"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 581
    .local v7, "hardwareBack":Ljava/lang/String;
    if-eqz v7, :cond_15

    .line 582
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    .line 586
    :goto_6
    const-string v21, "mediaPlaybackRequiresUserAction"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 587
    .local v11, "mediaPlayback":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 588
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/16 v21, 0x1

    :goto_7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->mediaPlaybackRequiresUserGesture:Z

    .line 590
    :cond_5
    const-string v21, "clearcache"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 591
    .local v3, "cache":Ljava/lang/String;
    if-eqz v3, :cond_18

    .line 592
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_17

    const/16 v21, 0x1

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearAllCache:Z

    .line 599
    :cond_6
    :goto_9
    const-string v21, "shouldPauseOnSuspend"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 600
    .local v14, "shouldPause":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 601
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    const/16 v21, 0x1

    :goto_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->shouldPauseInAppBrowser:Z

    .line 603
    :cond_7
    const-string v21, "useWideViewPort"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 604
    .local v19, "wideViewPort":Ljava/lang/String;
    if-eqz v19, :cond_8

    .line 605
    const-string v21, "yes"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    const/16 v21, 0x1

    :goto_b
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->useWideViewPort:Z

    .line 607
    :cond_8
    const-string v21, "closebuttoncaption"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 608
    .local v4, "closeButtonCaptionSet":Ljava/lang/String;
    if-eqz v4, :cond_9

    .line 609
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonCaption:Ljava/lang/String;

    .line 611
    :cond_9
    const-string v21, "closebuttoncolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 612
    .local v5, "closeButtonColorSet":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 613
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeButtonColor:Ljava/lang/String;

    .line 615
    :cond_a
    const-string v21, "toolbarcolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 616
    .local v18, "toolbarColorSet":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 617
    invoke-static/range {v18 .. v18}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->toolbarColor:I

    .line 619
    :cond_b
    const-string v21, "navigationbuttoncolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 620
    .local v12, "navigationButtonColorSet":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 621
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->navigationButtonColor:Ljava/lang/String;

    .line 623
    :cond_c
    const-string v21, "footer"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 624
    .local v16, "showFooterSet":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 625
    const-string v21, "yes"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    const/16 v21, 0x1

    :goto_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->showFooter:Z

    .line 627
    :cond_d
    const-string v21, "footercolor"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 628
    .local v6, "footerColorSet":Ljava/lang/String;
    if-eqz v6, :cond_e

    .line 629
    move-object/from16 v0, p0

    iput-object v6, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->footerColor:Ljava/lang/String;

    .line 633
    .end local v3    # "cache":Ljava/lang/String;
    .end local v4    # "closeButtonCaptionSet":Ljava/lang/String;
    .end local v5    # "closeButtonColorSet":Ljava/lang/String;
    .end local v6    # "footerColorSet":Ljava/lang/String;
    .end local v7    # "hardwareBack":Ljava/lang/String;
    .end local v8    # "hidden":Ljava/lang/String;
    .end local v11    # "mediaPlayback":Ljava/lang/String;
    .end local v12    # "navigationButtonColorSet":Ljava/lang/String;
    .end local v14    # "shouldPause":Ljava/lang/String;
    .end local v15    # "show":Ljava/lang/String;
    .end local v16    # "showFooterSet":Ljava/lang/String;
    .end local v18    # "toolbarColorSet":Ljava/lang/String;
    .end local v19    # "wideViewPort":Ljava/lang/String;
    .end local v20    # "zoom":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->webView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v17, v0

    .line 636
    .local v17, "thatWebView":Lorg/apache/cordova/CordovaWebView;
    new-instance v13, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v13, v0, v1, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V

    .line 970
    .local v13, "runnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 971
    const-string v21, ""

    return-object v21

    .line 564
    .end local v13    # "runnable":Ljava/lang/Runnable;
    .end local v17    # "thatWebView":Lorg/apache/cordova/CordovaWebView;
    .restart local v15    # "show":Ljava/lang/String;
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 569
    .restart local v9    # "hideNavigation":Ljava/lang/String;
    .restart local v10    # "hideUrl":Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 570
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 574
    .end local v9    # "hideNavigation":Ljava/lang/String;
    .end local v10    # "hideUrl":Ljava/lang/String;
    .restart local v20    # "zoom":Ljava/lang/String;
    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 578
    .restart local v8    # "hidden":Ljava/lang/String;
    :cond_13
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 582
    .restart local v7    # "hardwareBack":Ljava/lang/String;
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_5

    .line 584
    :cond_15
    sget-object v21, Lorg/apache/cordova/inappbrowser/InAppBrowser;->DEFAULT_HARDWARE_BACK:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hadwareBackButton:Z

    goto/16 :goto_6

    .line 588
    .restart local v11    # "mediaPlayback":Ljava/lang/String;
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 592
    .restart local v3    # "cache":Ljava/lang/String;
    :cond_17
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 594
    :cond_18
    const-string v21, "clearsessioncache"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "cache":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 595
    .restart local v3    # "cache":Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 596
    const-string v21, "yes"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/16 v21, 0x1

    :goto_d
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/apache/cordova/inappbrowser/InAppBrowser;->clearSessionCache:Z

    goto/16 :goto_9

    :cond_19
    const/16 v21, 0x0

    goto :goto_d

    .line 601
    .restart local v14    # "shouldPause":Ljava/lang/String;
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 605
    .restart local v19    # "wideViewPort":Ljava/lang/String;
    :cond_1b
    const/16 v21, 0x0

    goto/16 :goto_b

    .line 625
    .restart local v4    # "closeButtonCaptionSet":Ljava/lang/String;
    .restart local v5    # "closeButtonColorSet":Ljava/lang/String;
    .restart local v12    # "navigationButtonColorSet":Ljava/lang/String;
    .restart local v16    # "showFooterSet":Ljava/lang/String;
    .restart local v18    # "toolbarColorSet":Ljava/lang/String;
    :cond_1c
    const/16 v21, 0x0

    goto/16 :goto_c
.end method
