.class Lcom/parse/ParseNotificationManager;
.super Ljava/lang/Object;
.source "ParseNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseNotificationManager$Singleton;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.parse.ParseNotificationManager"


# instance fields
.field private final notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile shouldShowNotifications:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    return-void
.end method

.method public static getInstance()Lcom/parse/ParseNotificationManager;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/parse/ParseNotificationManager$Singleton;->access$000()Lcom/parse/ParseNotificationManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getNotificationCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public setShouldShowNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    .line 47
    return-void
.end method

.method public showNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 55
    iget-object v3, p0, Lcom/parse/ParseNotificationManager;->notificationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 57
    iget-boolean v3, p0, Lcom/parse/ParseNotificationManager;->shouldShowNotifications:Z

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "notification"

    .line 60
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 63
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v2, v4

    .line 66
    .local v2, "notificationId":I
    :try_start_0
    invoke-virtual {v1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "notificationId":I
    :cond_0
    :goto_0
    return-void

    .line 67
    .restart local v1    # "nm":Landroid/app/NotificationManager;
    .restart local v2    # "notificationId":I
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v3, 0x5

    iput v3, p2, Landroid/app/Notification;->defaults:I

    .line 70
    invoke-virtual {v1, v2, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method
