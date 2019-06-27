.class Lcom/parse/ParseFileController$4;
.super Ljava/lang/Object;
.source "ParseFileController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFileController;->fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseFileController;

.field final synthetic val$cacheFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/parse/ParseFileController;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseFileController;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/parse/ParseFileController$4;->this$0:Lcom/parse/ParseFileController;

    iput-object p2, p0, Lcom/parse/ParseFileController$4;->val$cacheFile:Ljava/io/File;

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
    .line 186
    iget-object v0, p0, Lcom/parse/ParseFileController$4;->val$cacheFile:Ljava/io/File;

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
    .line 183
    invoke-virtual {p0}, Lcom/parse/ParseFileController$4;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
