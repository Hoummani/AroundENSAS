.class public final Lcom/parse/http/ParseHttpResponse$Builder;
.super Ljava/lang/Object;
.source "ParseHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/http/ParseHttpResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private content:Ljava/io/InputStream;

.field private contentType:Ljava/lang/String;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reasonPhrase:Ljava/lang/String;

.field private statusCode:I

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->totalSize:J

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->headers:Ljava/util/Map;

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/parse/http/ParseHttpResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/parse/http/ParseHttpResponse;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setStatusCode(I)Lcom/parse/http/ParseHttpResponse$Builder;

    .line 51
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;

    .line 52
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getTotalSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/parse/http/ParseHttpResponse$Builder;->setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;

    .line 53
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setContentType(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    .line 54
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;

    .line 55
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/http/ParseHttpResponse$Builder;->setReasonPhrase(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lcom/parse/http/ParseHttpResponse$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 25
    iget v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->statusCode:I

    return v0
.end method

.method static synthetic access$200(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/http/ParseHttpResponse$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->contentType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/http/ParseHttpResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 127
    return-object p0
.end method

.method public build()Lcom/parse/http/ParseHttpResponse;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/parse/http/ParseHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/http/ParseHttpResponse;-><init>(Lcom/parse/http/ParseHttpResponse$Builder;Lcom/parse/http/ParseHttpResponse$1;)V

    return-object v0
.end method

.method public setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 0
    .param p1, "content"    # Ljava/io/InputStream;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/parse/http/ParseHttpResponse$Builder;->content:Ljava/io/InputStream;

    .line 79
    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/parse/http/ParseHttpResponse$Builder;->contentType:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/http/ParseHttpResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/parse/http/ParseHttpResponse$Builder;->headers:Ljava/util/Map;

    .line 115
    return-object p0
.end method

.method public setReasonPhrase(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 0
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/parse/http/ParseHttpResponse$Builder;->reasonPhrase:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public setStatusCode(I)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/parse/http/ParseHttpResponse$Builder;->statusCode:I

    .line 67
    return-object p0
.end method

.method public setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;
    .locals 1
    .param p1, "totalSize"    # J

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/parse/http/ParseHttpResponse$Builder;->totalSize:J

    .line 91
    return-object p0
.end method
