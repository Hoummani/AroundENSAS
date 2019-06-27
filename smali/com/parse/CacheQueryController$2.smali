.class Lcom/parse/CacheQueryController$2;
.super Ljava/lang/Object;
.source "CacheQueryController.java"

# interfaces
.implements Lcom/parse/CacheQueryController$CommandDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CacheQueryController;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/CacheQueryController$CommandDelegate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/CacheQueryController;

.field final synthetic val$cancellationToken:Lbolts/Task;

.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$state:Lcom/parse/ParseQuery$State;


# direct methods
.method constructor <init>(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;Lbolts/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/CacheQueryController;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/parse/CacheQueryController$2;->this$0:Lcom/parse/CacheQueryController;

    iput-object p2, p0, Lcom/parse/CacheQueryController$2;->val$state:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/CacheQueryController$2;->val$sessionToken:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/CacheQueryController$2;->val$cancellationToken:Lbolts/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runFromCacheAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parse/CacheQueryController$2;->this$0:Lcom/parse/CacheQueryController;

    iget-object v1, p0, Lcom/parse/CacheQueryController$2;->val$state:Lcom/parse/ParseQuery$State;

    iget-object v2, p0, Lcom/parse/CacheQueryController$2;->val$sessionToken:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/parse/CacheQueryController;->access$200(Lcom/parse/CacheQueryController;Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public runOnNetworkAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parse/CacheQueryController$2;->this$0:Lcom/parse/CacheQueryController;

    invoke-static {v0}, Lcom/parse/CacheQueryController;->access$000(Lcom/parse/CacheQueryController;)Lcom/parse/NetworkQueryController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/CacheQueryController$2;->val$state:Lcom/parse/ParseQuery$State;

    iget-object v2, p0, Lcom/parse/CacheQueryController$2;->val$sessionToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/CacheQueryController$2;->val$cancellationToken:Lbolts/Task;

    invoke-virtual {v0, v1, v2, v3}, Lcom/parse/NetworkQueryController;->countAsync(Lcom/parse/ParseQuery$State;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
