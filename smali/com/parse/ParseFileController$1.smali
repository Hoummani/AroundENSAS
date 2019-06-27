.class Lcom/parse/ParseFileController$1;
.super Ljava/lang/Object;
.source "ParseFileController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFileController;->saveAsync(Lcom/parse/ParseFile$State;[BLjava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        "Lcom/parse/ParseFile$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFileController;

.field final synthetic val$data:[B

.field final synthetic val$state:Lcom/parse/ParseFile$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseFileController;Lcom/parse/ParseFile$State;[B)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFileController;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/parse/ParseFileController$1;->this$0:Lcom/parse/ParseFileController;

    iput-object p2, p0, Lcom/parse/ParseFileController$1;->val$state:Lcom/parse/ParseFile$State;

    iput-object p3, p0, Lcom/parse/ParseFileController$1;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseFile$State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseFile$State;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 111
    .local v1, "result":Lorg/json/JSONObject;
    new-instance v2, Lcom/parse/ParseFile$State$Builder;

    iget-object v3, p0, Lcom/parse/ParseFileController$1;->val$state:Lcom/parse/ParseFile$State;

    invoke-direct {v2, v3}, Lcom/parse/ParseFile$State$Builder;-><init>(Lcom/parse/ParseFile$State;)V

    const-string v3, "name"

    .line 112
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v2

    const-string v3, "url"

    .line 113
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/ParseFile$State$Builder;->url(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    .line 118
    .local v0, "newState":Lcom/parse/ParseFile$State;
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseFileController$1;->this$0:Lcom/parse/ParseFileController;

    invoke-virtual {v2, v0}, Lcom/parse/ParseFileController;->getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseFileController$1;->val$data:[B

    invoke-static {v2, v3}, Lcom/parse/ParseFileUtils;->writeByteArrayToFile(Ljava/io/File;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController$1;->then(Lbolts/Task;)Lcom/parse/ParseFile$State;

    move-result-object v0

    return-object v0
.end method
