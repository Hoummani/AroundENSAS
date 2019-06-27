.class interface abstract Lcom/parse/ParseObjectController;
.super Ljava/lang/Object;
.source "ParseObjectController.java"


# virtual methods
.method public abstract deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract deleteAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fetchAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseDecoder;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveAllAsync(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseDecoder;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract saveAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseDecoder;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation
.end method
