.class public Lcom/parse/NotificationCompat$Builder$BigTextStyle;
.super Lcom/parse/NotificationCompat$Builder$Style;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/NotificationCompat$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# instance fields
.field mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/parse/NotificationCompat$Builder$Style;-><init>()V

    .line 406
    return-void
.end method

.method public constructor <init>(Lcom/parse/NotificationCompat$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcom/parse/NotificationCompat$Builder;

    .prologue
    .line 408
    invoke-direct {p0}, Lcom/parse/NotificationCompat$Builder$Style;-><init>()V

    .line 409
    invoke-virtual {p0, p1}, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->setBuilder(Lcom/parse/NotificationCompat$Builder;)V

    .line 410
    return-void
.end method


# virtual methods
.method public bigText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 0
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 436
    return-object p0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 418
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Lcom/parse/NotificationCompat$Builder$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/NotificationCompat$Builder$BigTextStyle;->mSummaryTextSet:Z

    .line 427
    return-object p0
.end method
