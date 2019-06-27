.class Lcom/parse/ParsePushController;
.super Ljava/lang/Object;
.source "ParsePushController.java"


# static fields
.field static final DEVICE_TYPE_ANDROID:Ljava/lang/String; = "android"

.field static final DEVICE_TYPE_IOS:Ljava/lang/String; = "ios"


# instance fields
.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 0
    .param p1, "restClient"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/parse/ParsePushController;->restClient:Lcom/parse/ParseHttpClient;

    .line 21
    return-void
.end method


# virtual methods
.method buildRESTSendPushCommand(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lcom/parse/ParseRESTCommand;
    .locals 10
    .param p1, "state"    # Lcom/parse/ParsePush$State;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    .local v2, "deviceType":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v3

    if-nez v3, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToAndroid()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToAndroid()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v8, v0

    .line 36
    .local v8, "willPushToAndroid":Z
    :goto_0
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToIOS()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToIOS()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    move v9, v0

    .line 37
    .local v9, "willPushToIOS":Z
    :goto_1
    if-eqz v9, :cond_3

    if-eqz v8, :cond_3

    .line 45
    .end local v8    # "willPushToAndroid":Z
    .end local v9    # "willPushToIOS":Z
    :cond_0
    :goto_2
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->channelSet()Ljava/util/Set;

    move-result-object v1

    .line 46
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTimeInterval()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->data()Lorg/json/JSONObject;

    move-result-object v6

    move-object v7, p2

    .line 45
    invoke-static/range {v0 .. v7}, Lcom/parse/ParseRESTPushCommand;->sendPushCommand(Lcom/parse/ParseQuery$State;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTPushCommand;

    move-result-object v0

    return-object v0

    :cond_1
    move v8, v1

    .line 35
    goto :goto_0

    .restart local v8    # "willPushToAndroid":Z
    :cond_2
    move v9, v1

    .line 36
    goto :goto_1

    .line 39
    .restart local v9    # "willPushToIOS":Z
    :cond_3
    if-eqz v9, :cond_4

    .line 40
    const-string v2, "ios"

    goto :goto_2

    .line 41
    :cond_4
    if-eqz v8, :cond_0

    .line 42
    const-string v2, "android"

    goto :goto_2
.end method

.method public sendInBackground(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "state"    # Lcom/parse/ParsePush$State;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParsePush$State;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushController;->buildRESTSendPushCommand(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePushController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
