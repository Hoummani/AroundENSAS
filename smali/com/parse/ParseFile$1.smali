.class final Lcom/parse/ParseFile$1;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lcom/parse/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/ProgressCallback;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parse/ParseFile$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "percentDone"    # Ljava/lang/Integer;

    .prologue
    .line 61
    new-instance v0, Lcom/parse/ParseFile$1$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseFile$1$1;-><init>(Lcom/parse/ParseFile$1;Ljava/lang/Integer;)V

    .line 67
    invoke-static {}, Lcom/parse/ParseExecutors;->main()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 68
    return-void
.end method
