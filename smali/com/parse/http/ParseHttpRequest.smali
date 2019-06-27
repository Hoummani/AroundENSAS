.class public final Lcom/parse/http/ParseHttpRequest;
.super Ljava/lang/Object;
.source "ParseHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/http/ParseHttpRequest$Builder;,
        Lcom/parse/http/ParseHttpRequest$Method;
    }
.end annotation


# instance fields
.field private final body:Lcom/parse/http/ParseHttpBody;

.field private final headers:Ljava/util/Map;
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

.field private final method:Lcom/parse/http/ParseHttpRequest$Method;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/parse/http/ParseHttpRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest$Builder;->access$500(Lcom/parse/http/ParseHttpRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest;->url:Ljava/lang/String;

    .line 205
    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest$Builder;->access$600(Lcom/parse/http/ParseHttpRequest$Builder;)Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest$Builder;->access$700(Lcom/parse/http/ParseHttpRequest$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest;->headers:Ljava/util/Map;

    .line 207
    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest$Builder;->access$800(Lcom/parse/http/ParseHttpRequest$Builder;)Lcom/parse/http/ParseHttpBody;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest;->body:Lcom/parse/http/ParseHttpBody;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/http/ParseHttpRequest$Builder;Lcom/parse/http/ParseHttpRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/http/ParseHttpRequest$Builder;
    .param p2, "x1"    # Lcom/parse/http/ParseHttpRequest$1;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/parse/http/ParseHttpRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Builder;)V

    return-void
.end method

.method static synthetic access$000(Lcom/parse/http/ParseHttpRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpRequest$Method;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/http/ParseHttpRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpBody;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->body:Lcom/parse/http/ParseHttpBody;

    return-object v0
.end method


# virtual methods
.method public getAllHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getBody()Lcom/parse/http/ParseHttpBody;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->body:Lcom/parse/http/ParseHttpBody;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Lcom/parse/http/ParseHttpRequest$Method;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->method:Lcom/parse/http/ParseHttpRequest$Method;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest;->url:Ljava/lang/String;

    return-object v0
.end method
