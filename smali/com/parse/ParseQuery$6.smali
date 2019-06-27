.class Lcom/parse/ParseQuery$6;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->countInBackground(Lcom/parse/CountCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;

.field final synthetic val$callback:Lcom/parse/CountCallback;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;Lcom/parse/CountCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseQuery;

    .prologue
    .line 1337
    .local p0, "this":Lcom/parse/ParseQuery$6;, "Lcom/parse/ParseQuery$6;"
    iput-object p1, p0, Lcom/parse/ParseQuery$6;->this$0:Lcom/parse/ParseQuery;

    iput-object p2, p0, Lcom/parse/ParseQuery$6;->val$callback:Lcom/parse/CountCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Integer;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "integer"    # Ljava/lang/Integer;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 1340
    .local p0, "this":Lcom/parse/ParseQuery$6;, "Lcom/parse/ParseQuery$6;"
    iget-object v1, p0, Lcom/parse/ParseQuery$6;->val$callback:Lcom/parse/CountCallback;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    invoke-interface {v1, v0, p2}, Lcom/parse/CountCallback;->done(ILcom/parse/ParseException;)V

    .line 1341
    return-void

    .line 1340
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1337
    .local p0, "this":Lcom/parse/ParseQuery$6;, "Lcom/parse/ParseQuery$6;"
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseQuery$6;->done(Ljava/lang/Integer;Lcom/parse/ParseException;)V

    return-void
.end method
