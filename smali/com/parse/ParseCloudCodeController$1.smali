.class Lcom/parse/ParseCloudCodeController$1;
.super Ljava/lang/Object;
.source "ParseCloudCodeController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCloudCodeController;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;
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
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCloudCodeController;


# direct methods
.method constructor <init>(Lcom/parse/ParseCloudCodeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseCloudCodeController;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/parse/ParseCloudCodeController$1;->this$0:Lcom/parse/ParseCloudCodeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/parse/ParseCloudCodeController$1;->this$0:Lcom/parse/ParseCloudCodeController;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseCloudCodeController;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method
