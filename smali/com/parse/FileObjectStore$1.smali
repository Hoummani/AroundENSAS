.class Lcom/parse/FileObjectStore$1;
.super Ljava/lang/Object;
.source "FileObjectStore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/FileObjectStore;->setAsync(Lcom/parse/ParseObject;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/FileObjectStore;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/FileObjectStore;Lcom/parse/ParseObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 93
    .local p0, "this":Lcom/parse/FileObjectStore$1;, "Lcom/parse/FileObjectStore$1;"
    iput-object p1, p0, Lcom/parse/FileObjectStore$1;->this$0:Lcom/parse/FileObjectStore;

    iput-object p2, p0, Lcom/parse/FileObjectStore$1;->val$object:Lcom/parse/ParseObject;

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
    .line 93
    .local p0, "this":Lcom/parse/FileObjectStore$1;, "Lcom/parse/FileObjectStore$1;"
    invoke-virtual {p0}, Lcom/parse/FileObjectStore$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/parse/FileObjectStore$1;, "Lcom/parse/FileObjectStore$1;"
    iget-object v0, p0, Lcom/parse/FileObjectStore$1;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v0}, Lcom/parse/FileObjectStore;->access$000(Lcom/parse/FileObjectStore;)Lcom/parse/ParseObjectCurrentCoder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/FileObjectStore$1;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/FileObjectStore$1;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v2}, Lcom/parse/FileObjectStore;->access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/parse/FileObjectStore;->access$200(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method
