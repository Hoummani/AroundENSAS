.class public final Lcom/parse/Parse$Configuration$Builder;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Parse$Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private applicationId:Ljava/lang/String;

.field private clientBuilder:Lokhttp3/OkHttpClient$Builder;

.field private clientKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private localDataStoreEnabled:Z

.field private maxRetries:I

.field private server:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v2, 0x4

    iput v2, p0, Lcom/parse/Parse$Configuration$Builder;->maxRetries:I

    .line 95
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    .line 102
    .local v1, "metaData":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 103
    const-string v2, "com.parse.SERVER_URL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/Parse$Configuration$Builder;->server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    .line 104
    const-string v2, "com.parse.APPLICATION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    .line 105
    const-string v2, "com.parse.CLIENT_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    .line 108
    .end local v0    # "applicationContext":Landroid/content/Context;
    .end local v1    # "metaData":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/parse/Parse$Configuration$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/Parse$Configuration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/Parse$Configuration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/parse/Parse$Configuration$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/Parse$Configuration$Builder;->clientBuilder:Lokhttp3/OkHttpClient$Builder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/Parse$Configuration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;

    .prologue
    .line 48
    iget v0, p0, Lcom/parse/Parse$Configuration$Builder;->maxRetries:I

    return v0
.end method

.method static synthetic access$800(Lcom/parse/Parse$Configuration$Builder;Z)Lcom/parse/Parse$Configuration$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/Parse$Configuration$Builder;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/parse/Parse$Configuration$Builder;->setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setLocalDatastoreEnabled(Z)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    .line 169
    return-object p0
.end method


# virtual methods
.method public applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->applicationId:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public build()Lcom/parse/Parse$Configuration;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Lcom/parse/Parse$Configuration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/Parse$Configuration;-><init>(Lcom/parse/Parse$Configuration$Builder;Lcom/parse/Parse$1;)V

    return-object v0
.end method

.method public clientBuilder(Lokhttp3/OkHttpClient$Builder;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "builder"    # Lokhttp3/OkHttpClient$Builder;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->clientBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 182
    return-object p0
.end method

.method public clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->clientKey:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public enableLocalDataStore()Lcom/parse/Parse$Configuration$Builder;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/Parse$Configuration$Builder;->localDataStoreEnabled:Z

    .line 164
    return-object p0
.end method

.method public maxRetries(I)Lcom/parse/Parse$Configuration$Builder;
    .locals 0
    .param p1, "maxRetries"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/parse/Parse$Configuration$Builder;->maxRetries:I

    .line 194
    return-object p0
.end method

.method public server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;
    .locals 2
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/parse/Parse$Configuration$Builder;->server:Ljava/lang/String;

    .line 153
    return-object p0
.end method
