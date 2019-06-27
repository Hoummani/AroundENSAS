.class Lcom/parse/FileObjectStore;
.super Ljava/lang/Object;
.source "FileObjectStore.java"

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

.field private final coder:Lcom/parse/ParseObjectCurrentCoder;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V
    .locals 1
    .param p2, "file"    # Ljava/io/File;
    .param p3, "coder"    # Lcom/parse/ParseObjectCurrentCoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/File;",
            "Lcom/parse/ParseObjectCurrentCoder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/FileObjectStore;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/parse/FileObjectStore;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "coder"    # Lcom/parse/ParseObjectCurrentCoder;

    .prologue
    .line 85
    .local p0, "this":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/parse/FileObjectStore;->className:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/parse/FileObjectStore;->file:Ljava/io/File;

    .line 88
    iput-object p3, p0, Lcom/parse/FileObjectStore;->coder:Lcom/parse/ParseObjectCurrentCoder;

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/parse/FileObjectStore;)Lcom/parse/ParseObjectCurrentCoder;
    .locals 1
    .param p0, "x0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/FileObjectStore;->coder:Lcom/parse/ParseObjectCurrentCoder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/FileObjectStore;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseObjectCurrentCoder;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Ljava/io/File;

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/parse/FileObjectStore;->saveToDisk(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parse/FileObjectStore;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/FileObjectStore;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/parse/FileObjectStore;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObjectCurrentCoder;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Lcom/parse/ParseObject$State$Init;

    .prologue
    .line 20
    invoke-static {p0, p1, p2}, Lcom/parse/FileObjectStore;->getFromDisk(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method private static getFromDisk(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;
    .locals 5
    .param p0, "coder"    # Lcom/parse/ParseObjectCurrentCoder;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "builder"    # Lcom/parse/ParseObject$State$Init;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseObjectCurrentCoder;",
            "Ljava/io/File;",
            "Lcom/parse/ParseObject$State$Init;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 71
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v3

    invoke-virtual {p0, p2, v1, v3}, Lcom/parse/ParseObjectCurrentCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    const/4 v4, 0x1

    .line 72
    invoke-virtual {v3, v4}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 74
    .local v2, "newState":Lcom/parse/ParseObject$State;
    invoke-static {v2}, Lcom/parse/ParseObject;->from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;

    move-result-object v3

    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "newState":Lcom/parse/ParseObject$State;
    :goto_0
    return-object v3

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private static saveToDisk(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V
    .locals 4
    .param p0, "coder"    # Lcom/parse/ParseObjectCurrentCoder;
    .param p1, "current"    # Lcom/parse/ParseObject;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/parse/ParseObjectCurrentCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v0

    .line 42
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {p2, v0}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public deleteAsync()Lbolts/Task;
    .locals 2
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
    .line 128
    .local p0, "this":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<TT;>;"
    new-instance v0, Lcom/parse/FileObjectStore$4;

    invoke-direct {v0, p0}, Lcom/parse/FileObjectStore$4;-><init>(Lcom/parse/FileObjectStore;)V

    .line 137
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public existsAsync()Lbolts/Task;
    .locals 2
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
    .line 118
    .local p0, "this":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<TT;>;"
    new-instance v0, Lcom/parse/FileObjectStore$3;

    invoke-direct {v0, p0}, Lcom/parse/FileObjectStore$3;-><init>(Lcom/parse/FileObjectStore;)V

    .line 123
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<TT;>;"
    new-instance v0, Lcom/parse/FileObjectStore$2;

    invoke-direct {v0, p0}, Lcom/parse/FileObjectStore$2;-><init>(Lcom/parse/FileObjectStore;)V

    .line 113
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
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
    .line 93
    .local p0, "this":Lcom/parse/FileObjectStore;, "Lcom/parse/FileObjectStore<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    new-instance v0, Lcom/parse/FileObjectStore$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/FileObjectStore$1;-><init>(Lcom/parse/FileObjectStore;Lcom/parse/ParseObject;)V

    .line 100
    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 93
    invoke-static {v0, v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
