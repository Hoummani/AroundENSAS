.class Lcom/parse/ParseConfigController;
.super Ljava/lang/Object;
.source "ParseConfigController.java"


# instance fields
.field private currentConfigController:Lcom/parse/ParseCurrentConfigController;

.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;Lcom/parse/ParseCurrentConfigController;)V
    .locals 0
    .param p1, "restClient"    # Lcom/parse/ParseHttpClient;
    .param p2, "currentConfigController"    # Lcom/parse/ParseCurrentConfigController;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parse/ParseConfigController;->restClient:Lcom/parse/ParseHttpClient;

    .line 24
    iput-object p2, p0, Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseConfigController;)Lcom/parse/ParseCurrentConfigController;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseConfigController;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;

    return-object v0
.end method


# virtual methods
.method public getAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lcom/parse/ParseRESTConfigCommand;->fetchConfigCommand(Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;

    move-result-object v0

    .line 32
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/ParseConfigController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseConfigController$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseConfigController$1;-><init>(Lcom/parse/ParseConfigController;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method getCurrentConfigController()Lcom/parse/ParseCurrentConfigController;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;

    return-object v0
.end method
