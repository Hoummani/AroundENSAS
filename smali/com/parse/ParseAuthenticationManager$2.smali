.class Lcom/parse/ParseAuthenticationManager$2;
.super Ljava/lang/Object;
.source "ParseAuthenticationManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAuthenticationManager;->restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseAuthenticationManager;

.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$callback:Lcom/parse/AuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseAuthenticationManager;Lcom/parse/AuthenticationCallback;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseAuthenticationManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/parse/ParseAuthenticationManager$2;->this$0:Lcom/parse/ParseAuthenticationManager;

    iput-object p2, p0, Lcom/parse/ParseAuthenticationManager$2;->val$callback:Lcom/parse/AuthenticationCallback;

    iput-object p3, p0, Lcom/parse/ParseAuthenticationManager$2;->val$authData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager$2;->val$callback:Lcom/parse/AuthenticationCallback;

    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager$2;->val$authData:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/parse/AuthenticationCallback;->onRestore(Ljava/util/Map;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationManager$2;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
