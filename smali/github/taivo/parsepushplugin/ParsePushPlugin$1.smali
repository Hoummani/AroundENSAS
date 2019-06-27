.class Lgithub/taivo/parsepushplugin/ParsePushPlugin$1;
.super Ljava/lang/Object;
.source "ParsePushPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/taivo/parsepushplugin/ParsePushPlugin;->getInstallationId(Lorg/apache/cordova/CallbackContext;)V
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
    .line 91
    iput-object p1, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin$1;->this$0:Lgithub/taivo/parsepushplugin/ParsePushPlugin;

    iput-object p2, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "installationId":Ljava/lang/String;
    iget-object v1, p0, Lgithub/taivo/parsepushplugin/ParsePushPlugin$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 95
    return-void
.end method
