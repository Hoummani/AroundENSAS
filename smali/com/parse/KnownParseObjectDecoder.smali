.class Lcom/parse/KnownParseObjectDecoder;
.super Lcom/parse/ParseDecoder;
.source "KnownParseObjectDecoder.java"


# instance fields
.field private fetchedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-direct {p0}, Lcom/parse/ParseDecoder;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/parse/KnownParseObjectDecoder;->fetchedObjects:Ljava/util/Map;

    .line 23
    return-void
.end method


# virtual methods
.method protected decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/parse/KnownParseObjectDecoder;->fetchedObjects:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/KnownParseObjectDecoder;->fetchedObjects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/parse/KnownParseObjectDecoder;->fetchedObjects:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseDecoder;->decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_0
.end method
