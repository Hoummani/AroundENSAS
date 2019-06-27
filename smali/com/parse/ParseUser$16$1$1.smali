.class Lcom/parse/ParseUser$16$1$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$16$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseUser$16$1;

.field final synthetic val$result:Lcom/parse/ParseUser$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$16$1;Lcom/parse/ParseUser$State;)V
    .locals 0
    .param p1, "this$2"    # Lcom/parse/ParseUser$16$1;

    .prologue
    .line 1404
    iput-object p1, p0, Lcom/parse/ParseUser$16$1$1;->this$2:Lcom/parse/ParseUser$16$1;

    iput-object p2, p0, Lcom/parse/ParseUser$16$1$1;->val$result:Lcom/parse/ParseUser$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseUser$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/ParseUser$State;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1407
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$16$1$1;->val$result:Lcom/parse/ParseUser$State;

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
    .line 1404
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16$1$1;->then(Lbolts/Task;)Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method
