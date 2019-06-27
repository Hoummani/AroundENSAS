.class public Lcom/parse/ParseConfig;
.super Ljava/lang/Object;
.source "ParseConfig.java"


# static fields
.field static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    .line 122
    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lbolts/Task;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/parse/ParseConfig;->getAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseConfig;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 108
    invoke-virtual {p1, p0}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 109
    .local v0, "decodedObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "params"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 110
    .local v1, "decodedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 111
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Object did not contain the \'params\' key."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    new-instance v2, Lcom/parse/ParseConfig;

    invoke-direct {v2, v1}, Lcom/parse/ParseConfig;-><init>(Ljava/util/Map;)V

    return-object v2
.end method

.method public static get()Lcom/parse/ParseConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseConfig;

    return-object v0
.end method

.method private static getAsync(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseConfig$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseConfig$2;-><init>(Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static getConfigController()Lcom/parse/ParseConfigController;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getConfigController()Lcom/parse/ParseConfigController;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentConfig()Lcom/parse/ParseConfig;
    .locals 2

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/parse/ParseConfig;->getConfigController()Lcom/parse/ParseConfigController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseConfigController;->getCurrentConfigController()Lcom/parse/ParseCurrentConfigController;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/parse/ParseCurrentConfigController;->getCurrentConfigAsync()Lbolts/Task;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseConfig;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, "e":Lcom/parse/ParseException;
    :goto_0
    return-object v1

    .line 48
    .end local v0    # "e":Lcom/parse/ParseException;
    :catch_0
    move-exception v0

    .line 50
    .restart local v0    # "e":Lcom/parse/ParseException;
    new-instance v1, Lcom/parse/ParseConfig;

    invoke-direct {v1}, Lcom/parse/ParseConfig;-><init>()V

    goto :goto_0
.end method

.method public static getInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    sget-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseConfig$1;

    invoke-direct {v1}, Lcom/parse/ParseConfig$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getInBackground(Lcom/parse/ConfigCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/ConfigCallback;

    .prologue
    .line 73
    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 74
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-object p2

    .line 154
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 156
    const/4 p2, 0x0

    goto :goto_0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 186
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 185
    .restart local p2    # "defaultValue":Z
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    .end local p2    # "defaultValue":Ljava/util/Date;
    :goto_0
    return-object p2

    .line 213
    .restart local p2    # "defaultValue":Ljava/util/Date;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 215
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 217
    :cond_2
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Date;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 228
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 242
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    .end local p2    # "defaultValue":D
    :cond_0
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 267
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 292
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "encoded":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "encoded":Ljava/lang/Object;
    move-object p2, v0

    .end local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_1
    return-object p2

    .line 292
    .restart local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 324
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 330
    .local v0, "encoded":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "encoded":Ljava/lang/Object;
    move-object p2, v0

    .end local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_1
    return-object p2

    .line 324
    .restart local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 366
    .end local p2    # "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    return-object p2

    .line 359
    .restart local p2    # "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 362
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 365
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/List;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    .local v0, "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    move-object p2, v0

    .line 366
    goto :goto_0

    .end local v0    # "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    .line 365
    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 377
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 390
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 391
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .end local p2    # "defaultValue":J
    :cond_0
    return-wide p2
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 427
    .end local p2    # "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :goto_0
    return-object p2

    .line 420
    .restart local p2    # "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 422
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 423
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 426
    :cond_2
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/Map;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    .local v0, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :goto_1
    move-object p2, v0

    .line 427
    goto :goto_0

    .end local v0    # "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    .line 426
    goto :goto_1
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Number;

    .prologue
    .line 451
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    .end local p2    # "defaultValue":Ljava/lang/Number;
    :goto_0
    return-object p2

    .line 454
    .restart local p2    # "defaultValue":Ljava/lang/Number;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 455
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 456
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 458
    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method getParams()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 471
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/parse/ParseFile;

    .prologue
    .line 487
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    .end local p2    # "defaultValue":Lcom/parse/ParseFile;
    :goto_0
    return-object p2

    .line 490
    .restart local p2    # "defaultValue":Lcom/parse/ParseFile;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 492
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 494
    :cond_2
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseFile;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 518
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 525
    .end local p2    # "defaultValue":Lcom/parse/ParseGeoPoint;
    :goto_0
    return-object p2

    .line 521
    .restart local p2    # "defaultValue":Lcom/parse/ParseGeoPoint;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 523
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 525
    :cond_2
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 536
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 549
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 556
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 552
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 553
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 554
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 556
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseConfig["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
