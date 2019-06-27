.class Lcom/parse/NetworkSessionController;
.super Ljava/lang/Object;
.source "NetworkSessionController.java"

# interfaces
.implements Lcom/parse/ParseSessionController;


# instance fields
.field private final client:Lcom/parse/ParseHttpClient;

.field private final coder:Lcom/parse/ParseObjectCoder;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 1
    .param p1, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    .line 23
    invoke-static {}, Lcom/parse/ParseObjectCoder;->get()Lcom/parse/ParseObjectCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/NetworkSessionController;->coder:Lcom/parse/ParseObjectCoder;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/parse/NetworkSessionController;)Lcom/parse/ParseObjectCoder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/NetworkSessionController;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parse/NetworkSessionController;->coder:Lcom/parse/ParseObjectCoder;

    return-object v0
.end method


# virtual methods
.method public getSessionAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    .line 29
    invoke-static {p1}, Lcom/parse/ParseRESTSessionCommand;->getCurrentSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;

    move-result-object v0

    .line 31
    .local v0, "command":Lcom/parse/ParseRESTSessionCommand;
    iget-object v1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTSessionCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkSessionController$1;

    invoke-direct {v2, p0}, Lcom/parse/NetworkSessionController$1;-><init>(Lcom/parse/NetworkSessionController;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public revokeAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Lcom/parse/ParseRESTSessionCommand;->revoke(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    .line 45
    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTSessionCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public upgradeToRevocable(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    .line 52
    invoke-static {p1}, Lcom/parse/ParseRESTSessionCommand;->upgradeToRevocableSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;

    move-result-object v0

    .line 53
    .local v0, "command":Lcom/parse/ParseRESTSessionCommand;
    iget-object v1, p0, Lcom/parse/NetworkSessionController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTSessionCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkSessionController$2;

    invoke-direct {v2, p0}, Lcom/parse/NetworkSessionController$2;-><init>(Lcom/parse/NetworkSessionController;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method
