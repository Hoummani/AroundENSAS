.class Luk/co/workingedge/phonegap/plugin/LaunchNavigator$1;
.super Ljava/lang/Object;
.source "LaunchNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/workingedge/phonegap/plugin/LaunchNavigator;->executeGlobalJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/workingedge/phonegap/plugin/LaunchNavigator;

.field final synthetic val$jsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Luk/co/workingedge/phonegap/plugin/LaunchNavigator;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Luk/co/workingedge/phonegap/plugin/LaunchNavigator;

    .prologue
    .line 1723
    iput-object p1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigator$1;->this$0:Luk/co/workingedge/phonegap/plugin/LaunchNavigator;

    iput-object p2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigator$1;->val$jsString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1726
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigator$1;->this$0:Luk/co/workingedge/phonegap/plugin/LaunchNavigator;

    iget-object v0, v0, Luk/co/workingedge/phonegap/plugin/LaunchNavigator;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigator$1;->val$jsString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 1727
    return-void
.end method
