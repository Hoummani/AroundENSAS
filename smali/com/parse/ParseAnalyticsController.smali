.class Lcom/parse/ParseAnalyticsController;
.super Ljava/lang/Object;
.source "ParseAnalyticsController.java"


# instance fields
.field eventuallyQueue:Lcom/parse/ParseEventuallyQueue;


# direct methods
.method public constructor <init>(Lcom/parse/ParseEventuallyQueue;)V
    .locals 0
    .param p1, "eventuallyQueue"    # Lcom/parse/ParseEventuallyQueue;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parse/ParseAnalyticsController;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 23
    return-void
.end method


# virtual methods
.method public trackAppOpenedInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p1, "pushHash"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {p1, p2}, Lcom/parse/ParseRESTAnalyticsCommand;->trackAppOpenedCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    .line 38
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v2, p0, Lcom/parse/ParseAnalyticsController;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v1

    .line 39
    .local v1, "eventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public trackEventInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, p2, p3}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v0

    .line 30
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v2, p0, Lcom/parse/ParseAnalyticsController;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v1

    .line 31
    .local v1, "eventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v2

    return-object v2
.end method
