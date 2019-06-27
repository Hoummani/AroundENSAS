.class Lcom/parse/ParsePin;
.super Lcom/parse/ParseObject;
.source "ParsePin.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Pin"
.end annotation


# static fields
.field static final KEY_NAME:Ljava/lang/String; = "_name"

.field private static final KEY_OBJECTS:Ljava/lang/String; = "_objects"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 21
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string v0, "_name"

    invoke-virtual {p0, v0}, Lcom/parse/ParsePin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    const-string v0, "_objects"

    invoke-virtual {p0, v0}, Lcom/parse/ParsePin;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "_name"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParsePin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const-string v0, "_objects"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParsePin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method
