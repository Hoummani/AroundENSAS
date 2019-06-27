.class Lcom/parse/FileObjectStore$4;
.super Ljava/lang/Object;
.source "FileObjectStore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/FileObjectStore;->deleteAsync()Lbolts/Task;
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


# direct methods
.method constructor <init>(Lcom/parse/FileObjectStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 128
    .local p0, "this":Lcom/parse/FileObjectStore$4;, "Lcom/parse/FileObjectStore$4;"
    iput-object p1, p0, Lcom/parse/FileObjectStore$4;->this$0:Lcom/parse/FileObjectStore;

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
    .line 128
    .local p0, "this":Lcom/parse/FileObjectStore$4;, "Lcom/parse/FileObjectStore$4;"
    invoke-virtual {p0}, Lcom/parse/FileObjectStore$4;->call()Ljava/lang/Void;

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
    .line 131
    .local p0, "this":Lcom/parse/FileObjectStore$4;, "Lcom/parse/FileObjectStore$4;"
    iget-object v0, p0, Lcom/parse/FileObjectStore$4;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v0}, Lcom/parse/FileObjectStore;->access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/FileObjectStore$4;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v0}, Lcom/parse/FileObjectStore;->access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to delete"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
