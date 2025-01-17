.class public final Lokhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lokhttp3/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lokhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lokhttp3/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "certificatePinner"    # Lokhttp3/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "proxyAuthenticator"    # Lokhttp3/Authenticator;
    .param p9, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lokhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lokhttp3/CertificatePinner;",
            "Lokhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 56
    if-eqz p5, :cond_0

    const-string v0, "https"

    :goto_0
    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 61
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    const-string v0, "http"

    goto :goto_0

    .line 62
    :cond_1
    iput-object p3, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    .line 64
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p4, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 67
    if-nez p8, :cond_3

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_3
    iput-object p8, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 72
    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_4
    invoke-static {p10}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 75
    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_5
    invoke-static {p11}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 78
    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_6
    iput-object p12, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 81
    iput-object p9, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 82
    iput-object p5, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    iput-object p6, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 84
    iput-object p7, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 85
    return-void
.end method


# virtual methods
.method public certificatePinner()Lokhttp3/CertificatePinner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    instance-of v0, p1, Lokhttp3/Address;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    move-object v0, p1

    check-cast v0, Lokhttp3/Address;

    iget-object v0, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 155
    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/Address;

    .line 156
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lokhttp3/Address;->equalsNonHost(Lokhttp3/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method equalsNonHost(Lokhttp3/Address;)Z
    .locals 2
    .param p1, "that"    # Lokhttp3/Address;

    .prologue
    .line 175
    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    iget-object v1, p1, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v1, p1, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 180
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 181
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 182
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v1, p1, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 183
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/Address;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 160
    const/16 v0, 0x11

    .line 161
    .local v0, "result":I
    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 162
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 163
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 164
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 165
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 166
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 167
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 168
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 169
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 170
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 171
    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address{"

    .line 189
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 190
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 193
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public url()Lokhttp3/HttpUrl;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
