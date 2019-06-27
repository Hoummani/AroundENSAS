.class public Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;
.super Ljava/lang/Object;
.source "CodelessMatcher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/CodelessMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewMatcher"
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private delegateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eventBindings:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private rootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p4, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "delegateMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    .line 208
    iput-object p2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->handler:Landroid/os/Handler;

    .line 209
    iput-object p3, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    .line 210
    iput-object p4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 213
    return-void
.end method

.method private attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .locals 10
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 451
    if-nez p3, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v7

    .line 456
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 461
    invoke-static {v7}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 462
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 486
    .local v3, "e":Lcom/facebook/FacebookException;
    invoke-static {}, Lcom/facebook/appevents/codeless/CodelessMatcher;->access$100()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to attach auto logging event listener."

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 466
    .end local v3    # "e":Lcom/facebook/FacebookException;
    .restart local v7    # "view":Landroid/view/View;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, "mapKey":Ljava/lang/String;
    invoke-static {v7}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    .line 469
    .local v4, "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    if-eqz v4, :cond_4

    move v1, v2

    .line 470
    .local v1, "delegateExists":Z
    :goto_1
    if-eqz v1, :cond_5

    instance-of v9, v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    if-eqz v9, :cond_5

    move v5, v2

    .line 472
    .local v5, "isCodelessDelegate":Z
    :goto_2
    if-eqz v5, :cond_6

    check-cast v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    .line 475
    .end local v4    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->getSupportCodelessLogging()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 476
    .local v2, "delegateSupportCodelessLogging":Z
    :goto_3
    iget-object v8, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    if-nez v2, :cond_0

    .line 480
    :cond_3
    invoke-static {p3, p2, v7}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener;->getAccessibilityDelegate(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    move-result-object v0

    .line 482
    .local v0, "delegate":Landroid/view/View$AccessibilityDelegate;
    invoke-virtual {v7, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 483
    iget-object v8, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "delegate":Landroid/view/View$AccessibilityDelegate;
    .end local v1    # "delegateExists":Z
    .end local v2    # "delegateSupportCodelessLogging":Z
    .end local v5    # "isCodelessDelegate":Z
    .restart local v4    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    :cond_4
    move v1, v8

    .line 469
    goto :goto_1

    .restart local v1    # "delegateExists":Z
    :cond_5
    move v5, v8

    .line 470
    goto :goto_2

    .end local v4    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    .restart local v5    # "isCodelessDelegate":Z
    :cond_6
    move v2, v8

    .line 475
    goto :goto_3
.end method

.method private attachRCTListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V
    .locals 9
    .param p1, "matchedView"    # Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 494
    if-nez p3, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getView()Landroid/view/View;

    move-result-object v6

    .line 498
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_0

    invoke-static {v6}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isRCTButton(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 502
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;->getViewMapKey()Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "mapKey":Ljava/lang/String;
    invoke-static {v6}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingOnTouchListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    .line 505
    .local v0, "existingListener":Landroid/view/View$OnTouchListener;
    if-eqz v0, :cond_3

    move v3, v4

    .line 506
    .local v3, "listenerExists":Z
    :goto_1
    if-eqz v3, :cond_4

    instance-of v8, v0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    if-eqz v8, :cond_4

    move v1, v4

    .line 508
    .local v1, "isCodelessListener":Z
    :goto_2
    if-eqz v1, :cond_5

    check-cast v0, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    .line 510
    .end local v0    # "existingListener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v0}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;->getSupportCodelessLogging()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 511
    .local v4, "listenerSupportCodelessLogging":Z
    :goto_3
    iget-object v7, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-nez v4, :cond_0

    .line 515
    :cond_2
    invoke-static {p3, p2, v6}, Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener;->getOnTouchListener(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Landroid/view/View;)Lcom/facebook/appevents/codeless/RCTCodelessLoggingEventListener$AutoLoggingOnTouchListener;

    move-result-object v2

    .line 517
    .local v2, "listener":Landroid/view/View$OnTouchListener;
    invoke-virtual {v6, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 518
    iget-object v7, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->delegateMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getEventName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v1    # "isCodelessListener":Z
    .end local v2    # "listener":Landroid/view/View$OnTouchListener;
    .end local v3    # "listenerExists":Z
    .end local v4    # "listenerSupportCodelessLogging":Z
    .restart local v0    # "existingListener":Landroid/view/View$OnTouchListener;
    :cond_3
    move v3, v7

    .line 505
    goto :goto_1

    .restart local v3    # "listenerExists":Z
    :cond_4
    move v1, v7

    .line 506
    goto :goto_2

    .end local v0    # "existingListener":Landroid/view/View$OnTouchListener;
    .restart local v1    # "isCodelessListener":Z
    :cond_5
    move v4, v7

    .line 510
    goto :goto_3
.end method

.method public static findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p1, "view"    # Landroid/view/View;
    .param p3, "level"    # I
    .param p4, "index"    # I
    .param p5, "mapKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    .local p2, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 295
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v11, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-object v11

    .line 300
    :cond_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p3

    if-lt v0, v1, :cond_3

    .line 302
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    move-object/from16 v0, p5

    invoke-direct {v1, p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_2
    :goto_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v12, p1

    .line 343
    check-cast v12, Landroid/view/ViewGroup;

    .line 344
    .local v12, "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v12}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v13

    .line 345
    .local v13, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .line 346
    .local v7, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_0

    .line 347
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 348
    .local v2, "child":Landroid/view/View;
    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 355
    .local v8, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 346
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 304
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v7    # "childCount":I
    .end local v8    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v12    # "viewGroup":Landroid/view/ViewGroup;
    .end local v13    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    invoke-interface/range {p2 .. p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/facebook/appevents/codeless/internal/PathComponent;

    .line 305
    .local v10, "pathElement":Lcom/facebook/appevents/codeless/internal/PathComponent;
    iget-object v1, v10, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v3, ".."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 307
    .local v9, "parent":Landroid/view/ViewParent;
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v12, v9

    .line 308
    check-cast v12, Landroid/view/ViewGroup;

    .line 309
    .restart local v12    # "viewGroup":Landroid/view/ViewGroup;
    invoke-static {v12}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v13

    .line 310
    .restart local v13    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    .line 311
    .restart local v7    # "childCount":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v7, :cond_0

    .line 312
    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 313
    .restart local v2    # "child":Landroid/view/View;
    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 320
    .restart local v8    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v11, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 325
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "i":I
    .end local v7    # "childCount":I
    .end local v8    # "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v12    # "viewGroup":Landroid/view/ViewGroup;
    .end local v13    # "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_4
    iget-object v1, v10, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 327
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    move-object/from16 v0, p5

    invoke-direct {v1, p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 332
    :cond_5
    move/from16 v0, p4

    invoke-static {p1, v10, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    .line 338
    new-instance v1, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    move-object/from16 v0, p5

    invoke-direct {v1, p1, v0}, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private static findVisibleChildren(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 437
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v3, "visibleViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 439
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 440
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 442
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-object v3
.end method

.method private static isTheSameView(Landroid/view/View;Lcom/facebook/appevents/codeless/internal/PathComponent;I)Z
    .locals 13
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "pathElement"    # Lcom/facebook/appevents/codeless/internal/PathComponent;
    .param p2, "index"    # I

    .prologue
    const/4 v10, 0x0

    .line 366
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->index:I

    if-eq p2, v11, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v10

    .line 370
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 371
    iget-object v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v12, ".*android\\..*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 372
    iget-object v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->className:Ljava/lang/String;

    const-string v12, "\\."

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "names":[Ljava/lang/String;
    array-length v11, v1

    if-lez v11, :cond_0

    .line 374
    array-length v11, v1

    add-int/lit8 v11, v11, -0x1

    aget-object v0, v1, v11

    .line 375
    .local v0, "SimpleName":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 386
    .end local v0    # "SimpleName":Ljava/lang/String;
    .end local v1    # "names":[Ljava/lang/String;
    :cond_2
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v12, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->ID:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 387
    invoke-virtual {v12}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v12

    and-int/2addr v11, v12

    if-lez v11, :cond_3

    .line 388
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->id:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 393
    :cond_3
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v12, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TEXT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 394
    invoke-virtual {v12}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v12

    and-int/2addr v11, v12

    if-lez v11, :cond_4

    .line 395
    iget-object v4, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->text:Ljava/lang/String;

    .line 396
    .local v4, "pathText":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    .line 398
    .local v9, "text":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 403
    .end local v4    # "pathText":Ljava/lang/String;
    .end local v9    # "text":Ljava/lang/String;
    :cond_4
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v12, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->DESCRIPTION:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 404
    invoke-virtual {v12}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v12

    and-int/2addr v11, v12

    if-lez v11, :cond_5

    .line 405
    iget-object v2, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->description:Ljava/lang/String;

    .line 406
    .local v2, "pathDesc":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    if-nez v11, :cond_8

    const-string v6, ""

    .line 408
    .local v6, "targetDesc":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 413
    .end local v2    # "pathDesc":Ljava/lang/String;
    .end local v6    # "targetDesc":Ljava/lang/String;
    :cond_5
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v12, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->HINT:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 414
    invoke-virtual {v12}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v12

    and-int/2addr v11, v12

    if-lez v11, :cond_6

    .line 415
    iget-object v3, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->hint:Ljava/lang/String;

    .line 416
    .local v3, "pathHint":Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getHintOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    .line 418
    .local v7, "targetHint":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 423
    .end local v3    # "pathHint":Ljava/lang/String;
    .end local v7    # "targetHint":Ljava/lang/String;
    :cond_6
    iget v11, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->matchBitmask:I

    sget-object v12, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->TAG:Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;

    .line 424
    invoke-virtual {v12}, Lcom/facebook/appevents/codeless/internal/PathComponent$MatchBitmaskType;->getValue()I

    move-result v12

    and-int/2addr v11, v12

    if-lez v11, :cond_7

    .line 425
    iget-object v5, p1, Lcom/facebook/appevents/codeless/internal/PathComponent;->tag:Ljava/lang/String;

    .line 426
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_9

    const-string v8, ""

    .line 428
    .local v8, "targetTag":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 433
    .end local v5    # "tag":Ljava/lang/String;
    .end local v8    # "targetTag":Ljava/lang/String;
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 407
    .restart local v2    # "pathDesc":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 427
    .end local v2    # "pathDesc":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method private startMatch()V
    .locals 3

    .prologue
    .line 252
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/codeless/internal/EventBinding;

    .line 255
    .local v0, "binding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    iget-object v2, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v0    # "binding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public findView(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;)V
    .locals 8
    .param p1, "mapping"    # Lcom/facebook/appevents/codeless/internal/EventBinding;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 286
    :cond_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getViewPath()Ljava/util/List;

    move-result-object v2

    .line 272
    .local v2, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-gt v0, v1, :cond_0

    .line 276
    const/4 v3, 0x0

    const/4 v4, -0x1

    iget-object v5, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->activityName:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->findViewByPath(Lcom/facebook/appevents/codeless/internal/EventBinding;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 283
    .local v6, "matchedViews":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;

    .line 284
    .local v7, "view":Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;
    invoke-direct {p0, v7, p2, p1}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->attachListener(Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;Landroid/view/View;Lcom/facebook/appevents/codeless/internal/EventBinding;)V

    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 244
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    .line 249
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 217
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 220
    .local v1, "appSettings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getCodelessEventsEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getEventBindings()Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/EventBinding;->parseArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    .line 226
    iget-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->eventBindings:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 228
    .local v3, "rootView":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 231
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 232
    .local v2, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 234
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;->startMatch()V

    goto :goto_0
.end method
