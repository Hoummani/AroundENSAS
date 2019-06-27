.class Lcom/facebook/appevents/codeless/ViewIndexer$1;
.super Ljava/util/TimerTask;
.source "ViewIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$activityName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activityName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 92
    :try_start_0
    iget-object v11, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activity:Landroid/app/Activity;

    .line 93
    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .line 96
    .local v3, "rootView":Landroid/view/View;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getIsAppIndexingEnabled()Z

    move-result v7

    .line 98
    .local v7, "shouldStartIndexing":Z
    if-nez v7, :cond_0

    .line 137
    .end local v3    # "rootView":Landroid/view/View;
    .end local v7    # "shouldStartIndexing":Z
    :goto_0
    return-void

    .line 102
    .restart local v3    # "rootView":Landroid/view/View;
    .restart local v7    # "shouldStartIndexing":Z
    :cond_0
    invoke-static {}, Lcom/facebook/internal/InternalSettings;->isUnityApp()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 103
    invoke-static {}, Lcom/facebook/appevents/codeless/internal/UnityReflection;->captureViewHierarchy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v3    # "rootView":Landroid/view/View;
    .end local v7    # "shouldStartIndexing":Z
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "UI Component tree indexing failure!"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "rootView":Landroid/view/View;
    .restart local v7    # "shouldStartIndexing":Z
    :cond_1
    :try_start_1
    new-instance v6, Ljava/util/concurrent/FutureTask;

    new-instance v11, Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;

    invoke-direct {v11, v3}, Lcom/facebook/appevents/codeless/ViewIndexer$ScreenshotTaker;-><init>(Landroid/view/View;)V

    invoke-direct {v6, v11}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 109
    .local v6, "screenshotFuture":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    invoke-static {v11}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$000(Lcom/facebook/appevents/codeless/ViewIndexer;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 111
    const-string v5, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    .local v5, "screenshot":Ljava/lang/String;
    const-wide/16 v12, 0x1

    :try_start_2
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v12, v13, v11}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 118
    :goto_1
    :try_start_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 121
    .local v10, "viewTree":Lorg/json/JSONObject;
    :try_start_4
    const-string v11, "screenname"

    iget-object v12, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activityName:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v11, "screenshot"

    invoke-virtual {v10, v11, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 125
    .local v9, "viewArray":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getDictionaryOfView(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 126
    .local v4, "rootViewInfo":Lorg/json/JSONObject;
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    const-string v11, "view"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 132
    .end local v4    # "rootViewInfo":Lorg/json/JSONObject;
    .end local v9    # "viewArray":Lorg/json/JSONArray;
    :goto_2
    :try_start_5
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    .line 133
    .local v8, "tree":Ljava/lang/String;
    iget-object v11, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iget-object v12, p0, Lcom/facebook/appevents/codeless/ViewIndexer$1;->val$activityName:Ljava/lang/String;

    invoke-static {v11, v8, v12}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$200(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v8    # "tree":Ljava/lang/String;
    .end local v10    # "viewTree":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 115
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Failed to take screenshot."

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v10    # "viewTree":Lorg/json/JSONObject;
    :catch_2
    move-exception v2

    .line 129
    .local v2, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Failed to create JSONObject"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method
