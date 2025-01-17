.class public Lokhttp3/internal/platform/ConscryptPlatform;
.super Lokhttp3/internal/platform/Platform;
.source "ConscryptPlatform.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lokhttp3/internal/platform/Platform;-><init>()V

    .line 36
    return-void
.end method

.method public static buildIfSupported()Lokhttp3/internal/platform/ConscryptPlatform;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 104
    :try_start_0
    const-string v2, "org.conscrypt.Conscrypt"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 106
    invoke-static {}, Lorg/conscrypt/Conscrypt;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v1

    .line 110
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    new-instance v2, Lokhttp3/internal/platform/ConscryptPlatform;

    invoke-direct {v2}, Lokhttp3/internal/platform/ConscryptPlatform;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    goto :goto_0
.end method

.method private getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lorg/conscrypt/Conscrypt;->newProviderBuilder()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->provideTrustManager()Lorg/conscrypt/Conscrypt$ProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/Conscrypt$ProviderBuilder;->build()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1
    .param p1, "socketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 118
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/conscrypt/Conscrypt;->setUseEngineSocket(Ljavax/net/ssl/SSLSocketFactory;Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    if-eqz p2, :cond_0

    .line 68
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 69
    invoke-static {p1, p2}, Lorg/conscrypt/Conscrypt;->setHostname(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-static {p3}, Lokhttp3/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/conscrypt/Conscrypt;->setApplicationProtocols(Ljavax/net/ssl/SSLSocket;[Ljava/lang/String;)V

    .line 78
    .end local v0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 4

    .prologue
    .line 90
    :try_start_0
    const-string v2, "TLSv1.3"

    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 94
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_1
    const-string v2, "TLS"

    invoke-direct {p0}, Lokhttp3/internal/platform/ConscryptPlatform;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-static {v2, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    .line 95
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e2":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No TLS provider"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 81
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->getApplicationProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 43
    invoke-static {p1}, Lorg/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-super {p0, p1}, Lokhttp3/internal/platform/Platform;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 56
    :goto_0
    return-object v2

    .line 49
    :cond_0
    :try_start_0
    const-class v2, Ljava/lang/Object;

    const-string v3, "sslParameters"

    .line 50
    invoke-static {p1, v2, v3}, Lokhttp3/internal/platform/ConscryptPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    .local v1, "sp":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 53
    const-class v2, Ljavax/net/ssl/X509TrustManager;

    const-string v3, "x509TrustManager"

    invoke-static {v1, v2, v3}, Lokhttp3/internal/platform/ConscryptPlatform;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 57
    .end local v1    # "sp":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on Conscrypt"

    invoke-direct {v2, v3, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
