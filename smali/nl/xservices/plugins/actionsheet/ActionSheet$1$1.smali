.class Lnl/xservices/plugins/actionsheet/ActionSheet$1$1;
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
    .line 102
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$1;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 108
    return-void
.end method
