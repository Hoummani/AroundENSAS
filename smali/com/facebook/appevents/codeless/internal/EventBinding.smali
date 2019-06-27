.class public Lcom/facebook/appevents/codeless/internal/EventBinding;
.super Ljava/lang/Object;
.source "EventBinding.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;,
        Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    }
.end annotation


# instance fields
.field private final activityName:Ljava/lang/String;

.field private final appVersion:Ljava/lang/String;

.field private final componentId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;

.field private final method:Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/ParameterComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final pathType:Ljava/lang/String;

.field private final type:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "method"    # Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    .param p3, "type"    # Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .param p4, "appVersion"    # Ljava/lang/String;
    .param p7, "componentId"    # Ljava/lang/String;
    .param p8, "pathType"    # Ljava/lang/String;
    .param p9, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;",
            "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/ParameterComponent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p5, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    .local p6, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->eventName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->method:Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

    .line 53
    iput-object p3, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->type:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 54
    iput-object p4, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->appVersion:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->path:Ljava/util/List;

    .line 56
    iput-object p6, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->parameters:Ljava/util/List;

    .line 57
    iput-object p7, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->componentId:Ljava/lang/String;

    .line 58
    iput-object p8, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->pathType:Ljava/lang/String;

    .line 59
    iput-object p9, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->activityName:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static getInstanceFromJson(Lorg/json/JSONObject;)Lcom/facebook/appevents/codeless/internal/EventBinding;
    .locals 19
    .param p0, "mapping"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v2, "event_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "eventName":Ljava/lang/String;
    const-string v2, "method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;->valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

    move-result-object v4

    .line 83
    .local v4, "method":Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    const-string v2, "event_type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    move-result-object v5

    .line 84
    .local v5, "type":Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    const-string v2, "app_version"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 85
    .local v6, "appVersion":Ljava/lang/String;
    const-string v2, "path"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 86
    .local v17, "jsonPathArray":Lorg/json/JSONArray;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v7, "path":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/PathComponent;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_0

    .line 88
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 89
    .local v16, "jsonPath":Lorg/json/JSONObject;
    new-instance v12, Lcom/facebook/appevents/codeless/internal/PathComponent;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/facebook/appevents/codeless/internal/PathComponent;-><init>(Lorg/json/JSONObject;)V

    .line 90
    .local v12, "component":Lcom/facebook/appevents/codeless/internal/PathComponent;
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 92
    .end local v12    # "component":Lcom/facebook/appevents/codeless/internal/PathComponent;
    .end local v16    # "jsonPath":Lorg/json/JSONObject;
    :cond_0
    const-string v2, "path_type"

    const-string v18, "absolute"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    .local v10, "pathType":Ljava/lang/String;
    const-string v2, "parameters"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 95
    .local v15, "jsonParameterArray":Lorg/json/JSONArray;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v8, "parameters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/ParameterComponent;>;"
    if-eqz v15, :cond_1

    .line 97
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 98
    invoke-virtual {v15, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 99
    .local v14, "jsonParameter":Lorg/json/JSONObject;
    new-instance v12, Lcom/facebook/appevents/codeless/internal/ParameterComponent;

    invoke-direct {v12, v14}, Lcom/facebook/appevents/codeless/internal/ParameterComponent;-><init>(Lorg/json/JSONObject;)V

    .line 100
    .local v12, "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 103
    .end local v12    # "component":Lcom/facebook/appevents/codeless/internal/ParameterComponent;
    .end local v14    # "jsonParameter":Lorg/json/JSONObject;
    :cond_1
    const-string v2, "component_id"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 104
    .local v9, "componentId":Ljava/lang/String;
    const-string v2, "activity_name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 106
    .local v11, "activityName":Ljava/lang/String;
    new-instance v2, Lcom/facebook/appevents/codeless/internal/EventBinding;

    invoke-direct/range {v2 .. v11}, Lcom/facebook/appevents/codeless/internal/EventBinding;-><init>(Ljava/lang/String;Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p0, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/EventBinding;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "eventBindings":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/appevents/codeless/internal/EventBinding;>;"
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 67
    .local v3, "length":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 69
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/appevents/codeless/internal/EventBinding;->getInstanceFromJson(Lorg/json/JSONObject;)Lcom/facebook/appevents/codeless/internal/EventBinding;

    move-result-object v0

    .line 70
    .local v0, "eventBinding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "eventBinding":Lcom/facebook/appevents/codeless/internal/EventBinding;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v4

    .line 76
    :cond_1
    return-object v1
.end method


# virtual methods
.method public getActivityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->activityName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->method:Lcom/facebook/appevents/codeless/internal/EventBinding$MappingMethod;

    return-object v0
.end method

.method public getPathType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->pathType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->type:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-object v0
.end method

.method public getViewParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/ParameterComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->parameters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewPath()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/appevents/codeless/internal/PathComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/facebook/appevents/codeless/internal/EventBinding;->path:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
