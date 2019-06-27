.class public Lcom/facebook/marketing/internal/ButtonIndexer;
.super Ljava/lang/Object;
.source "ButtonIndexer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private activitiesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private delegateSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiThreadHandler:Landroid/os/Handler;

.field private viewProcessors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/facebook/marketing/internal/ButtonIndexer;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->uiThreadHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->activitiesSet:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->viewProcessors:Ljava/util/Set;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->delegateSet:Ljava/util/HashSet;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/marketing/internal/ButtonIndexer;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/marketing/internal/ButtonIndexer;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/facebook/marketing/internal/ButtonIndexer;->processViews()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/facebook/marketing/internal/ButtonIndexer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private processViews()V
    .locals 7

    .prologue
    .line 102
    iget-object v4, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->activitiesSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 103
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "activityName":Ljava/lang/String;
    new-instance v2, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;

    iget-object v5, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->delegateSet:Ljava/util/HashSet;

    iget-object v6, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->uiThreadHandler:Landroid/os/Handler;

    invoke-direct {v2, v3, v1, v5, v6}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/util/HashSet;Landroid/os/Handler;)V

    .line 107
    .local v2, "processor":Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;
    iget-object v5, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->viewProcessors:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "activityName":Ljava/lang/String;
    .end local v2    # "processor":Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;
    .end local v3    # "rootView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private startTracking()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/facebook/marketing/internal/ButtonIndexer;->processViews()V

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->uiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/marketing/internal/ButtonIndexer$1;

    invoke-direct {v1, p0}, Lcom/facebook/marketing/internal/ButtonIndexer$1;-><init>(Lcom/facebook/marketing/internal/ButtonIndexer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 69
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t add activity to ButtonIndexer on non-UI thread"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->delegateSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 73
    invoke-direct {p0}, Lcom/facebook/marketing/internal/ButtonIndexer;->startTracking()V

    .line 74
    return-void
.end method

.method public remove(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 78
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t remove activity from ButtonIndexer on non-UI thread"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->activitiesSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->viewProcessors:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 84
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexer;->delegateSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 85
    return-void
.end method
