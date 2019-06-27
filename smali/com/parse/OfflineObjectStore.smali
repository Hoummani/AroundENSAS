.class Lcom/parse/OfflineObjectStore;
.super Ljava/lang/Object;
.source "OfflineObjectStore.java"

# interfaces
.implements Lcom/parse/ParseObjectStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parse/ParseObjectStore",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final legacy:Lcom/parse/ParseObjectStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseObjectStore",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final pinName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V
    .locals 1
    .param p2, "pinName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/parse/OfflineObjectStore;, "Lcom/parse/OfflineObjectStore<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "legacy":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<TT;>;"
    invoke-static {}, Lcom/parse/OfflineObjectStore;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/parse/OfflineObjectStore;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pinName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/parse/OfflineObjectStore;, "Lcom/parse/OfflineObjectStore<TT;>;"
    .local p3, "legacy":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/parse/OfflineObjectStore;->className:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/parse/OfflineObjectStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineObjectStore;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineObjectStore;)Lcom/parse/ParseObjectStore;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineObjectStore;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObjectStore;
    .param p1, "x1"    # Lcom/parse/ParseObjectStore;

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/parse/OfflineObjectStore;->migrate(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private static migrate(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "from":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<TT;>;"
    .local p1, "to":Lcom/parse/ParseObjectStore;, "Lcom/parse/ParseObjectStore<TT;>;"
    invoke-interface {p0}, Lcom/parse/ParseObjectStore;->getAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineObjectStore$1;-><init>(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/parse/OfflineObjectStore;, "Lcom/parse/OfflineObjectStore<TT;>;"
    iget-object v1, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    .line 123
    .local v0, "ldsTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Lbolts/Task;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;

    .line 124
    invoke-interface {v3}, Lcom/parse/ParseObjectStore;->deleteAsync()Lbolts/Task;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 123
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$6;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineObjectStore$6;-><init>(Lcom/parse/OfflineObjectStore;Lbolts/Task;)V

    .line 126
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 123
    return-object v1
.end method

.method public existsAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/parse/OfflineObjectStore;, "Lcom/parse/OfflineObjectStore<TT;>;"
    iget-object v1, p0, Lcom/parse/OfflineObjectStore;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 108
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$5;

    invoke-direct {v2, p0}, Lcom/parse/OfflineObjectStore$5;-><init>(Lcom/parse/OfflineObjectStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public getAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/parse/OfflineObjectStore;, "Lcom/parse/OfflineObjectStore<TT;>;"
    iget-object v1, p0, Lcom/parse/OfflineObjectStore;->className:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 76
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$4;

    invoke-direct {v2, p0}, Lcom/parse/OfflineObjectStore$4;-><init>(Lcom/parse/OfflineObjectStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$3;

    invoke-direct {v2, p0}, Lcom/parse/OfflineObjectStore$3;-><init>(Lcom/parse/OfflineObjectStore;)V

    .line 89
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 76
    return-object v1
.end method

.method public setAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/parse/OfflineObjectStore;, "Lcom/parse/OfflineObjectStore<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineObjectStore$2;-><init>(Lcom/parse/OfflineObjectStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
