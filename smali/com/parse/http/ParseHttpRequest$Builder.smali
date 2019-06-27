.class public final Lcom/parse/http/ParseHttpRequest$Builder;
.super Ljava/lang/Object;
.source "ParseHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/http/ParseHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private body:Lcom/parse/http/ParseHttpBody;

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

.field private method:Lcom/parse/http/ParseHttpRequest$Method;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->headers:Ljava/util/Map;

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/parse/http/ParseHttpRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/parse/http/ParseHttpRequest;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest;->access$000(Lcom/parse/http/ParseHttpRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->url:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest;->access$100(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest;->access$200(Lcom/parse/http/ParseHttpRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->headers:Ljava/util/Map;

    .line 111
    invoke-static {p1}, Lcom/parse/http/ParseHttpRequest;->access$300(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpBody;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->body:Lcom/parse/http/ParseHttpBody;

    .line 112
    return-void
.end method

.method static synthetic access$500(Lcom/parse/http/ParseHttpRequest$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/http/ParseHttpRequest$Builder;)Lcom/parse/http/ParseHttpRequest$Method;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->method:Lcom/parse/http/ParseHttpRequest$Method;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/http/ParseHttpRequest$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->headers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/http/ParseHttpRequest$Builder;)Lcom/parse/http/ParseHttpBody;
    .locals 1
    .param p0, "x0"    # Lcom/parse/http/ParseHttpRequest$Builder;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->body:Lcom/parse/http/ParseHttpBody;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/http/ParseHttpRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    return-object p0
.end method

.method public build()Lcom/parse/http/ParseHttpRequest;
    .locals 2

    .prologue
    .line 194
    new-instance v0, Lcom/parse/http/ParseHttpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/http/ParseHttpRequest;-><init>(Lcom/parse/http/ParseHttpRequest$Builder;Lcom/parse/http/ParseHttpRequest$1;)V

    return-object v0
.end method

.method public setBody(Lcom/parse/http/ParseHttpBody;)Lcom/parse/http/ParseHttpRequest$Builder;
    .locals 0
    .param p1, "body"    # Lcom/parse/http/ParseHttpBody;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/parse/http/ParseHttpRequest$Builder;->body:Lcom/parse/http/ParseHttpBody;

    .line 147
    return-object p0
.end method

.method public setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/http/ParseHttpRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/parse/http/ParseHttpRequest$Builder;->headers:Ljava/util/Map;

    .line 185
    return-object p0
.end method

.method public setMethod(Lcom/parse/http/ParseHttpRequest$Method;)Lcom/parse/http/ParseHttpRequest$Builder;
    .locals 0
    .param p1, "method"    # Lcom/parse/http/ParseHttpRequest$Method;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/parse/http/ParseHttpRequest$Builder;->method:Lcom/parse/http/ParseHttpRequest$Method;

    .line 135
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Builder;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/parse/http/ParseHttpRequest$Builder;->url:Ljava/lang/String;

    .line 123
    return-object p0
.end method
