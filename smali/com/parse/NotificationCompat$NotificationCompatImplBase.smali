.class Lcom/parse/NotificationCompat$NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Lcom/parse/NotificationCompat$NotificationCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationCompatImplBase"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/parse/NotificationCompat$Builder;)Landroid/app/Notification;
    .locals 3
    .param p1, "builder"    # Lcom/parse/NotificationCompat$Builder;

    .prologue
    .line 60
    iget-object v1, p1, Lcom/parse/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    .line 61
    .local v1, "result":Landroid/app/Notification;
    new-instance v0, Lcom/parse/NotificationCompat$Builder;

    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/parse/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "newBuilder":Lcom/parse/NotificationCompat$Builder;
    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    .line 63
    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder;

    .line 64
    iget-object v2, p1, Lcom/parse/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Lcom/parse/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Lcom/parse/NotificationCompat$Builder;

    .line 66
    iget v2, p1, Lcom/parse/NotificationCompat$Builder;->mPriority:I

    if-lez v2, :cond_0

    .line 67
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 69
    :cond_0
    invoke-virtual {v0}, Lcom/parse/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    return-object v2
.end method
