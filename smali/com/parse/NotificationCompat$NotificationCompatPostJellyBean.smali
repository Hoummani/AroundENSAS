.class Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/parse/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatPostJellyBean"
.end annotation


# instance fields
.field private postJellyBeanBuilder:Landroid/app/Notification$Builder;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 5
    .param p1, "b"    # Lcom/parse/NotificationCompat$Builder;

    .prologue
    .line 78
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;->postJellyBeanBuilder:Landroid/app/Notification$Builder;

    .line 79
    iget-object v2, p0, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;->postJellyBeanBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 80
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 81
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->iconLevel:I

    .line 82
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 83
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 84
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 85
    :goto_0
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 86
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->defaults:I

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 88
    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    instance-of v2, v2, Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    if-eqz v2, :cond_0

    .line 90
    iget-object v0, p1, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    check-cast v0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;

    .line 91
    .local v0, "staticStyle":Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    iget-object v3, p0, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;->postJellyBeanBuilder:Landroid/app/Notification$Builder;

    invoke-direct {v2, v3}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v3, v0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    iget-object v3, v0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 93
    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 94
    .local v1, "style":Landroid/app/Notification$BigTextStyle;
    iget-boolean v2, v0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, v0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 99
    .end local v0    # "staticStyle":Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .end local v1    # "style":Landroid/app/Notification$BigTextStyle;
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 100
    iget-object v2, p0, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;->postJellyBeanBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p1, Lcom/parse/NotificationCompat$Builder;->mNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;->postJellyBeanBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 84
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
