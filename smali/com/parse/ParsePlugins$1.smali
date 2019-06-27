.class Lcom/parse/ParsePlugins$1;
.super Ljava/lang/Object;
.source "ParsePlugins.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePlugins;


# direct methods
.method constructor <init>(Lcom/parse/ParsePlugins;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePlugins;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 5
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 114
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "X-Parse-Application-Id"

    iget-object v4, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    .line 115
    invoke-static {v4}, Lcom/parse/ParsePlugins;->access$000(Lcom/parse/ParsePlugins;)Lcom/parse/Parse$Configuration;

    move-result-object v4

    iget-object v4, v4, Lcom/parse/Parse$Configuration;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "X-Parse-Client-Version"

    .line 116
    invoke-static {}, Lcom/parse/Parse;->externalVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "X-Parse-App-Build-Version"

    .line 118
    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "X-Parse-App-Display-Version"

    .line 120
    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "X-Parse-OS-Version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 121
    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    .line 122
    invoke-virtual {v4}, Lcom/parse/ParsePlugins;->userAgent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 123
    .local v0, "headersBuilder":Lokhttp3/Headers$Builder;
    const-string v2, "X-Parse-Installation-Id"

    invoke-virtual {v1, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 125
    const-string v2, "X-Parse-Installation-Id"

    iget-object v3, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-virtual {v3}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-static {v2}, Lcom/parse/ParsePlugins;->access$000(Lcom/parse/ParsePlugins;)Lcom/parse/Parse$Configuration;

    move-result-object v2

    iget-object v2, v2, Lcom/parse/Parse$Configuration;->clientKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 129
    const-string v2, "X-Parse-Client-Key"

    iget-object v3, p0, Lcom/parse/ParsePlugins$1;->this$0:Lcom/parse/ParsePlugins;

    invoke-static {v3}, Lcom/parse/ParsePlugins;->access$000(Lcom/parse/ParsePlugins;)Lcom/parse/Parse$Configuration;

    move-result-object v3

    iget-object v3, v3, Lcom/parse/Parse$Configuration;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 131
    :cond_1
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 132
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 134
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method
