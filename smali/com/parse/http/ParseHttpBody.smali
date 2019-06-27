.class public abstract Lcom/parse/http/ParseHttpBody;
.super Ljava/lang/Object;
.source "ParseHttpBody.java"


# instance fields
.field private final contentLength:J

.field private final contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentLength"    # J

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/parse/http/ParseHttpBody;->contentType:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Lcom/parse/http/ParseHttpBody;->contentLength:J

    .line 54
    return-void
.end method


# virtual methods
.method public abstract getContent()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/parse/http/ParseHttpBody;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parse/http/ParseHttpBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
