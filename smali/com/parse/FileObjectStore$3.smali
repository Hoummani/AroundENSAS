.class Lcom/parse/FileObjectStore$3;
.super Ljava/lang/Object;
.source "FileObjectStore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/FileObjectStore;->existsAsync()Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/FileObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/FileObjectStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 118
    .local p0, "this":Lcom/parse/FileObjectStore$3;, "Lcom/parse/FileObjectStore$3;"
    iput-object p1, p0, Lcom/parse/FileObjectStore$3;->this$0:Lcom/parse/FileObjectStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lcom/parse/FileObjectStore$3;, "Lcom/parse/FileObjectStore$3;"
    iget-object v0, p0, Lcom/parse/FileObjectStore$3;->this$0:Lcom/parse/FileObjectStore;

    invoke-static {v0}, Lcom/parse/FileObjectStore;->access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

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
    .line 118
    .local p0, "this":Lcom/parse/FileObjectStore$3;, "Lcom/parse/FileObjectStore$3;"
    invoke-virtual {p0}, Lcom/parse/FileObjectStore$3;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
