.class public Lcom/parse/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/NotificationCompat$Builder$BigTextStyle;,
        Lcom/parse/NotificationCompat$Builder$Style;
    }
.end annotation


# static fields
.field private static final MAX_CHARSEQUENCE_LENGTH:I = 0x1400


# instance fields
.field mContentIntent:Landroid/app/PendingIntent;

.field mContentText:Ljava/lang/CharSequence;

.field mContentTitle:Ljava/lang/CharSequence;

.field mContext:Landroid/content/Context;

.field mLargeIcon:Landroid/graphics/Bitmap;

.field mNotification:Landroid/app/Notification;

.field mNotificationChannelId:Ljava/lang/String;

.field mPriority:I

.field mStyle:Lcom/parse/NotificationCompat$Builder$Style;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 147
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 151
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/NotificationCompat$Builder;->mPriority:I

    .line 153
    return-void
.end method

.method protected static limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x1400

    .line 342
    if-nez p0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object p0

    .line 343
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 344
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 284
    if-eqz p2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 338
    invoke-static {}, Lcom/parse/NotificationCompat;->access$000()Lcom/parse/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/NotificationCompat$NotificationCompatImpl;->build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    invoke-static {}, Lcom/parse/NotificationCompat;->access$000()Lcom/parse/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/parse/NotificationCompat$NotificationCompatImpl;->build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 261
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/parse/NotificationCompat$Builder;->setFlag(IZ)V

    .line 262
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 222
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 208
    invoke-static {p1}, Lcom/parse/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 209
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 192
    invoke-static {p1}, Lcom/parse/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 193
    return-object p0
.end method

.method public setDefaults(I)Lcom/parse/NotificationCompat$Builder;
    .locals 2
    .param p1, "defaults"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 277
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 280
    :cond_0
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 234
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/parse/NotificationCompat$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 251
    return-object p0
.end method

.method public setNotificationChannel(Ljava/lang/String;)Lcom/parse/NotificationCompat$Builder;
    .locals 0
    .param p1, "notificationChannelId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mNotificationChannelId:Ljava/lang/String;

    .line 201
    return-object p0
.end method

.method public setPriority(I)Lcom/parse/NotificationCompat$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 303
    iput p1, p0, Lcom/parse/NotificationCompat$Builder;->mPriority:I

    .line 304
    return-object p0
.end method

.method public setSmallIcon(I)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 169
    return-object p0
.end method

.method public setSmallIcon(II)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 184
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 185
    return-object p0
.end method

.method public setStyle(Lcom/parse/NotificationCompat$Builder$Style;)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "style"    # Lcom/parse/NotificationCompat$Builder$Style;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    if-eq v0, p1, :cond_0

    .line 317
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    .line 318
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mStyle:Lcom/parse/NotificationCompat$Builder$Style;

    invoke-virtual {v0, p0}, Lcom/parse/NotificationCompat$Builder$Style;->setBuilder(Lcom/parse/NotificationCompat$Builder;)V

    .line 322
    :cond_0
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    invoke-static {p1}, Lcom/parse/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 243
    return-object p0
.end method

.method public setWhen(J)Lcom/parse/NotificationCompat$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 157
    return-object p0
.end method
