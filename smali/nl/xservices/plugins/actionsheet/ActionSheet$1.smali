.class Lnl/xservices/plugins/actionsheet/ActionSheet$1;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/actionsheet/ActionSheet;->show(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ZILorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/actionsheet/ActionSheet;

.field final synthetic val$addCancelButtonWithLabel:Ljava/lang/String;

.field final synthetic val$addDestructiveButtonWithLabel:Ljava/lang/String;

.field final synthetic val$androidEnableCancelButton:Z

.field final synthetic val$buttonLabels:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;

.field final synthetic val$destructiveButtonLast:Z

.field final synthetic val$theme:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/apache/cordova/CordovaInterface;ILjava/lang/String;ZLjava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;

    .prologue
    .line 79
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->this$0:Lnl/xservices/plugins/actionsheet/ActionSheet;

    iput-object p2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    iput p3, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$theme:I

    iput-object p4, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$title:Ljava/lang/String;

    iput-boolean p5, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$androidEnableCancelButton:Z

    iput-object p6, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$addCancelButtonWithLabel:Ljava/lang/String;

    iput-object p7, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$buttonLabels:Lorg/json/JSONArray;

    iput-boolean p8, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$destructiveButtonLast:Z

    iput-object p9, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$addDestructiveButtonWithLabel:Ljava/lang/String;

    iput-object p10, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 84
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$theme:I

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 89
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$title:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 91
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 100
    iget-boolean v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$androidEnableCancelButton:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$addCancelButtonWithLabel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 101
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$addCancelButtonWithLabel:Ljava/lang/String;

    new-instance v3, Lnl/xservices/plugins/actionsheet/ActionSheet$1$1;

    invoke-direct {v3, p0}, Lnl/xservices/plugins/actionsheet/ActionSheet$1$1;-><init>(Lnl/xservices/plugins/actionsheet/ActionSheet$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    :cond_0
    iget-object v3, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->this$0:Lnl/xservices/plugins/actionsheet/ActionSheet;

    iget-object v4, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$buttonLabels:Lorg/json/JSONArray;

    iget-boolean v5, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$destructiveButtonLast:Z

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$addDestructiveButtonWithLabel:Ljava/lang/String;

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    aput-object v2, v6, v7

    .line 130
    invoke-static {v3, v4, v5, v6}, Lnl/xservices/plugins/actionsheet/ActionSheet;->access$000(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "buttons":[Ljava/lang/String;
    new-instance v2, Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;

    invoke-direct {v2, p0}, Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;-><init>(Lnl/xservices/plugins/actionsheet/ActionSheet$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    new-instance v2, Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;

    invoke-direct {v2, p0, v1}, Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;-><init>(Lnl/xservices/plugins/actionsheet/ActionSheet$1;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->this$0:Lnl/xservices/plugins/actionsheet/ActionSheet;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lnl/xservices/plugins/actionsheet/ActionSheet;->access$102(Lnl/xservices/plugins/actionsheet/ActionSheet;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 160
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->this$0:Lnl/xservices/plugins/actionsheet/ActionSheet;

    invoke-static {v2}, Lnl/xservices/plugins/actionsheet/ActionSheet;->access$100(Lnl/xservices/plugins/actionsheet/ActionSheet;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 161
    return-void

    .line 86
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "buttons":[Ljava/lang/String;
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$addDestructiveButtonWithLabel:Ljava/lang/String;

    goto :goto_1
.end method
