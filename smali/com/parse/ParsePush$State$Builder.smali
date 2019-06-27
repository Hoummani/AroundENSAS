.class Lcom/parse/ParsePush$State$Builder;
.super Ljava/lang/Object;
.source "ParsePush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePush$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private data:Lorg/json/JSONObject;

.field private expirationTime:Ljava/lang/Long;

.field private expirationTimeInterval:Ljava/lang/Long;

.field private pushTime:Ljava/lang/Long;

.field private pushToAndroid:Ljava/lang/Boolean;

.field private pushToIOS:Ljava/lang/Boolean;

.field private query:Lcom/parse/ParseQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParsePush$State;)V
    .locals 5
    .param p1, "state"    # Lcom/parse/ParsePush$State;

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->channelSet()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 70
    :goto_0
    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    .line 71
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v2

    if-nez v2, :cond_1

    .line 73
    :goto_1
    iput-object v3, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    .line 74
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTime()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    .line 75
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTimeInterval()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    .line 76
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushTime()Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->pushTime:Ljava/lang/Long;

    .line 77
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToIOS()Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    .line 78
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToAndroid()Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "copyData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->data()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "copyData":Lorg/json/JSONObject;
    .local v1, "copyData":Lorg/json/JSONObject;
    move-object v0, v1

    .line 86
    .end local v1    # "copyData":Lorg/json/JSONObject;
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :goto_2
    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    .line 87
    return-void

    .line 68
    .end local v0    # "copyData":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 70
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->channelSet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 71
    :cond_1
    new-instance v3, Lcom/parse/ParseQuery;

    new-instance v2, Lcom/parse/ParseQuery$State$Builder;

    .line 73
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State;)V

    invoke-direct {v3, v2}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    goto :goto_1

    .line 83
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method static synthetic access$1000(Lcom/parse/ParsePush$State$Builder;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParsePush$State$Builder;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParsePush$State$Builder;)Lcom/parse/ParseQuery;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushTime:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/parse/ParsePush$State;
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot send a push without calling either setMessage or setData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Lcom/parse/ParsePush$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParsePush$State;-><init>(Lcom/parse/ParsePush$State$Builder;Lcom/parse/ParsePush$1;)V

    return-object v0
.end method

.method public channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParsePush$State$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "channelSet":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "channels collection cannot be null"

    invoke-static {v1, v4}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "channel":Ljava/lang/String;
    if-eqz v0, :cond_1

    move v1, v2

    :goto_2
    const-string v5, "channel cannot be null"

    invoke-static {v1, v5}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    goto :goto_1

    .end local v0    # "channel":Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 133
    goto :goto_0

    .restart local v0    # "channel":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 135
    goto :goto_2

    .line 137
    .end local v0    # "channel":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    .line 139
    return-object p0
.end method

.method public data(Lorg/json/JSONObject;)Lcom/parse/ParsePush$State$Builder;
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;

    .line 129
    return-object p0
.end method

.method public expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;
    .locals 1
    .param p1, "expirationTime"    # Ljava/lang/Long;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    .line 92
    return-object p0
.end method

.method public expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;
    .locals 1
    .param p1, "expirationTimeInterval"    # Ljava/lang/Long;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;

    .line 98
    return-object p0
.end method

.method public pushTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;
    .locals 12
    .param p1, "pushTime"    # Ljava/lang/Long;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 102
    if-eqz p1, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long v0, v8, v10

    .line 104
    .local v0, "now":J
    const-wide/32 v2, 0x127500

    .line 105
    .local v2, "twoWeeks":J
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v4, v8, v0

    if-lez v4, :cond_1

    move v4, v5

    :goto_0
    const-string v7, "Scheduled push time can not be in the past"

    invoke-static {v4, v7}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 106
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long v10, v0, v2

    cmp-long v4, v8, v10

    if-gez v4, :cond_2

    :goto_1
    const-string v4, "Scheduled push time can not be more than two weeks in the future"

    invoke-static {v5, v4}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 109
    .end local v0    # "now":J
    .end local v2    # "twoWeeks":J
    :cond_0
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->pushTime:Ljava/lang/Long;

    .line 110
    return-object p0

    .restart local v0    # "now":J
    .restart local v2    # "twoWeeks":J
    :cond_1
    move v4, v6

    .line 105
    goto :goto_0

    :cond_2
    move v5, v6

    .line 106
    goto :goto_1
.end method

.method public pushToAndroid(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;
    .locals 2
    .param p1, "pushToAndroid"    # Ljava/lang/Boolean;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 123
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    .line 124
    return-object p0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushToIOS(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;
    .locals 2
    .param p1, "pushToIOS"    # Ljava/lang/Boolean;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v0, v1}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 116
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    .line 117
    return-object p0

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Lcom/parse/ParseQuery;)Lcom/parse/ParsePush$State$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "Lcom/parse/ParsePush$State$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 143
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Cannot target a null query"

    invoke-static {v0, v3}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Cannot set push targets (i.e. setPushToAndroid or setPushToIOS) when pushing to a query"

    invoke-static {v1, v0}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 147
    invoke-virtual {p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Lcom/parse/ParsePush;->access$100()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v1

    const-class v2, Lcom/parse/ParseInstallation;

    invoke-virtual {v1, v2}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can only push to a query for Installations"

    .line 146
    invoke-static {v0, v1}, Lcom/parse/ParsePush;->access$000(ZLjava/lang/Object;)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;

    .line 151
    iput-object p1, p0, Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;

    .line 152
    return-object p0

    :cond_0
    move v0, v2

    .line 143
    goto :goto_0

    :cond_1
    move v1, v2

    .line 144
    goto :goto_1
.end method
