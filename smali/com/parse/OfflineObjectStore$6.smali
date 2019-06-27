.class Lcom/parse/OfflineObjectStore$6;
.super Ljava/lang/Object;
.source "OfflineObjectStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->deleteAsync()Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineObjectStore;

.field final synthetic val$ldsTask:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/OfflineObjectStore;Lbolts/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineObjectStore;

    .prologue
    .line 126
    .local p0, "this":Lcom/parse/OfflineObjectStore$6;, "Lcom/parse/OfflineObjectStore$6;"
    iput-object p1, p0, Lcom/parse/OfflineObjectStore$6;->this$0:Lcom/parse/OfflineObjectStore;

    iput-object p2, p0, Lcom/parse/OfflineObjectStore$6;->val$ldsTask:Lbolts/Task;

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
    .line 130
    .local p0, "this":Lcom/parse/OfflineObjectStore$6;, "Lcom/parse/OfflineObjectStore$6;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineObjectStore$6;->val$ldsTask:Lbolts/Task;

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
    .local p0, "this":Lcom/parse/OfflineObjectStore$6;, "Lcom/parse/OfflineObjectStore$6;"
    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$6;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
