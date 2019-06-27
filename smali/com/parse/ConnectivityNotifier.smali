.class Lcom/parse/ConnectivityNotifier;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ConnectivityNotifier"

.field private static final singleton:Lcom/parse/ConnectivityNotifier;


# instance fields
.field private hasRegisteredReceiver:Z

.field private listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ConnectivityNotifier$ConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/parse/ConnectivityNotifier;

    invoke-direct {v0}, Lcom/parse/ConnectivityNotifier;-><init>()V

    sput-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    return-void
.end method

.method public static getNotifier(Landroid/content/Context;)Lcom/parse/ConnectivityNotifier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    invoke-direct {v0, p0}, Lcom/parse/ConnectivityNotifier;->tryToRegisterForNetworkStatusNotifications(Landroid/content/Context;)Z

    .line 33
    sget-object v0, Lcom/parse/ConnectivityNotifier;->singleton:Lcom/parse/ConnectivityNotifier;

    return-object v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string v3, "connectivity"

    .line 38
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v2

    .line 43
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 44
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private tryToRegisterForNetworkStatusNotifications(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 64
    iget-object v3, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-boolean v4, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z

    if-eqz v4, :cond_0

    .line 66
    monitor-exit v3

    .line 81
    :goto_0
    return v1

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v2

    goto :goto_0

    .line 73
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 74
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/parse/ConnectivityNotifier;->hasRegisteredReceiver:Z
    :try_end_1
    .catch Landroid/content/ReceiverCallNotAllowedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/content/ReceiverCallNotAllowedException;
    :try_start_3
    const-string v1, "com.parse.ConnectivityNotifier"

    const-string v4, "Cannot register a broadcast receiver because the executing thread is currently in a broadcast receiver. Will try again later."

    invoke-static {v1, v4}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v1

    .line 55
    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 89
    iget-object v3, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v1, "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ConnectivityNotifier$ConnectivityListener;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .line 93
    .local v0, "delegate":Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    invoke-interface {v0, p1, p2}, Lcom/parse/ConnectivityNotifier$ConnectivityListener;->networkConnectivityStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v0    # "delegate":Lcom/parse/ConnectivityNotifier$ConnectivityListener;
    .end local v1    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ConnectivityNotifier$ConnectivityListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 95
    .restart local v1    # "listenersCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ConnectivityNotifier$ConnectivityListener;>;"
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/parse/ConnectivityNotifier$ConnectivityListener;)V
    .locals 2
    .param p1, "delegate"    # Lcom/parse/ConnectivityNotifier$ConnectivityListener;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/parse/ConnectivityNotifier;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/parse/ConnectivityNotifier;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 60
    monitor-exit v1

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
