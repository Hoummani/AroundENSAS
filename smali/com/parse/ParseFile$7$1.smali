.class Lcom/parse/ParseFile$7$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile$7;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/io/File;",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseFile$7;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/ParseFile$7;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/parse/ParseFile$7$1;->this$1:Lcom/parse/ParseFile$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$7$1;->then(Lbolts/Task;)[B

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 458
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/io/File;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 460
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-static {v0}, Lcom/parse/ParseFileUtils;->readFileToByteArray(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 464
    :goto_0
    return-object v1

    .line 461
    :catch_0
    move-exception v1

    .line 464
    const/4 v1, 0x0

    goto :goto_0
.end method
