.class final Lcom/parse/ParseTaskUtils$1;
.super Ljava/lang/Object;
.source "ParseTaskUtils.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;Z)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Ljava/lang/Void;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/parse/ParseCallback1;


# direct methods
.method constructor <init>(Lcom/parse/ParseCallback1;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/parse/ParseTaskUtils$1;->val$callback:Lcom/parse/ParseCallback1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 72
    check-cast p1, Ljava/lang/Void;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseTaskUtils$1;->done(Ljava/lang/Void;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/lang/Void;Lcom/parse/ParseException;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/parse/ParseTaskUtils$1;->val$callback:Lcom/parse/ParseCallback1;

    invoke-interface {v0, p2}, Lcom/parse/ParseCallback1;->done(Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method
