.class Lnl/xservices/plugins/SocialSharing$3$1;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$3;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$3;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$1"    # Lnl/xservices/plugins/SocialSharing$3;

    .prologue
    .line 597
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$3$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 600
    :try_start_0
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$3;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing$3;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$3$1;->val$intent:Landroid/content/Intent;

    const/4 v4, 0x4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$3$1;->this$1:Lnl/xservices/plugins/SocialSharing$3;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing$3;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
