.class public Lcom/parse/GcmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GcmBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 23
    invoke-static {p1, p2}, Lcom/parse/PushServiceUtils;->runService(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 24
    return-void
.end method
