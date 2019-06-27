.class Lcom/parse/ParseConfigController$1$1;
.super Ljava/lang/Object;
.source "ParseConfigController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfigController$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseConfig;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseConfigController$1;

.field final synthetic val$config:Lcom/parse/ParseConfig;


# direct methods
.method constructor <init>(Lcom/parse/ParseConfigController$1;Lcom/parse/ParseConfig;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseConfigController$1;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/parse/ParseConfigController$1$1;->this$1:Lcom/parse/ParseConfigController$1;

    iput-object p2, p0, Lcom/parse/ParseConfigController$1$1;->val$config:Lcom/parse/ParseConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/ParseConfig;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseConfigController$1$1;->val$config:Lcom/parse/ParseConfig;

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfigController$1$1;->then(Lbolts/Task;)Lcom/parse/ParseConfig;

    move-result-object v0

    return-object v0
.end method
