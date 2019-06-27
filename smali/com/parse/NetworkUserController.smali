.class Lcom/parse/NetworkUserController;
.super Ljava/lang/Object;
.source "NetworkUserController.java"

# interfaces
.implements Lcom/parse/ParseUserController;


# static fields
.field private static final STATUS_CODE_CREATED:I = 0xc9


# instance fields
.field private final client:Lcom/parse/ParseHttpClient;

.field private final coder:Lcom/parse/ParseObjectCoder;

.field private final revocableSession:Z


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 1
    .param p1, "client"    # Lcom/parse/ParseHttpClient;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/NetworkUserController;-><init>(Lcom/parse/ParseHttpClient;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseHttpClient;Z)V
    .locals 1
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "revocableSession"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    .line 32
    invoke-static {}, Lcom/parse/ParseObjectCoder;->get()Lcom/parse/ParseObjectCoder;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/NetworkUserController;->coder:Lcom/parse/ParseObjectCoder;

    .line 33
    iput-boolean p2, p0, Lcom/parse/NetworkUserController;->revocableSession:Z

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/parse/NetworkUserController;)Lcom/parse/ParseObjectCoder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/NetworkUserController;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/parse/NetworkUserController;->coder:Lcom/parse/ParseObjectCoder;

    return-object v0
.end method


# virtual methods
.method public getUserAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p1}, Lcom/parse/ParseRESTUserCommand;->getCurrentUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 125
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkUserController$5;

    invoke-direct {v2, p0}, Lcom/parse/NetworkUserController$5;-><init>(Lcom/parse/NetworkUserController;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseUser$State;
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v2, p0, Lcom/parse/NetworkUserController;->coder:Lcom/parse/ParseObjectCoder;

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/parse/ParseObjectCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    .line 81
    .local v1, "objectJSON":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/parse/NetworkUserController;->revocableSession:Z

    .line 80
    invoke-static {v1, v2, v3}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 83
    .local v0, "command":Lcom/parse/ParseRESTUserCommand;
    iget-object v2, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTUserCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/NetworkUserController$3;

    invoke-direct {v3, p0, v0}, Lcom/parse/NetworkUserController$3;-><init>(Lcom/parse/NetworkUserController;Lcom/parse/ParseRESTUserCommand;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public logInAsync(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-boolean v1, p0, Lcom/parse/NetworkUserController;->revocableSession:Z

    invoke-static {p1, p2, v1}, Lcom/parse/ParseRESTUserCommand;->logInUserCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 64
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkUserController$2;

    invoke-direct {v2, p0}, Lcom/parse/NetworkUserController$2;-><init>(Lcom/parse/NetworkUserController;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public logInAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v1, p0, Lcom/parse/NetworkUserController;->revocableSession:Z

    invoke-static {p1, p2, v1}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Ljava/lang/String;Ljava/util/Map;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 106
    .local v0, "command":Lcom/parse/ParseRESTUserCommand;
    iget-object v1, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTUserCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/NetworkUserController$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/parse/NetworkUserController$4;-><init>(Lcom/parse/NetworkUserController;Lcom/parse/ParseRESTUserCommand;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public requestPasswordResetAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "email"    # Ljava/lang/String;
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
    .line 139
    invoke-static {p1}, Lcom/parse/ParseRESTUserCommand;->resetPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 140
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v1, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public signUpAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v2, p0, Lcom/parse/NetworkUserController;->coder:Lcom/parse/ParseObjectCoder;

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/parse/ParseObjectCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-boolean v2, p0, Lcom/parse/NetworkUserController;->revocableSession:Z

    invoke-static {v1, p3, v2}, Lcom/parse/ParseRESTUserCommand;->signUpUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 45
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    iget-object v2, p0, Lcom/parse/NetworkUserController;->client:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/NetworkUserController$1;

    invoke-direct {v3, p0}, Lcom/parse/NetworkUserController$1;-><init>(Lcom/parse/NetworkUserController;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method
