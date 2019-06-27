.class public final Lcom/parse/ParseAnonymousUtils;
.super Ljava/lang/Object;
.source "ParseAnonymousUtils.java"


# static fields
.field static final AUTH_TYPE:Ljava/lang/String; = "anonymous"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method static getAuthData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-object v0
.end method

.method public static isLinked(Lcom/parse/ParseUser;)Z
    .locals 1
    .param p0, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 51
    const-string v0, "anonymous"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->isLinked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static logIn(Lcom/parse/LogInCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/LogInCallback;

    .prologue
    .line 70
    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->logInInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 71
    return-void
.end method

.method public static logInInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "anonymous"

    invoke-static {}, Lcom/parse/ParseAnonymousUtils;->getAuthData()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseUser;->logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
