.class public Lcom/parse/ParseRESTCommand$Builder;
.super Lcom/parse/ParseRESTCommand$Init;
.source "ParseRESTCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRESTCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRESTCommand$Init",
        "<",
        "Lcom/parse/ParseRESTCommand$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/parse/ParseRESTCommand$Init;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/parse/ParseRESTCommand;
    .locals 1

    .prologue
    .line 118
    new-instance v0, Lcom/parse/ParseRESTCommand;

    invoke-direct {v0, p0}, Lcom/parse/ParseRESTCommand;-><init>(Lcom/parse/ParseRESTCommand$Init;)V

    return-object v0
.end method

.method self()Lcom/parse/ParseRESTCommand$Builder;
    .locals 0

    .prologue
    .line 114
    return-object p0
.end method

.method bridge synthetic self()Lcom/parse/ParseRESTCommand$Init;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand$Builder;->self()Lcom/parse/ParseRESTCommand$Builder;

    move-result-object v0

    return-object v0
.end method
