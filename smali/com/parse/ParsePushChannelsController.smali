.class Lcom/parse/ParsePushChannelsController;
.super Ljava/lang/Object;
.source "ParsePushChannelsController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePushChannelsController"

.field private static loggedManifestError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParsePushChannelsController;->loggedManifestError:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkManifestAndLogErrorIfNecessary()V
    .locals 3

    .prologue
    .line 69
    sget-boolean v0, Lcom/parse/ParsePushChannelsController;->loggedManifestError:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    if-ne v0, v1, :cond_0

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/ParsePushChannelsController;->loggedManifestError:Z

    .line 71
    const-string v0, "com.parse.ParsePushChannelsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to subscribe or unsubscribe from a channel, but push is not enabled correctly. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushDisabledMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_0
    return-void
.end method

.method private static getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public subscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/parse/ParsePushChannelsController;->checkManifestAndLogErrorIfNecessary()V

    .line 26
    if-nez p1, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t subscribe to null channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    invoke-static {}, Lcom/parse/ParsePushChannelsController;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentInstallationController;->getAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePushChannelsController$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePushChannelsController$1;-><init>(Lcom/parse/ParsePushChannelsController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/parse/ParsePushChannelsController;->checkManifestAndLogErrorIfNecessary()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t unsubscribe from null channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    invoke-static {}, Lcom/parse/ParsePushChannelsController;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseCurrentInstallationController;->getAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePushChannelsController$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParsePushChannelsController$2;-><init>(Lcom/parse/ParsePushChannelsController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
