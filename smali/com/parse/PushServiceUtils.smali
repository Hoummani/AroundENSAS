.class abstract Lcom/parse/PushServiceUtils;
.super Ljava/lang/Object;
.source "PushServiceUtils.java"


# static fields
.field private static final USE_JOBS:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/PushServiceUtils;->USE_JOBS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createPushHandler()Lcom/parse/PushHandler;
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushHandler$Factory;->create(Lcom/parse/PushType;)Lcom/parse/PushHandler;

    move-result-object v0

    return-object v0
.end method

.method static initialize()Lbolts/Task;
    .locals 1
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
    .line 63
    invoke-static {}, Lcom/parse/PushServiceUtils;->createPushHandler()Lcom/parse/PushHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/PushHandler;->initialize()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static isSupported()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/parse/PushServiceUtils;->USE_JOBS:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {}, Lcom/parse/PushServiceApi26;->isSupported()Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/parse/PushService;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public static runService(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 45
    sget-boolean v0, Lcom/parse/PushServiceUtils;->USE_JOBS:Z

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/parse/PushServiceApi26;->run(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 48
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/parse/PushService;->run(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
