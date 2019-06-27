.class Lcom/parse/ParsePush$1;
.super Ljava/lang/Object;
.source "ParsePush.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePush;

.field final synthetic val$state:Lcom/parse/ParsePush$State;


# direct methods
.method constructor <init>(Lcom/parse/ParsePush;Lcom/parse/ParsePush$State;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/ParsePush;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/parse/ParsePush$1;->this$0:Lcom/parse/ParsePush;

    iput-object p2, p0, Lcom/parse/ParsePush$1;->val$state:Lcom/parse/ParsePush$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 518
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 519
    .local v0, "sessionToken":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParsePush;->getPushController()Lcom/parse/ParsePushController;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParsePush$1;->val$state:Lcom/parse/ParsePush$State;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParsePushController;->sendInBackground(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Lcom/parse/ParsePush$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
