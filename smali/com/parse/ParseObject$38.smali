.class Lcom/parse/ParseObject$38;
.super Lcom/parse/ParseTraverser;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->canBeSerialized()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lbolts/Capture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParseObject;

    .prologue
    .line 2478
    iput-object p1, p0, Lcom/parse/ParseObject$38;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$38;->val$result:Lbolts/Capture;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 2481
    instance-of v2, p1, Lcom/parse/ParseFile;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 2482
    check-cast v0, Lcom/parse/ParseFile;

    .line 2483
    .local v0, "file":Lcom/parse/ParseFile;
    invoke-virtual {v0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2484
    iget-object v2, p0, Lcom/parse/ParseObject$38;->val$result:Lbolts/Capture;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 2488
    .end local v0    # "file":Lcom/parse/ParseFile;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseObject;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 2489
    check-cast v1, Lcom/parse/ParseObject;

    .line 2490
    .local v1, "object":Lcom/parse/ParseObject;
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2491
    iget-object v2, p0, Lcom/parse/ParseObject$38;->val$result:Lbolts/Capture;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 2496
    .end local v1    # "object":Lcom/parse/ParseObject;
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseObject$38;->val$result:Lbolts/Capture;

    invoke-virtual {v2}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2
.end method
