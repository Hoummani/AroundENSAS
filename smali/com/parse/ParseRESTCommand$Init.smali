.class abstract Lcom/parse/ParseRESTCommand$Init;
.super Ljava/lang/Object;
.source "ParseRESTCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRESTCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Init"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseRESTCommand$Init",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private httpPath:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field private jsonParameters:Lorg/json/JSONObject;

.field private localId:Ljava/lang/String;

.field public masterKey:Ljava/lang/String;

.field private method:Lcom/parse/http/ParseHttpRequest$Method;

.field private operationSetUUID:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    iput-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/http/ParseHttpRequest$Method;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRESTCommand$Init;)Lcom/parse/http/ParseHttpRequest$Method;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/http/ParseHttpRequest$Method;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseRESTCommand$Init;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->jsonParameters:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->operationSetUUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand$Init;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/parse/ParseRESTCommand$Init;->localId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public httpPath(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "httpPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public installationId(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "installationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->installationId:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public jsonParameters(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "jsonParameters"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->jsonParameters:Lorg/json/JSONObject;

    .line 97
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public localId(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "localId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->localId:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public masterKey(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "masterKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->masterKey:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public method(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "method"    # Lcom/parse/http/ParseHttpRequest$Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/http/ParseHttpRequest$Method;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 87
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method public operationSetUUID(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "operationSetUUID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->operationSetUUID:Ljava/lang/String;

    .line 102
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/parse/ParseRESTCommand$Init;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public sessionToken(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/parse/ParseRESTCommand$Init;, "Lcom/parse/ParseRESTCommand$Init<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseRESTCommand$Init;->sessionToken:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Init;->self()Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    return-object v0
.end method
