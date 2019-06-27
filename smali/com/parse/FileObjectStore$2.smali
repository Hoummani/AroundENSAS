.class Lcom/parse/FileObjectStore$2;
.super Ljava/lang/Object;
.source "FileObjectStore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/FileObjectStore;->getAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/FileObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/FileObjectStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 105
    .local p0, "this":Lcom/parse/FileObjectStore$2;, "Lcom/parse/FileObjectStore$2;"
    iput-object p1, p0, Lcom/parse/FileObjectStore$2;->this$0:Lcom/parse/FileObjectStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lcom/parse/FileObjectStore$2;, "Lcom/parse/FileObjectStore$2;"
    iget-object v0, p0, Lcom/parse/FileObjectStore$2;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v0}, Lcom/parse/FileObjectStore;->access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/FileObjectStore$2;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v0}, Lcom/parse/FileObjectStore;->access$000(Lcom/parse/FileObjectStore;)Lcom/parse/ParseObjectCurrentCoder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/FileObjectStore$2;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v1}, Lcom/parse/FileObjectStore;->access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/FileObjectStore$2;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v2}, Lcom/parse/FileObjectStore;->access$300(Lcom/parse/FileObjectStore;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseObject$State;->newBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/parse/FileObjectStore;->access$400(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/parse/FileObjectStore$2;, "Lcom/parse/FileObjectStore$2;"
    invoke-virtual {p0}, Lcom/parse/FileObjectStore$2;->call()Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
