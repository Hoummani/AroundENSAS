.class public Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;
.super Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;
.source "ButtonIndexingEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/marketing/internal/ButtonIndexingEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonIndexingAccessibilityDelegate"
.end annotation


# instance fields
.field private existingDelegate:Landroid/view/View$AccessibilityDelegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mapKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "mapKey"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 52
    iput-object p2, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->mapKey:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->supportButtonIndexing:Z

    goto :goto_0
.end method


# virtual methods
.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 58
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 59
    invoke-static {}, Lcom/facebook/marketing/internal/ButtonIndexingEventListener;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unsupported action type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    instance-of v1, v1, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;

    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->existingDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v1, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;->mapKey:Ljava/lang/String;

    .line 69
    .local v0, "mapKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate$1;-><init>(Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
