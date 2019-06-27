.class Lcom/parse/ParsePush$State;
.super Ljava/lang/Object;
.source "ParsePush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePush$State$Builder;
    }
.end annotation


# instance fields
.field private final channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Lorg/json/JSONObject;

.field private final expirationTime:Ljava/lang/Long;

.field private final expirationTimeInterval:Ljava/lang/Long;

.field private final pushTime:Ljava/lang/Long;

.field private final pushToAndroid:Ljava/lang/Boolean;

.field private final pushToIOS:Ljava/lang/Boolean;

.field private final queryState:Lcom/parse/ParseQuery$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery$State",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/parse/ParsePush$State$Builder;)V
    .locals 5
    .param p1, "builder"    # Lcom/parse/ParsePush$State$Builder;

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$300(Lcom/parse/ParsePush$State$Builder;)Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v3

    .line 175
    :goto_0
    iput-object v2, p0, Lcom/parse/ParsePush$State;->channelSet:Ljava/util/Set;

    .line 176
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$400(Lcom/parse/ParsePush$State$Builder;)Lcom/parse/ParseQuery;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_1
    iput-object v3, p0, Lcom/parse/ParsePush$State;->queryState:Lcom/parse/ParseQuery$State;

    .line 177
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$500(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State;->expirationTime:Ljava/lang/Long;

    .line 178
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$600(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State;->expirationTimeInterval:Ljava/lang/Long;

    .line 179
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$700(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State;->pushTime:Ljava/lang/Long;

    .line 180
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$800(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State;->pushToIOS:Ljava/lang/Boolean;

    .line 181
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$900(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParsePush$State;->pushToAndroid:Ljava/lang/Boolean;

    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "copyData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$1000(Lcom/parse/ParsePush$State$Builder;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "copyData":Lorg/json/JSONObject;
    .local v1, "copyData":Lorg/json/JSONObject;
    move-object v0, v1

    .line 189
    .end local v1    # "copyData":Lorg/json/JSONObject;
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :goto_2
    iput-object v0, p0, Lcom/parse/ParsePush$State;->data:Lorg/json/JSONObject;

    .line 190
    return-void

    .line 174
    .end local v0    # "copyData":Lorg/json/JSONObject;
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    .line 175
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$300(Lcom/parse/ParsePush$State$Builder;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$400(Lcom/parse/ParsePush$State$Builder;)Lcom/parse/ParseQuery;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v3

    goto :goto_1

    .line 186
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/parse/ParsePush$State$Builder;Lcom/parse/ParsePush$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ParsePush$State$Builder;
    .param p2, "x1"    # Lcom/parse/ParsePush$1;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parse/ParsePush$State;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    return-void
.end method


# virtual methods
.method public channelSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/parse/ParsePush$State;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method public data()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, "copyData":Lorg/json/JSONObject;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/ParsePush$State;->data:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "copyData":Lorg/json/JSONObject;
    .local v1, "copyData":Lorg/json/JSONObject;
    move-object v0, v1

    .line 228
    .end local v1    # "copyData":Lorg/json/JSONObject;
    .restart local v0    # "copyData":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public expirationTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/parse/ParsePush$State;->expirationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public expirationTimeInterval()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/parse/ParsePush$State;->expirationTimeInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public pushTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/parse/ParsePush$State;->pushTime:Ljava/lang/Long;

    return-object v0
.end method

.method public pushToAndroid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parse/ParsePush$State;->pushToAndroid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public pushToIOS()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/parse/ParsePush$State;->pushToIOS:Ljava/lang/Boolean;

    return-object v0
.end method

.method public queryState()Lcom/parse/ParseQuery$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/parse/ParsePush$State;->queryState:Lcom/parse/ParseQuery$State;

    return-object v0
.end method
