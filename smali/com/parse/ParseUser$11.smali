.class final Lcom/parse/ParseUser$11;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1126
    iput-object p1, p0, Lcom/parse/ParseUser$11;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$11;->val$authData:Ljava/util/Map;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getUserController()Lcom/parse/ParseUserController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$11;->val$authType:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$11;->val$authData:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/parse/ParseUserController;->logInAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$11$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$11$1;-><init>(Lcom/parse/ParseUser$11;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 1126
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
