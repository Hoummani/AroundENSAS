.class Lorg/apache/cordova/facebook/ConnectPlugin$8;
.super Ljava/lang/Object;
.source "ConnectPlugin.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/facebook/ConnectPlugin;->makeGraphCall(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

.field final synthetic val$graphContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lorg/apache/cordova/facebook/ConnectPlugin;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/facebook/ConnectPlugin;

    .prologue
    .line 784
    iput-object p1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    iput-object p2, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 787
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v0, :cond_0

    .line 788
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/cordova/facebook/ConnectPlugin;->getFacebookRequestErrorResponse(Lcom/facebook/FacebookRequestError;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V

    .line 793
    :goto_0
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->this$0:Lorg/apache/cordova/facebook/ConnectPlugin;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/cordova/facebook/ConnectPlugin;->access$502(Lorg/apache/cordova/facebook/ConnectPlugin;Ljava/lang/String;)Ljava/lang/String;

    .line 795
    :cond_0
    return-void

    .line 791
    :cond_1
    iget-object v0, p0, Lorg/apache/cordova/facebook/ConnectPlugin$8;->val$graphContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0
.end method
