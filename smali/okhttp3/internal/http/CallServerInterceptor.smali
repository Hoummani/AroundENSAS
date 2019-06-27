.class public final Lokhttp3/internal/http/CallServerInterceptor;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    }
.end annotation


# instance fields
.field private final forWebSocket:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "forWebSocket"    # Z

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    .line 41
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 24
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    move-object/from16 v11, p1

    check-cast v11, Lokhttp3/internal/http/RealInterceptorChain;

    .line 45
    .local v11, "realChain":Lokhttp3/internal/http/RealInterceptorChain;
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->call()Lokhttp3/Call;

    move-result-object v5

    .line 46
    .local v5, "call":Lokhttp3/Call;
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->httpStream()Lokhttp3/internal/http/HttpCodec;

    move-result-object v10

    .line 47
    .local v10, "httpCodec":Lokhttp3/internal/http/HttpCodec;
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->streamAllocation()Lokhttp3/internal/connection/StreamAllocation;

    move-result-object v18

    .line 48
    .local v18, "streamAllocation":Lokhttp3/internal/connection/StreamAllocation;
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->connection()Lokhttp3/Connection;

    move-result-object v7

    check-cast v7, Lokhttp3/internal/connection/RealConnection;

    .line 49
    .local v7, "connection":Lokhttp3/internal/connection/RealConnection;
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->request()Lokhttp3/Request;

    move-result-object v12

    .line 51
    .local v12, "request":Lokhttp3/Request;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 53
    .local v16, "sentRequestMillis":J
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 54
    invoke-interface {v10, v12}, Lokhttp3/internal/http/HttpCodec;->writeRequestHeaders(Lokhttp3/Request;)V

    .line 55
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v12}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 57
    const/4 v15, 0x0

    .line 58
    .local v15, "responseBuilder":Lokhttp3/Response$Builder;
    invoke-virtual {v12}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-virtual {v12}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v19

    if-eqz v19, :cond_1

    .line 62
    const-string v19, "100-continue"

    const-string v20, "Expect"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 63
    invoke-interface {v10}, Lokhttp3/internal/http/HttpCodec;->flushRequest()V

    .line 64
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 65
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v15

    .line 68
    :cond_0
    if-nez v15, :cond_9

    .line 69
    invoke-virtual {v12}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lokhttp3/internal/duplex/DuplexRequestBody;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 71
    invoke-interface {v10}, Lokhttp3/internal/http/HttpCodec;->flushRequest()V

    .line 72
    new-instance v13, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;

    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    invoke-interface {v10, v12, v0, v1}, Lokhttp3/internal/http/HttpCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;-><init>(Lokio/Sink;)V

    .line 73
    .local v13, "requestBodyOut":Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    .line 74
    .local v4, "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v12}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 95
    .end local v4    # "bufferedRequestBody":Lokio/BufferedSink;
    .end local v13    # "requestBodyOut":Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    :cond_1
    :goto_0
    invoke-virtual {v12}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Lokhttp3/internal/duplex/DuplexRequestBody;

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 96
    invoke-interface {v10}, Lokhttp3/internal/http/HttpCodec;->finishRequest()V

    .line 99
    :cond_2
    if-nez v15, :cond_3

    .line 100
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 101
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v15

    .line 105
    :cond_3
    invoke-virtual {v15, v12}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 106
    invoke-virtual/range {v18 .. v18}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 107
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 109
    sget-object v19, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v10}, Lokhttp3/internal/Internal;->initCodec(Lokhttp3/Response$Builder;Lokhttp3/internal/http/HttpCodec;)V

    .line 110
    invoke-virtual {v15}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    .line 112
    .local v14, "response":Lokhttp3/Response;
    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v6

    .line 113
    .local v6, "code":I
    const/16 v19, 0x64

    move/from16 v0, v19

    if-ne v6, v0, :cond_4

    .line 116
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v10, v0}, Lokhttp3/internal/http/HttpCodec;->readResponseHeaders(Z)Lokhttp3/Response$Builder;

    move-result-object v15

    .line 119
    invoke-virtual {v15, v12}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 120
    invoke-virtual/range {v18 .. v18}, Lokhttp3/internal/connection/StreamAllocation;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lokhttp3/internal/connection/RealConnection;->handshake()Lokhttp3/Handshake;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lokhttp3/Response$Builder;->handshake(Lokhttp3/Handshake;)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 121
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lokhttp3/Response$Builder;->sentRequestAtMillis(J)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Lokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lokhttp3/Response$Builder;

    .line 123
    sget-object v19, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v10}, Lokhttp3/internal/Internal;->initCodec(Lokhttp3/Response$Builder;Lokhttp3/internal/http/HttpCodec;)V

    .line 124
    invoke-virtual {v15}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    .line 126
    invoke-virtual {v14}, Lokhttp3/Response;->code()I

    move-result v6

    .line 129
    :cond_4
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v14}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lokhttp3/internal/http/CallServerInterceptor;->forWebSocket:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x65

    move/from16 v0, v19

    if-ne v6, v0, :cond_a

    .line 133
    invoke-virtual {v14}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v19

    sget-object v20, Lokhttp3/internal/Util;->EMPTY_RESPONSE:Lokhttp3/ResponseBody;

    .line 134
    invoke-virtual/range {v19 .. v20}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 135
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    .line 142
    :goto_1
    const-string v19, "close"

    invoke-virtual {v14}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v20

    const-string v21, "Connection"

    invoke-virtual/range {v20 .. v21}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_5

    const-string v19, "close"

    const-string v20, "Connection"

    .line 143
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 144
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    .line 147
    :cond_6
    const/16 v19, 0xcc

    move/from16 v0, v19

    if-eq v6, v0, :cond_7

    const/16 v19, 0xcd

    move/from16 v0, v19

    if-ne v6, v0, :cond_b

    :cond_7
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-lez v19, :cond_b

    .line 148
    new-instance v19, Ljava/net/ProtocolException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "HTTP "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " had non-zero Content-Length: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 149
    invoke-virtual {v14}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 77
    .end local v6    # "code":I
    .end local v14    # "response":Lokhttp3/Response;
    :cond_8
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 78
    invoke-virtual {v12}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    .line 79
    .local v8, "contentLength":J
    new-instance v13, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;

    .line 80
    invoke-interface {v10, v12, v8, v9}, Lokhttp3/internal/http/HttpCodec;->createRequestBody(Lokhttp3/Request;J)Lokio/Sink;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;-><init>(Lokio/Sink;)V

    .line 81
    .restart local v13    # "requestBodyOut":Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    invoke-static {v13}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v4

    .line 83
    .restart local v4    # "bufferedRequestBody":Lokio/BufferedSink;
    invoke-virtual {v12}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 84
    invoke-interface {v4}, Lokio/BufferedSink;->close()V

    .line 85
    invoke-virtual {v11}, Lokhttp3/internal/http/RealInterceptorChain;->eventListener()Lokhttp3/EventListener;

    move-result-object v19

    iget-wide v0, v13, Lokhttp3/internal/http/CallServerInterceptor$CountingSink;->successfulCount:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v5, v1, v2}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    goto/16 :goto_0

    .line 87
    .end local v4    # "bufferedRequestBody":Lokio/BufferedSink;
    .end local v8    # "contentLength":J
    .end local v13    # "requestBodyOut":Lokhttp3/internal/http/CallServerInterceptor$CountingSink;
    :cond_9
    invoke-virtual {v7}, Lokhttp3/internal/connection/RealConnection;->isMultiplexed()Z

    move-result v19

    if-nez v19, :cond_1

    .line 91
    invoke-virtual/range {v18 .. v18}, Lokhttp3/internal/connection/StreamAllocation;->noNewStreams()V

    goto/16 :goto_0

    .line 137
    .restart local v6    # "code":I
    .restart local v14    # "response":Lokhttp3/Response;
    :cond_a
    invoke-virtual {v14}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v19

    .line 138
    invoke-interface {v10, v14}, Lokhttp3/internal/http/HttpCodec;->openResponseBody(Lokhttp3/Response;)Lokhttp3/ResponseBody;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v19

    .line 139
    invoke-virtual/range {v19 .. v19}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v14

    goto/16 :goto_1

    .line 152
    :cond_b
    return-object v14
.end method
