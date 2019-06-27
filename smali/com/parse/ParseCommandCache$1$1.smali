.class Lcom/parse/ParseCommandCache$1$1;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache$1;->networkConnectivityStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseCommandCache$1;

.field final synthetic val$connectionLost:Z

.field final synthetic val$isConnected:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache$1;ZZ)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseCommandCache$1;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/parse/ParseCommandCache$1$1;->this$1:Lcom/parse/ParseCommandCache$1;

    iput-boolean p2, p0, Lcom/parse/ParseCommandCache$1$1;->val$connectionLost:Z

    iput-boolean p3, p0, Lcom/parse/ParseCommandCache$1$1;->val$isConnected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/parse/ParseCommandCache$1$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/parse/ParseCommandCache$1$1;->val$connectionLost:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/parse/ParseCommandCache$1$1;->this$1:Lcom/parse/ParseCommandCache$1;

    iget-object v0, v0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 121
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseCommandCache$1$1;->this$1:Lcom/parse/ParseCommandCache$1;

    iget-object v0, v0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    iget-boolean v1, p0, Lcom/parse/ParseCommandCache$1$1;->val$isConnected:Z

    invoke-virtual {v0, v1}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    goto :goto_0
.end method
