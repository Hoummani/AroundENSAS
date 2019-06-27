.class interface abstract Lcom/parse/ParseUserController;
.super Ljava/lang/Object;
.source "ParseUserController.java"


# virtual methods
.method public abstract getUserAsync(Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logInAsync(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logInAsync(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logInAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestPasswordResetAsync(Ljava/lang/String;)Lbolts/Task;
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

.method public abstract signUpAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser$State;",
            ">;"
        }
    .end annotation
.end method
