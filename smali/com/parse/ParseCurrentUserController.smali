.class interface abstract Lcom/parse/ParseCurrentUserController;
.super Ljava/lang/Object;
.source "ParseCurrentUserController.java"

# interfaces
.implements Lcom/parse/ParseObjectCurrentController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseObjectCurrentController",
        "<",
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAsync(Z)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentSessionTokenAsync()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract logOutAsync()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
