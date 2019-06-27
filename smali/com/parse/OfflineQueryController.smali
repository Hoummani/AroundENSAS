.class Lcom/parse/OfflineQueryController;
.super Lcom/parse/AbstractQueryController;
.source "OfflineQueryController.java"


# instance fields
.field private final networkController:Lcom/parse/ParseQueryController;

.field private final offlineStore:Lcom/parse/OfflineStore;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQueryController;)V
    .locals 0
    .param p1, "store"    # Lcom/parse/OfflineStore;
    .param p2, "network"    # Lcom/parse/ParseQueryController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/parse/AbstractQueryController;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parse/OfflineQueryController;->offlineStore:Lcom/parse/OfflineStore;

    .line 23
    iput-object p2, p0, Lcom/parse/OfflineQueryController;->networkController:Lcom/parse/ParseQueryController;

    .line 24
    return-void
.end method


# virtual methods
.method public countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/parse/OfflineQueryController;->offlineStore:Lcom/parse/OfflineStore;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->pinName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/parse/OfflineStore;->countFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryController;->networkController:Lcom/parse/ParseQueryController;

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/parse/OfflineQueryController;->offlineStore:Lcom/parse/OfflineStore;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->pinName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/parse/OfflineStore;->findFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryController;->networkController:Lcom/parse/ParseQueryController;

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method
