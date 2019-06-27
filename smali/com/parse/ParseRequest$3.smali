.class Lcom/parse/ParseRequest$3;
.super Ljava/lang/Object;
.source "ParseRequest.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;

.field final synthetic val$client:Lcom/parse/ParseHttpClient;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$request:Lcom/parse/http/ParseHttpRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/http/ParseHttpRequest;Lcom/parse/ProgressCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseRequest;

    .prologue
    .line 134
    .local p0, "this":Lcom/parse/ParseRequest$3;, "Lcom/parse/ParseRequest$3;"
    iput-object p1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iput-object p2, p0, Lcom/parse/ParseRequest$3;->val$client:Lcom/parse/ParseHttpClient;

    iput-object p3, p0, Lcom/parse/ParseRequest$3;->val$request:Lcom/parse/http/ParseHttpRequest;

    iput-object p4, p0, Lcom/parse/ParseRequest$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lcom/parse/ParseRequest$3;, "Lcom/parse/ParseRequest$3;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->val$client:Lcom/parse/ParseHttpClient;

    iget-object v2, p0, Lcom/parse/ParseRequest$3;->val$request:Lcom/parse/http/ParseHttpRequest;

    invoke-virtual {v1, v2}, Lcom/parse/ParseHttpClient;->execute(Lcom/parse/http/ParseHttpRequest;)Lcom/parse/http/ParseHttpResponse;

    move-result-object v0

    .line 138
    .local v0, "response":Lcom/parse/http/ParseHttpResponse;
    iget-object v1, p0, Lcom/parse/ParseRequest$3;->this$0:Lcom/parse/ParseRequest;

    iget-object v2, p0, Lcom/parse/ParseRequest$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-virtual {v1, v0, v2}, Lcom/parse/ParseRequest;->onResponseAsync(Lcom/parse/http/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/parse/ParseRequest$3;, "Lcom/parse/ParseRequest$3;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
