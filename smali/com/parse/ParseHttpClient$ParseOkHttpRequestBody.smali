.class Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;
.super Lokhttp3/RequestBody;
.source "ParseHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseOkHttpRequestBody"
.end annotation


# instance fields
.field private parseBody:Lcom/parse/http/ParseHttpBody;


# direct methods
.method constructor <init>(Lcom/parse/http/ParseHttpBody;)V
    .locals 0
    .param p1, "parseBody"    # Lcom/parse/http/ParseHttpBody;

    .prologue
    .line 166
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    .line 168
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v0}, Lcom/parse/http/ParseHttpBody;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 2

    .prologue
    .line 177
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "contentType":Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-virtual {v1}, Lcom/parse/http/ParseHttpBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    goto :goto_0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 2
    .param p1, "bufferedSink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/parse/ParseHttpClient$ParseOkHttpRequestBody;->parseBody:Lcom/parse/http/ParseHttpBody;

    invoke-interface {p1}, Lokio/BufferedSink;->outputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/http/ParseHttpBody;->writeTo(Ljava/io/OutputStream;)V

    .line 184
    return-void
.end method
