.class public final Lokhttp3/internal/http/HttpHeaders;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final QUOTED_STRING_DELIMITERS:Lokio/ByteString;

.field private static final TOKEN_DELIMITERS:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "\"\\"

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    .line 46
    const-string v0, "\t ,="

    invoke-static {v0}, Lokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static contentLength(Lokhttp3/Headers;)J
    .locals 2
    .param p0, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 56
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->stringToLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static contentLength(Lokhttp3/Response;)J
    .locals 2
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 52
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Headers;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static hasBody(Lokhttp3/Response;)Z
    .locals 8
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 325
    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 329
    :cond_1
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v0

    .line 330
    .local v0, "responseCode":I
    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v0, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x130

    if-eq v0, v3, :cond_3

    move v1, v2

    .line 333
    goto :goto_0

    .line 338
    :cond_3
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->contentLength(Lokhttp3/Response;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    const-string v3, "chunked"

    const-string v4, "Transfer-Encoding"

    .line 339
    invoke-virtual {p0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 340
    goto :goto_0
.end method

.method public static hasVaryAll(Lokhttp3/Headers;)Z
    .locals 2
    .param p0, "responseHeaders"    # Lokhttp3/Headers;

    .prologue
    .line 91
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "*"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasVaryAll(Lokhttp3/Response;)Z
    .locals 1
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 84
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->hasVaryAll(Lokhttp3/Headers;)Z

    move-result v0

    return v0
.end method

.method private static parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V
    .locals 13
    .param p1, "header"    # Lokio/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;",
            "Lokio/Buffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Challenge;>;"
    const/16 v12, 0x3d

    .line 181
    const/4 v5, 0x0

    .line 185
    .local v5, "peek":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_1

    .line 186
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    .line 187
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 188
    if-nez v5, :cond_1

    .line 233
    :cond_0
    :goto_1
    return-void

    .line 191
    :cond_1
    move-object v7, v5

    .line 194
    .local v7, "schemeName":Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v0

    .line 195
    .local v0, "commaPrefixed":Z
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 196
    if-nez v5, :cond_2

    .line 197
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 198
    new-instance v8, Lokhttp3/Challenge;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    :cond_2
    invoke-static {p1, v12}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v2

    .line 203
    .local v2, "eqCount":I
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v1

    .line 206
    .local v1, "commaSuffixed":Z
    if-nez v0, :cond_4

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 207
    :cond_3
    new-instance v8, Lokhttp3/Challenge;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 208
    invoke-static {v12, v2}, Lokhttp3/internal/http/HttpHeaders;->repeat(CI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 207
    invoke-static {v9, v10}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const/4 v5, 0x0

    .line 210
    goto :goto_0

    .line 214
    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 215
    .local v4, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, v12}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v8

    add-int/2addr v2, v8

    .line 217
    :cond_5
    if-nez v5, :cond_8

    .line 218
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v5

    .line 219
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 235
    :cond_6
    new-instance v8, Lokhttp3/Challenge;

    invoke-direct {v8, v7, v4}, Lokhttp3/Challenge;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_7
    invoke-static {p1, v12}, Lokhttp3/internal/http/HttpHeaders;->skipAll(Lokio/Buffer;B)I

    move-result v2

    .line 222
    :cond_8
    if-eqz v2, :cond_6

    .line 223
    const/4 v8, 0x1

    if-gt v2, v8, :cond_0

    .line 224
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 226
    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-nez v8, :cond_9

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9}, Lokio/Buffer;->getByte(J)B

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_9

    .line 227
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readQuotedString(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    .line 229
    .local v3, "parameterValue":Ljava/lang/String;
    :goto_2
    if-eqz v3, :cond_0

    .line 230
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 231
    .local v6, "replaced":Ljava/lang/String;
    const/4 v5, 0x0

    .line 232
    if-nez v6, :cond_0

    .line 233
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespaceAndCommas(Lokio/Buffer;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p1}, Lokio/Buffer;->exhausted()Z

    move-result v8

    if-nez v8, :cond_5

    goto/16 :goto_1

    .line 228
    .end local v3    # "parameterValue":Ljava/lang/String;
    .end local v6    # "replaced":Ljava/lang/String;
    :cond_9
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->readToken(Lokio/Buffer;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method public static parseChallenges(Lokhttp3/Headers;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Challenge;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Challenge;>;"
    const/4 v0, 0x0

    .local v0, "h":I
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 172
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    move-result-object v1

    .line 174
    .local v1, "header":Lokio/Buffer;
    invoke-static {v2, v1}, Lokhttp3/internal/http/HttpHeaders;->parseChallengeHeader(Ljava/util/List;Lokio/Buffer;)V

    .line 171
    .end local v1    # "header":Lokio/Buffer;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-object v2
.end method

.method public static parseSeconds(Ljava/lang/String;I)I
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 379
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 380
    .local v2, "seconds":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 381
    const p1, 0x7fffffff

    .line 388
    .end local v2    # "seconds":J
    .end local p1    # "defaultValue":I
    :goto_0
    return p1

    .line 382
    .restart local v2    # "seconds":J
    .restart local p1    # "defaultValue":I
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 383
    const/4 p1, 0x0

    goto :goto_0

    .line 385
    :cond_1
    long-to-int p1, v2

    goto :goto_0

    .line 387
    .end local v2    # "seconds":J
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static readQuotedString(Lokio/Buffer;)Ljava/lang/String;
    .locals 12
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    const-wide/16 v10, 0x1

    const/4 v3, 0x0

    const/16 v8, 0x22

    .line 271
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    move-result v4

    if-eq v4, v8, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 272
    :cond_0
    new-instance v2, Lokio/Buffer;

    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 274
    .local v2, "result":Lokio/Buffer;
    :goto_0
    sget-object v4, Lokhttp3/internal/http/HttpHeaders;->QUOTED_STRING_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v4}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v0

    .line 275
    .local v0, "i":J
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 283
    :cond_1
    :goto_1
    return-object v3

    .line 277
    :cond_2
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->getByte(J)B

    move-result v4

    if-ne v4, v8, :cond_3

    .line 278
    invoke-virtual {v2, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 279
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 280
    invoke-virtual {v2}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 283
    :cond_3
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    add-long v6, v0, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 284
    invoke-virtual {v2, p0, v0, v1}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 285
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 286
    invoke-virtual {v2, p0, v10, v11}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    goto :goto_0
.end method

.method private static readToken(Lokio/Buffer;)Ljava/lang/String;
    .locals 6
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    .line 296
    :try_start_0
    sget-object v1, Lokhttp3/internal/http/HttpHeaders;->TOKEN_DELIMITERS:Lokio/ByteString;

    invoke-virtual {p0, v1}, Lokio/Buffer;->indexOfElement(Lokio/ByteString;)J

    move-result-wide v2

    .line 297
    .local v2, "tokenSize":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    .line 299
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 299
    :goto_0
    return-object v1

    .line 301
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 302
    .end local v2    # "tokenSize":J
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static receiveHeaders(Lokhttp3/CookieJar;Lokhttp3/HttpUrl;Lokhttp3/Headers;)V
    .locals 2
    .param p0, "cookieJar"    # Lokhttp3/CookieJar;
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 314
    sget-object v1, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    if-ne p0, v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {p1, p2}, Lokhttp3/Cookie;->parseAll(Lokhttp3/HttpUrl;Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v0

    .line 317
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    invoke-interface {p0, p1, v0}, Lokhttp3/CookieJar;->saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V

    goto :goto_0
.end method

.method private static repeat(CI)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # C
    .param p1, "count"    # I

    .prologue
    .line 308
    new-array v0, p1, [C

    .line 309
    .local v0, "array":[C
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([CC)V

    .line 310
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private static skipAll(Lokio/Buffer;B)I
    .locals 4
    .param p0, "buffer"    # Lokio/Buffer;
    .param p1, "b"    # B

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v1

    if-ne v1, p1, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    .line 260
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 262
    :cond_0
    return v0
.end method

.method public static skipUntil(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I
    .param p2, "characters"    # Ljava/lang/String;

    .prologue
    .line 351
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 356
    :cond_0
    return p1

    .line 351
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static skipWhitespace(Ljava/lang/String;I)I
    .locals 2
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .prologue
    .line 364
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 365
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    .local v0, "c":C
    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    .line 370
    .end local v0    # "c":C
    :cond_0
    return p1

    .line 364
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static skipWhitespaceAndCommas(Lokio/Buffer;)Z
    .locals 4
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "commaFound":Z
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 243
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v0

    .line 244
    .local v0, "b":B
    const/16 v2, 0x2c

    if-ne v0, v2, :cond_0

    .line 245
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 246
    const/4 v1, 0x1

    goto :goto_0

    .line 247
    :cond_0
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_2

    .line 248
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    goto :goto_0

    .line 253
    .end local v0    # "b":B
    :cond_2
    return v1
.end method

.method private static stringToLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 60
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-wide v2

    .line 62
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static varyFields(Lokhttp3/Headers;)Ljava/util/Set;
    .locals 9
    .param p0, "responseHeaders"    # Lokhttp3/Headers;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 103
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 104
    const-string v5, "Vary"

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 103
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    new-instance v1, Ljava/util/TreeSet;

    .end local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 110
    .restart local v1    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v4, v6, v5

    .line 111
    .local v4, "varyField":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 114
    .end local v3    # "value":Ljava/lang/String;
    .end local v4    # "varyField":Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private static varyFields(Lokhttp3/Response;)Ljava/util/Set;
    .locals 1
    .param p0, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Response;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;
    .locals 6
    .param p0, "requestHeaders"    # Lokhttp3/Headers;
    .param p1, "responseHeaders"    # Lokhttp3/Headers;

    .prologue
    .line 135
    invoke-static {p1}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Headers;)Ljava/util/Set;

    move-result-object v4

    .line 136
    .local v4, "varyFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lokhttp3/internal/Util;->EMPTY_HEADERS:Lokhttp3/Headers;

    .line 145
    :goto_0
    return-object v5

    .line 138
    :cond_0
    new-instance v2, Lokhttp3/Headers$Builder;

    invoke-direct {v2}, Lokhttp3/Headers$Builder;-><init>()V

    .line 139
    .local v2, "result":Lokhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 140
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "fieldName":Ljava/lang/String;
    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 139
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 145
    .end local v0    # "fieldName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v5

    goto :goto_0
.end method

.method public static varyHeaders(Lokhttp3/Response;)Lokhttp3/Headers;
    .locals 3
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 125
    invoke-virtual {p0}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v0

    .line 126
    .local v0, "requestHeaders":Lokhttp3/Headers;
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 127
    .local v1, "responseHeaders":Lokhttp3/Headers;
    invoke-static {v0, v1}, Lokhttp3/internal/http/HttpHeaders;->varyHeaders(Lokhttp3/Headers;Lokhttp3/Headers;)Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method public static varyMatches(Lokhttp3/Response;Lokhttp3/Headers;Lokhttp3/Request;)Z
    .locals 4
    .param p0, "cachedResponse"    # Lokhttp3/Response;
    .param p1, "cachedRequest"    # Lokhttp3/Headers;
    .param p2, "newRequest"    # Lokhttp3/Request;

    .prologue
    .line 74
    invoke-static {p0}, Lokhttp3/internal/http/HttpHeaders;->varyFields(Lokhttp3/Response;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 75
    .local v0, "field":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 77
    .end local v0    # "field":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
