.class public final Lcom/facebook/appevents/codeless/internal/ParameterComponent;
.super Ljava/lang/Object;
.source "ParameterComponent.java"


# static fields
.field private static final PARAMETER_NAME_KEY:Ljava/lang/String; = "name"

.field private static final PARAMETER_PATH_KEY:Ljava/lang/String; = "path"

.field private static final PARAMETER_VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field public final name:Ljava/lang/String;

.field public final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;"
        }
    .end annotation
.end field

.field public final pathType:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "component"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->name:Ljava/lang/String;

    .line 42
    const-string v4, "value"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->value:Ljava/lang/String;

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, "pathComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    const-string v4, "path"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 46
    .local v1, "jsonPathArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 48
    new-instance v2, Lcom/facebook/appevents/codeless/internal/PathComponent;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/facebook/appevents/codeless/internal/PathComponent;-><init>(Lorg/json/JSONObject;)V

    .line 49
    .local v2, "pathComponent":Lcom/facebook/appevents/codeless/internal/PathComponent;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0    # "i":I
    .end local v2    # "pathComponent":Lcom/facebook/appevents/codeless/internal/PathComponent;
    :cond_0
    iput-object v3, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->path:Ljava/util/List;

    .line 53
    const-string v4, "path_type"

    const-string v5, "absolute"

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/facebook/appevents/codeless/internal/ParameterComponent;->pathType:Ljava/lang/String;

    .line 56
    return-void
.end method
