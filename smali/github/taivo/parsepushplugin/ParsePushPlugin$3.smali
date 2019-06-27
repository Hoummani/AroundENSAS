.class Lgithub/taivo/parsepushplugin/ParsePushPlugin$3;
.super Ljava/lang/Object;
.source "ParsePushPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/taivo/parsepushplugin/ParsePushPlugin;->getSubscriptions(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/taivo/parsepushplugin/ParsePushPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lgithub/taivo/parsepushplugin/ParsePushPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lgithub/taivo/parsepushplugin/ParsePushPlugin;

    .prologue
    .line 109
    iput-object p1, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin$3;->this$0:Lgithub/taivo/parsepushplugin/ParsePushPlugin;

    iput-object p2, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 111
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    const-string v3, "channels"

    invoke-virtual {v2, v3}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "subscriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 113
    .local v1, "subscriptionsArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "subscriptionsArray":Lorg/json/JSONArray;
    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 116
    .restart local v1    # "subscriptionsArray":Lorg/json/JSONArray;
    :cond_0
    iget-object v2, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v2, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    .line 117
    return-void
.end method
