.class Lcom/parse/OfflineObjectStore$2;
.super Ljava/lang/Object;
.source "OfflineObjectStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->setAsync(Lcom/parse/ParseObject;)Lbolts/Task;
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

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineObjectStore;Lcom/parse/ParseObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineObjectStore;

    .prologue
    .line 62
    .local p0, "this":Lcom/parse/OfflineObjectStore$2;, "Lcom/parse/OfflineObjectStore$2;"
    iput-object p1, p0, Lcom/parse/OfflineObjectStore$2;->this$0:Lcom/parse/OfflineObjectStore;

    iput-object p2, p0, Lcom/parse/OfflineObjectStore$2;->val$object:Lcom/parse/ParseObject;

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
    .line 65
    .local p0, "this":Lcom/parse/OfflineObjectStore$2;, "Lcom/parse/OfflineObjectStore$2;"
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineObjectStore$2;->val$object:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineObjectStore$2;->this$0:Lcom/parse/OfflineObjectStore;

    invoke-static {v1}, Lcom/parse/OfflineObjectStore;->access$000(Lcom/parse/OfflineObjectStore;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;Z)Lbolts/Task;

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
    .line 62
    .local p0, "this":Lcom/parse/OfflineObjectStore$2;, "Lcom/parse/OfflineObjectStore$2;"
    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
