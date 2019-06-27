.class Lcom/parse/ParseFile$1$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$1;->done(Ljava/lang/Integer;)V
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
.field final synthetic this$0:Lcom/parse/ParseFile$1;

.field final synthetic val$percentDone:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$1;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFile$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/parse/ParseFile$1$1;->this$0:Lcom/parse/ParseFile$1;

    iput-object p2, p0, Lcom/parse/ParseFile$1$1;->val$percentDone:Ljava/lang/Integer;

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
    .line 61
    invoke-virtual {p0}, Lcom/parse/ParseFile$1$1;->call()Ljava/lang/Void;

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
    .line 64
    iget-object v0, p0, Lcom/parse/ParseFile$1$1;->this$0:Lcom/parse/ParseFile$1;

    iget-object v0, v0, Lcom/parse/ParseFile$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    iget-object v1, p0, Lcom/parse/ParseFile$1$1;->val$percentDone:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method
