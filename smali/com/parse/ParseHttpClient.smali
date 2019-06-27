.class Lcom/parse/ParseHttpClient;
.super Ljava/lang/Object;
.source "ParseHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;
    }
.end annotation


# instance fields
.field private hasExecuted:Z

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1
    .param p1, "builder"    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lokhttp3/OkHttpClient$Builder;

    .end local p1    # "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-direct {p1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 50
    .restart local p1    # "builder":Lokhttp3/OkHttpClient$Builder;
    :cond_0
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    .line 51
    return-void
.end method

.method static createClient(Lokhttp3/OkHttpClient$Builder;)Lcom/parse/ParseHttpClient;
    .locals 1
    .param p0, "builder"    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    new-instance v0, Lcom/parse/ParseHttpClient;

    invoke-direct {v0, p0}, Lcom/parse/ParseHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method


# virtual methods
.method public final execute(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 1
    .param p1, "request"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseHttpClient;->hasExecuted:Z

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseHttpClient;->executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method executeInternal(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;
    .locals 4
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/parse/ParseHttpClient;->getRequest(Lcom/parse/http/ParseHttpRequest;)Lokhttp3/Request;

    move-result-object v1

    .line 68
    .local v1, "okHttpRequest":Lokhttp3/Request;
    iget-object v3, p0, Lcom/parse/ParseHttpClient;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 70
    .local v0, "okHttpCall":Lokhttp3/Call;
    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 72
    .local v2, "okHttpResponse":Lokhttp3/Response;
    invoke-virtual {p0, v2}, Lcom/parse/ParseHttpClient;->getResponse(Lokhttp3/Response;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v3

    return-object v3
.end method

.method getRequest(Lcom/parse/http/ParseHttpRequest;)Lokhttp3/Request;
    .locals 10
    .param p1, "parseRequest"    # Lcom/parse/http/ParseHttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 114
    .local v5, "okHttpRequestBuilder":Lokhttp3/Request$Builder;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getMethod()Lcom/parse/http/ParseHttpRequest$Method;

    move-result-object v1

    .line 116
    .local v1, "method":Lcom/parse/http/ParseHttpRequest$Method;
    sget-object v7, Lcom/parse/ParseHttpClient$1;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 129
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported http method "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Method;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    :pswitch_0
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    .line 132
    :pswitch_1
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 135
    new-instance v3, Lokhttp3/Headers$Builder;

    invoke-direct {v3}, Lokhttp3/Headers$Builder;-><init>()V

    .line 136
    .local v3, "okHttpHeadersBuilder":Lokhttp3/Headers$Builder;
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getAllHeaders()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 140
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v3}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    .line 141
    .local v2, "okHttpHeaders":Lokhttp3/Headers;
    invoke-virtual {v5, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 144
    invoke-virtual {p1}, Lcom/parse/http/ParseHttpRequest;->getBody()Lcom/parse/http/ParseHttpBody;

    move-result-object v6

    .line 145
    .local v6, "parseBody":Lcom/parse/http/ParseHttpBody;
    const/4 v4, 0x0

    .line 146
    .local v4, "okHttpRequestBody":Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;
    if-eqz v6, :cond_1

    .line 147
    new-instance v4, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;

    .end local v4    # "okHttpRequestBody":Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;
    invoke-direct {v4, v6}, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;-><init>(Lcom/parse/http/ParseHttpBody;)V

    .line 149
    .restart local v4    # "okHttpRequestBody":Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;
    :cond_1
    sget-object v7, Lcom/parse/ParseHttpClient$1;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 159
    :goto_1
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    return-object v7

    .line 151
    :pswitch_2
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->put(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 154
    :pswitch_3
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 157
    :pswitch_4
    invoke-virtual {v5, v4}, Lokhttp3/Request$Builder;->delete(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_1

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method getResponse(Lokhttp3/Response;)Lcom/parse/http/ParseHttpResponse;
    .locals 12
    .param p1, "okHttpResponse"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v6

    .line 81
    .local v6, "statusCode":I
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 84
    .local v1, "content":Ljava/io/InputStream;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    long-to-int v7, v8

    .line 87
    .local v7, "totalSize":I
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    .line 90
    .local v5, "reasonPhrase":Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 92
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    .line 97
    .local v2, "contentType":Ljava/lang/String;
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    .line 98
    .local v0, "body":Lokhttp3/ResponseBody;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 99
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    :cond_1
    new-instance v8, Lcom/parse/http/ParseHttpResponse$Builder;

    invoke-direct {v8}, Lcom/parse/http/ParseHttpResponse$Builder;-><init>()V

    .line 103
    invoke-virtual {v8, v6}, Lcom/parse/http/ParseHttpResponse$Builder;->setStatusCode(I)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 104
    invoke-virtual {v8, v1}, Lcom/parse/http/ParseHttpResponse$Builder;->setContent(Ljava/io/InputStream;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    int-to-long v10, v7

    .line 105
    invoke-virtual {v8, v10, v11}, Lcom/parse/http/ParseHttpResponse$Builder;->setTotalSize(J)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 106
    invoke-virtual {v8, v5}, Lcom/parse/http/ParseHttpResponse$Builder;->setReasonPhrase(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 107
    invoke-virtual {v8, v3}, Lcom/parse/http/ParseHttpResponse$Builder;->setHeaders(Ljava/util/Map;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 108
    invoke-virtual {v8, v2}, Lcom/parse/http/ParseHttpResponse$Builder;->setContentType(Ljava/lang/String;)Lcom/parse/http/ParseHttpResponse$Builder;

    move-result-object v8

    .line 109
    invoke-virtual {v8}, Lcom/parse/http/ParseHttpResponse$Builder;->build()Lcom/parse/http/ParseHttpResponse;

    move-result-object v8

    .line 102
    return-object v8
.end method
