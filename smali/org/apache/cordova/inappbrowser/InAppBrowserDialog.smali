.class public Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;
.super Landroid/app/Dialog;
.source "InAppBrowserDialog.java"


# instance fields
.field context:Landroid/content/Context;

.field inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .line 37
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->dismiss()V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-virtual {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->hardwareBack()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-virtual {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-virtual {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->goBack()V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-virtual {v0}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->closeDialog()V

    goto :goto_0
.end method

.method public setInAppBroswer(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V
    .locals 0
    .param p1, "browser"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 41
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->inAppBrowser:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .line 42
    return-void
.end method
