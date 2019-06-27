.class Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/actionsheet/ActionSheet$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/actionsheet/ActionSheet$1;)V
    .locals 0
    .param p1, "this$1"    # Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    .prologue
    .line 136
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    iget-object v0, v0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v1, Lorg/apache/cordova/PluginResult;

    sget-object v2, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    add-int/lit8 v3, p2, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 143
    return-void
.end method
