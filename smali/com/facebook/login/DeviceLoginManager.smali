.class public Lcom/facebook/login/DeviceLoginManager;
.super Lcom/facebook/login/LoginManager;
.source "DeviceLoginManager.java"


# static fields
.field private static volatile instance:Lcom/facebook/login/DeviceLoginManager;


# instance fields
.field private deviceAuthTargetUserId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private deviceRedirectUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/facebook/login/LoginManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/login/DeviceLoginManager;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Lcom/facebook/login/DeviceLoginManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/facebook/login/DeviceLoginManager;

    invoke-direct {v0}, Lcom/facebook/login/DeviceLoginManager;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Lcom/facebook/login/DeviceLoginManager;->instance:Lcom/facebook/login/DeviceLoginManager;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/login/LoginClient$Request;"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/facebook/login/LoginManager;->createLoginRequest(Ljava/util/Collection;)Lcom/facebook/login/LoginClient$Request;

    move-result-object v2

    .line 98
    .local v2, "request":Lcom/facebook/login/LoginClient$Request;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager;->getDeviceRedirectUri()Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "redirectUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/login/LoginClient$Request;->setDeviceRedirectUriString(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/login/DeviceLoginManager;->getDeviceAuthTargetUserId()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "deviceTargetUserId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v2, v0}, Lcom/facebook/login/LoginClient$Request;->setDeviceAuthTargetUserId(Ljava/lang/String;)V

    .line 106
    :cond_1
    return-object v2
.end method

.method public getDeviceAuthTargetUserId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceRedirectUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setDeviceAuthTargetUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUserId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceAuthTargetUserId:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setDeviceRedirectUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/login/DeviceLoginManager;->deviceRedirectUri:Landroid/net/Uri;

    .line 62
    return-void
.end method
