.class public Lcom/facebook/marketing/internal/ButtonIndexingLogger;
.super Ljava/lang/Object;
.source "ButtonIndexingLogger.java"


# static fields
.field private static final API_ENDPOINT:Ljava/lang/String; = "%s/button_indexing"

.field private static final TAG:Ljava/lang/String;

.field private static volatile clickedKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile loadedKeySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->clickedKeySet:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->loadedKeySet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static generateButtonDetail(Landroid/view/View;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 16
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mapKey"    # Ljava/lang/String;
    .param p2, "isFromClick"    # Z

    .prologue
    .line 62
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v12, "result":Lorg/json/JSONObject;
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 64
    .local v11, "path":Lorg/json/JSONArray;
    const-string v14, "\\."

    const/4 v15, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 65
    .local v9, "indexList":[Ljava/lang/String;
    move-object/from16 v5, p0

    .line 66
    .local v5, "currentView":Landroid/view/View;
    array-length v14, v9

    add-int/lit8 v8, v14, -0x1

    .line 67
    .local v8, "i":I
    :goto_0
    if-eqz v5, :cond_2

    .line 68
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v4, "currentPath":Lorg/json/JSONObject;
    const-string v14, "classname"

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v14, "index"

    aget-object v15, v9, v8

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v14, "id"

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    const-string v14, "text"

    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v15, "tag"

    .line 74
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_0

    const-string v14, ""

    .line 73
    :goto_1
    invoke-virtual {v4, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v15, "description"

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    if-nez v14, :cond_1

    const-string v14, ""

    .line 75
    :goto_2
    invoke-virtual {v4, v15, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 79
    invoke-static {v5}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getParentOfView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 80
    add-int/lit8 v8, v8, -0x1

    .line 81
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 82
    .end local v4    # "currentPath":Lorg/json/JSONObject;
    :cond_2
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v13, "revertedPath":Lorg/json/JSONArray;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    add-int/lit8 v10, v14, -0x1

    .local v10, "j":I
    :goto_3
    if-ltz v10, :cond_3

    .line 84
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 83
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 86
    :cond_3
    const-string v14, "path"

    invoke-virtual {v12, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v14, "is_from_click"

    move/from16 v0, p2

    invoke-virtual {v12, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    move-object/from16 v0, p0

    instance-of v14, v0, Landroid/widget/ImageView;

    if-eqz v14, :cond_4

    .line 89
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 90
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    .local v3, "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v1, v14, v15, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 92
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 93
    .local v2, "byteArray":[B
    const/4 v14, 0x0

    invoke-static {v2, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "encoded":Ljava/lang/String;
    const-string v14, "image"

    invoke-virtual {v12, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "byteArray":[B
    .end local v3    # "byteArrayOutputStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "currentView":Landroid/view/View;
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "indexList":[Ljava/lang/String;
    .end local v10    # "j":I
    .end local v11    # "path":Lorg/json/JSONArray;
    .end local v12    # "result":Lorg/json/JSONObject;
    .end local v13    # "revertedPath":Lorg/json/JSONArray;
    :cond_4
    :goto_4
    return-object v12

    .line 97
    :catch_0
    move-exception v6

    .line 98
    .local v6, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    const-string v15, "Log button indexing error"

    invoke-static {v14, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    goto :goto_4
.end method

.method public static logAllIndexing(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .param p0, "tree"    # Lorg/json/JSONObject;
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;

    invoke-direct {v1, p1, p0}, Lcom/facebook/marketing/internal/ButtonIndexingLogger$1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 167
    return-void
.end method

.method public static logIndexing(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p0, "applicationId"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "mapKey"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 131
    sget-object v2, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->clickedKeySet:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    sget-object v2, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->clickedKeySet:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-static {p1, p2, v3}, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->generateButtonDetail(Landroid/view/View;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 136
    .local v0, "detail":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 137
    new-instance v1, Lorg/json/JSONArray;

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v1, "paths":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2, p0}, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->sendGraphAPIRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static sendGraphAPIRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "paths"    # Ljava/lang/String;
    .param p2, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 105
    .line 106
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    .line 107
    .local v2, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 108
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "advertiserId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "version":Ljava/lang/String;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v4, "publishParams":Landroid/os/Bundle;
    :try_start_0
    const-string v6, "app_version"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v6, "device_id"

    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v6, "indexed_button_list"

    invoke-virtual {v4, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s/button_indexing"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p2, v9, v10

    .line 117
    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 115
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 120
    .local v3, "postRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v3, v4}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "advertiserId":Ljava/lang/String;
    .end local v3    # "postRequest":Lcom/facebook/GraphRequest;
    .end local v4    # "publishParams":Landroid/os/Bundle;
    .end local v5    # "version":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v0    # "advertiserId":Ljava/lang/String;
    .restart local v4    # "publishParams":Landroid/os/Bundle;
    .restart local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/facebook/marketing/internal/ButtonIndexingLogger;->TAG:Ljava/lang/String;

    const-string v7, "failed to send button indexing request"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
