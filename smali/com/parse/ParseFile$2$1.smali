.class Lcom/parse/ParseFile$2$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$2;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseFile$State;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$2;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseFile$2;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

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
            "Lcom/parse/ParseFile$State;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseFile$State;>;"
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

    iget-object v1, v0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseFile$State;

    invoke-static {v1, v0}, Lcom/parse/ParseFile;->access$402(Lcom/parse/ParseFile;Lcom/parse/ParseFile$State;)Lcom/parse/ParseFile$State;

    .line 351
    iget-object v0, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

    iget-object v0, v0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iput-object v2, v0, Lcom/parse/ParseFile;->data:[B

    .line 352
    iget-object v0, p0, Lcom/parse/ParseFile$2$1;->this$1:Lcom/parse/ParseFile$2;

    iget-object v0, v0, Lcom/parse/ParseFile$2;->this$0:Lcom/parse/ParseFile;

    iput-object v2, v0, Lcom/parse/ParseFile;->file:Ljava/io/File;

    .line 353
    invoke-virtual {p1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

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
    .line 345
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$2$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
