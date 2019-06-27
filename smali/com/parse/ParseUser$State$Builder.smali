.class Lcom/parse/ParseUser$State$Builder;
.super Lcom/parse/ParseObject$State$Init;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseUser$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseObject$State$Init",
        "<",
        "Lcom/parse/ParseUser$State$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private isNew:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "_User"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject$State$Init;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/parse/ParseUser$State;)V
    .locals 1
    .param p1, "state"    # Lcom/parse/ParseUser$State;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State$Init;-><init>(Lcom/parse/ParseObject$State;)V

    .line 79
    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser$State$Builder;->isNew:Z

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseUser$State$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseUser$State$Builder;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/parse/ParseUser$State$Builder;->isNew:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$State$Builder;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .param p1, "other"    # Lcom/parse/ParseObject$State;

    .prologue
    .line 95
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser$State;

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    .line 96
    invoke-super {p0, p1}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    return-object v0
.end method

.method public authData(Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/parse/ParseUser$State$Builder;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "authData"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/parse/ParseObject$State;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/parse/ParseUser$State;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Lcom/parse/ParseUser$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseUser$State;-><init>(Lcom/parse/ParseUser$State$Builder;Lcom/parse/ParseUser$1;)V

    return-object v0
.end method

.method public isNew(Z)Lcom/parse/ParseUser$State$Builder;
    .locals 0
    .param p1, "isNew"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/parse/ParseUser$State$Builder;->isNew:Z

    .line 121
    return-object p0
.end method

.method public putAuthData(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;
    .locals 3
    .param p1, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseUser$State$Builder;"
        }
    .end annotation

    .prologue
    .line 109
    .local p2, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parse/ParseUser$State$Builder;->serverData:Ljava/util/Map;

    const-string v2, "authData"

    .line 110
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 111
    .local v0, "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 114
    .restart local v0    # "newAuthData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Lcom/parse/ParseUser$State$Builder;->serverData:Ljava/util/Map;

    const-string v2, "authData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object p0
.end method

.method bridge synthetic self()Lcom/parse/ParseObject$State$Init;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/parse/ParseUser$State$Builder;->self()Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/parse/ParseUser$State$Builder;
    .locals 0

    .prologue
    .line 84
    return-object p0
.end method

.method public sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    return-object v0
.end method
