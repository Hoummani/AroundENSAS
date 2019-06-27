.class interface abstract Lcom/parse/ParseSessionController;
.super Ljava/lang/Object;
.source "ParseSessionController.java"


# virtual methods
.method public abstract getSessionAsync(Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract revokeAsync(Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract upgradeToRevocable(Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation
.end method
