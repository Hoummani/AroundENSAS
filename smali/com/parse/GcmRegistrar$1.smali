.class Lcom/parse/GcmRegistrar$1;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->registerAsync()Lbolts/Task;
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
        "Ljava/lang/Boolean;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar;

.field final synthetic val$installation:Lcom/parse/ParseInstallation;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar;Lcom/parse/ParseInstallation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    iput-object p2, p0, Lcom/parse/GcmRegistrar$1;->val$installation:Lcom/parse/ParseInstallation;

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
            "Ljava/lang/Boolean;",
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 114
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar$1;->val$installation:Lcom/parse/ParseInstallation;

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-eq v0, v1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/parse/GcmRegistrar$1;->val$installation:Lcom/parse/ParseInstallation;

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v0}, Lcom/parse/GcmRegistrar;->access$000(Lcom/parse/GcmRegistrar;)Lbolts/Task;

    .line 114
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
