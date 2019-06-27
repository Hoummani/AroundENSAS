.class Lcom/parse/CachedCurrentUserController$4$1$1;
.super Ljava/lang/Object;
.source "CachedCurrentUserController.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$4$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/CachedCurrentUserController$4$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/CachedCurrentUserController$4$1;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$4$1$1;->this$2:Lcom/parse/CachedCurrentUserController$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
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
    .line 182
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 183
    .local v0, "user":Lcom/parse/ParseUser;
    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseUser;->logOutAsync()Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$4$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
