.class Lcom/parse/ParseObject$4;
.super Lcom/parse/ParseTraverser;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/parse/ParseObject$4;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$4;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 899
    instance-of v2, p1, Lcom/parse/ParseObject;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 900
    check-cast v0, Lcom/parse/ParseObject;

    .line 901
    .local v0, "parseObj":Lcom/parse/ParseObject;
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    .line 902
    .local v1, "state":Lcom/parse/ParseObject$State;
    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/parse/ParseObject$4;->val$fetchedObjects:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .end local v0    # "parseObj":Lcom/parse/ParseObject;
    .end local v1    # "state":Lcom/parse/ParseObject$State;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
