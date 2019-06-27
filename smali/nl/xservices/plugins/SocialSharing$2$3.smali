.class Lnl/xservices/plugins/SocialSharing$2$3;
.super Ljava/lang/Object;
.source "SocialSharing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/SocialSharing$2;

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$sendIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing$2;Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$1"    # Lnl/xservices/plugins/SocialSharing$2;

    .prologue
    .line 373
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iput-object p2, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$sendIntent:Landroid/content/Intent;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 376
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v1, v2, :cond_0

    .line 378
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$sendIntent:Landroid/content/Intent;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing$2;->val$chooserTitle:Ljava/lang/String;

    iget-object v3, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;Landroid/content/IntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 382
    .local v0, "chooseIntent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v2, v1, Lnl/xservices/plugins/SocialSharing$2;->val$mycordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v3, v1, Lnl/xservices/plugins/SocialSharing$2;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-boolean v1, v1, Lnl/xservices/plugins/SocialSharing$2;->val$boolResult:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v2, v3, v0, v1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 383
    return-void

    .line 380
    .end local v0    # "chooseIntent":Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lnl/xservices/plugins/SocialSharing$2$3;->val$sendIntent:Landroid/content/Intent;

    iget-object v2, p0, Lnl/xservices/plugins/SocialSharing$2$3;->this$1:Lnl/xservices/plugins/SocialSharing$2;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing$2;->val$chooserTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .restart local v0    # "chooseIntent":Landroid/content/Intent;
    goto :goto_0

    .line 382
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method
