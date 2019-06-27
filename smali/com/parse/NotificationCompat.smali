.class Lcom/parse/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/NotificationCompat$Builder;,
        Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;,
        Lcom/parse/NotificationCompat$NotificationCompatImplBase;,
        Lcom/parse/NotificationCompat$NotificationCompatImpl;
    }
.end annotation


# static fields
.field public static final FLAG_HIGH_PRIORITY:I = 0x80

.field private static final IMPL:Lcom/parse/NotificationCompat$NotificationCompatImpl;

.field public static final PRIORITY_DEFAULT:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 108
    new-instance v0, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;

    invoke-direct {v0}, Lcom/parse/NotificationCompat$NotificationCompatPostJellyBean;-><init>()V

    sput-object v0, Lcom/parse/NotificationCompat;->IMPL:Lcom/parse/NotificationCompat$NotificationCompatImpl;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/parse/NotificationCompat$NotificationCompatImplBase;

    invoke-direct {v0}, Lcom/parse/NotificationCompat$NotificationCompatImplBase;-><init>()V

    sput-object v0, Lcom/parse/NotificationCompat;->IMPL:Lcom/parse/NotificationCompat$NotificationCompatImpl;

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/parse/NotificationCompat$NotificationCompatImpl;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/parse/NotificationCompat;->IMPL:Lcom/parse/NotificationCompat$NotificationCompatImpl;

    return-object v0
.end method
