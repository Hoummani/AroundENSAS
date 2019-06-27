.class Lcom/parse/CachedCurrentInstallationController$3$1;
.super Ljava/lang/Object;
.source "CachedCurrentInstallationController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentInstallationController$3;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/CachedCurrentInstallationController$3;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentInstallationController$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/parse/CachedCurrentInstallationController$3;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/parse/CachedCurrentInstallationController$3$1;->this$1:Lcom/parse/CachedCurrentInstallationController$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/CachedCurrentInstallationController$3$1;->this$1:Lcom/parse/CachedCurrentInstallationController$3;

    iget-object v0, v0, Lcom/parse/CachedCurrentInstallationController$3;->this$0:Lcom/parse/CachedCurrentInstallationController;

    invoke-static {v0}, Lcom/parse/CachedCurrentInstallationController;->access$100(Lcom/parse/CachedCurrentInstallationController;)Lcom/parse/ParseObjectStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->existsAsync()Lbolts/Task;

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
    .line 126
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentInstallationController$3$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
