.class public final Lcom/parse/http/ParseHttpResponse;
.super Ljava/lang/Object;
.source "ParseHttpResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/http/ParseHttpResponse$Builder;
    }
.end annotation


# instance fields
.field private final content:Ljava/io/InputStream;

.field private final contentType:Ljava/lang/String;

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

.field private final reasonPhrase:Ljava/lang/String;

.field private final statusCode:I

.field private final totalSize:J


# direct methods
.method private constructor <init>(Lcom/parse/http/ParseHttpResponse$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/parse/http/ParseHttpResponse$Builder;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    invoke-static {p1}, Lcom/parse/http/ParseHttpResponse$Builder;->access$100(Lcom/parse/http/ParseHttpResponse$Builder;)I

    move-result v0

    iput v0, p0, Lcom/parse/http/ParseHttpResponse;->statusCode:I

    .line 175
    invoke-static {p1}, Lcom/parse/http/ParseHttpResponse$Builder;->access$200(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpResponse;->content:Ljava/io/InputStream;

    .line 176
    invoke-static {p1}, Lcom/parse/http/ParseHttpResponse$Builder;->access$300(Lcom/parse/http/ParseHttpResponse$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/http/ParseHttpResponse;->totalSize:J

    .line 177
    invoke-static {p1}, Lcom/parse/http/ParseHttpResponse$Builder;->access$400(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpResponse;->reasonPhrase:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lcom/parse/http/ParseHttpResponse$Builder;->access$500(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpResponse;->headers:Ljava/util/Map;

    .line 179
    invoke-static {p1}, Lcom/parse/http/ParseHttpResponse$Builder;->access$600(Lcom/parse/http/ParseHttpResponse$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/http/ParseHttpResponse;->contentType:Ljava/lang/String;

    .line 180
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/http/ParseHttpResponse$Builder;Lcom/parse/http/ParseHttpResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/http/ParseHttpResponse$Builder;
    .param p2, "x1"    # Lcom/parse/http/ParseHttpResponse$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/parse/http/ParseHttpResponse;-><init>(Lcom/parse/http/ParseHttpResponse$Builder;)V

    return-void
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
    .line 246
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse;->content:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/parse/http/ParseHttpResponse;->reasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/parse/http/ParseHttpResponse;->statusCode:I

    return v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/parse/http/ParseHttpResponse;->totalSize:J

    return-wide v0
.end method
