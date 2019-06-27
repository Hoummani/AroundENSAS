.class interface abstract Lcom/parse/ParseObjectCurrentController;
.super Ljava/lang/Object;
.source "ParseObjectCurrentController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearFromDisk()V
.end method

.method public abstract clearFromMemory()V
.end method

.method public abstract existsAsync()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAsync()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract isCurrent(Lcom/parse/ParseObject;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method public abstract setAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method
