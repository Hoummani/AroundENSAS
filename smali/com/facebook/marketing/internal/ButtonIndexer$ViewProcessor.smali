.class public Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;
.super Ljava/lang/Object;
.source "ButtonIndexer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/marketing/internal/ButtonIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewProcessor"
.end annotation


# static fields
.field private static volatile displayDensity:F

.field public static volatile loadedKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final activityName:Ljava/lang/String;

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

.field private viewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->loadedKeySet:Ljava/util/Set;

    .line 119
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->displayDensity:F

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Ljava/util/HashSet;Landroid/os/Handler;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p4, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    .local p3, "delegateSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->rootView:Ljava/lang/ref/WeakReference;

    .line 125
    iput-object p4, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->handler:Landroid/os/Handler;

    .line 126
    iput-object p2, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->activityName:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->delegateSet:Ljava/util/HashSet;

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->viewMap:Ljava/util/HashMap;

    .line 129
    sget v2, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->displayDensity:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 132
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->displayDensity:F

    .line 135
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v2, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method private attachListener(Landroid/view/View;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mapKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 226
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getExistingDelegate(Landroid/view/View;)Landroid/view/View$AccessibilityDelegate;

    move-result-object v4

    .line 231
    .local v4, "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    if-eqz v4, :cond_3

    move v1, v2

    .line 232
    .local v1, "delegateExists":Z
    :goto_1
    if-eqz v1, :cond_4

    instance-of v7, v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    if-eqz v7, :cond_4

    move v5, v2

    .line 234
    .local v5, "isCodelessDelegate":Z
    :goto_2
    if-eqz v5, :cond_5

    check-cast v4, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;

    .line 237
    .end local v4    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    invoke-virtual {v4}, Lcom/facebook/appevents/codeless/CodelessLoggingEventListener$AutoLoggingAccessibilityDelegate;->getSupportButtonIndexing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 238
    .local v2, "delegateSupportButtonIndexing":Z
    :goto_3
    iget-object v6, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->delegateSet:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-nez v2, :cond_0

    .line 241
    :cond_2
    invoke-static {p1, p2}, Lcom/facebook/marketing/internal/ButtonIndexingEventListener;->getAccessibilityDelegate(Landroid/view/View;Ljava/lang/String;)Lcom/facebook/marketing/internal/ButtonIndexingEventListener$ButtonIndexingAccessibilityDelegate;

    move-result-object v0

    .line 242
    .local v0, "delegate":Landroid/view/View$AccessibilityDelegate;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 243
    iget-object v6, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->delegateSet:Ljava/util/HashSet;

    invoke-virtual {v6, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "delegate":Landroid/view/View$AccessibilityDelegate;
    .end local v1    # "delegateExists":Z
    .end local v2    # "delegateSupportButtonIndexing":Z
    .end local v5    # "isCodelessDelegate":Z
    :catch_0
    move-exception v3

    .line 246
    .local v3, "e":Lcom/facebook/FacebookException;
    invoke-static {}, Lcom/facebook/marketing/internal/ButtonIndexer;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Failed to attach auto logging event listener."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v3    # "e":Lcom/facebook/FacebookException;
    .restart local v4    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    :cond_3
    move v1, v6

    .line 231
    goto :goto_1

    .restart local v1    # "delegateExists":Z
    :cond_4
    move v5, v6

    .line 232
    goto :goto_2

    .end local v4    # "existingDelegate":Landroid/view/View$AccessibilityDelegate;
    .restart local v5    # "isCodelessDelegate":Z
    :cond_5
    move v2, v6

    .line 237
    goto :goto_3
.end method

.method private process()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->rootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 160
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, v0}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->attachListeners(Landroid/view/View;)V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public attachListeners(Landroid/view/View;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 166
    const/4 v4, -0x1

    iget-object v5, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->activityName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->getClickableElementsOfView(Landroid/view/View;ILjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 167
    .local v2, "tree":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 168
    iget-object v4, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->activityName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->logAllIndexing(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 170
    :cond_0
    iget-object v4, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->viewMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 171
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, "mapKey":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 173
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0, v3, v1}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->attachListener(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/view/View;>;>;"
    .end local v1    # "mapKey":Ljava/lang/String;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public getClickableElementsOfView(Landroid/view/View;ILjava/lang/String;Z)Lorg/json/JSONObject;
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "mapKey"    # Ljava/lang/String;
    .param p4, "isAncestorClickable"    # Z
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 181
    if-nez p1, :cond_0

    move-object v7, v9

    .line 221
    :goto_0
    return-object v7

    .line 184
    :cond_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 186
    .local v7, "res":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p1}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->isClickableView(Landroid/view/View;)Z

    move-result v6

    .line 187
    .local v6, "isClickable":Z
    if-eqz v6, :cond_1

    .line 188
    iget-object v10, p0, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->viewMap:Ljava/util/HashMap;

    new-instance v11, Ljava/lang/ref/WeakReference;

    invoke-direct {v11, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v10, p3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_1
    instance-of v10, p1, Landroid/widget/TextView;

    if-nez v10, :cond_2

    instance-of v10, p1, Landroid/widget/ImageView;

    if-eqz v10, :cond_5

    :cond_2
    if-nez p4, :cond_3

    if-eqz v6, :cond_5

    .line 192
    :cond_3
    sget-object v10, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->loadedKeySet:Ljava/util/Set;

    invoke-interface {v10, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v7, v9

    .line 193
    goto :goto_0

    .line 195
    :cond_4
    sget-object v10, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->loadedKeySet:Ljava/util/Set;

    invoke-interface {v10, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-static {p1, v7}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 197
    sget v10, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->displayDensity:F

    invoke-static {p1, v7, v10}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->setAppearanceOfView(Landroid/view/View;Lorg/json/JSONObject;F)Lorg/json/JSONObject;

    move-result-object v7

    .line 198
    goto :goto_0

    .line 201
    :cond_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 202
    .local v2, "childviews":Lorg/json/JSONArray;
    instance-of v10, p1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_9

    .line 203
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v8, v0

    .line 204
    .local v8, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 205
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_9

    .line 207
    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez p4, :cond_6

    if-eqz v6, :cond_8

    :cond_6
    const/4 v10, 0x1

    .line 206
    :goto_2
    invoke-virtual {p0, v11, v5, p3, v10}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->getClickableElementsOfView(Landroid/view/View;ILjava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 208
    .local v1, "childview":Lorg/json/JSONObject;
    if-eqz v1, :cond_7

    .line 209
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 205
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 207
    .end local v1    # "childview":Lorg/json/JSONObject;
    :cond_8
    const/4 v10, 0x0

    goto :goto_2

    .line 213
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v8    # "viewGroup":Landroid/view/ViewGroup;
    :cond_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_a

    .line 214
    invoke-static {p1, v7}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->setBasicInfoOfView(Landroid/view/View;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 215
    const-string v10, "childviews"

    invoke-virtual {v7, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v2    # "childviews":Lorg/json/JSONArray;
    .end local v6    # "isClickable":Z
    :catch_0
    move-exception v4

    .line 219
    .local v4, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/facebook/marketing/internal/ButtonIndexer;->access$100()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "e":Lorg/json/JSONException;
    :cond_a
    move-object v7, v9

    .line 221
    goto :goto_0
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->process()V

    .line 151
    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->process()V

    .line 156
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 140
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/marketing/internal/RemoteConfigManager;->getRemoteConfigWithoutQuery(Ljava/lang/String;)Lcom/facebook/marketing/internal/RemoteConfig;

    move-result-object v1

    .line 142
    .local v1, "remoteConfig":Lcom/facebook/marketing/internal/RemoteConfig;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/facebook/marketing/internal/RemoteConfig;->getEnableButtonIndexing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Lcom/facebook/marketing/internal/ButtonIndexer$ViewProcessor;->process()V

    goto :goto_0
.end method
