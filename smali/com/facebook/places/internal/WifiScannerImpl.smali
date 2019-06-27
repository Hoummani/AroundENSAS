.class public Lcom/facebook/places/internal/WifiScannerImpl;
.super Ljava/lang/Object;
.source "WifiScannerImpl.java"

# interfaces
.implements Lcom/facebook/places/internal/WifiScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final SSID_NOMAP:Ljava/lang/String; = "_nomap"

.field private static final SSID_OPTOUT:Ljava/lang/String; = "_optout"


# instance fields
.field private broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

.field private context:Landroid/content/Context;

.field private final params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private final scanLock:Ljava/lang/Object;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/facebook/places/internal/LocationPackageRequestParams;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/places/internal/WifiScannerImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/places/internal/WifiScannerImpl;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/places/internal/WifiScannerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/places/internal/WifiScannerImpl;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    return-void
.end method

.method private static filterResults(Ljava/util/List;I)V
    .locals 2
    .param p1, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 174
    new-instance v0, Lcom/facebook/places/internal/WifiScannerImpl$1;

    invoke-direct {v0}, Lcom/facebook/places/internal/WifiScannerImpl$1;-><init>()V

    .line 180
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/wifi/ScanResult;>;"
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 181
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 183
    .end local v0    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    return-void
.end method

.method private static filterWifiScanResultsByMaxAge(Ljava/util/List;J)Ljava/util/List;
    .locals 13
    .param p1, "maxAgeMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v2, "filtered":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz p0, :cond_0

    .line 190
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-ge v6, v7, :cond_1

    .line 191
    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    :cond_0
    return-object v2

    .line 193
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 194
    .local v4, "nowSinceBootMs":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 195
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-wide v8, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    sub-long v0, v4, v8

    .line 196
    .local v0, "ageMs":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_3

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v0, v8, v10

    .line 200
    :cond_3
    cmp-long v7, v0, p1

    if-gez v7, :cond_2

    .line 201
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getActiveScanResults()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    .local v1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/facebook/internal/Validate;->hasChangeWifiStatePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->registerBroadcastReceiver()V

    .line 229
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 230
    .local v0, "isScanStarted":Z
    if-eqz v0, :cond_0

    .line 232
    :try_start_1
    iget-object v3, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->scanLock:Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v4}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiScanTimeoutMs()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 234
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    :goto_0
    :try_start_3
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getCachedScanResults()Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 244
    .end local v0    # "isScanStarted":Z
    :cond_0
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    .line 246
    :goto_1
    return-object v1

    .line 234
    .restart local v0    # "isScanStarted":Z
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 235
    :catch_0
    move-exception v2

    goto :goto_0

    .line 241
    .end local v0    # "isScanStarted":Z
    :catch_1
    move-exception v2

    .line 244
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    .line 245
    throw v2
.end method

.method private getCachedScanResults()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiScanMaxAgeMs()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/facebook/places/internal/WifiScannerImpl;->filterWifiScanResultsByMaxAge(Ljava/util/List;J)Ljava/util/List;

    move-result-object v2

    .line 137
    iget-object v5, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getWifiMaxScanResults()I

    move-result v5

    invoke-static {v2, v5}, Lcom/facebook/places/internal/WifiScannerImpl;->filterResults(Ljava/util/List;I)V

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v4, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 140
    .local v1, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiSsidBlacklisted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    new-instance v3, Lcom/facebook/places/internal/WifiScanResult;

    invoke-direct {v3}, Lcom/facebook/places/internal/WifiScanResult;-><init>()V

    .line 142
    .local v3, "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v6, v3, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    .line 143
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v6, v3, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    .line 144
    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    iput v6, v3, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    .line 145
    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v6, v3, Lcom/facebook/places/internal/WifiScanResult;->frequency:I

    .line 146
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x11

    if-lt v6, v7, :cond_1

    .line 147
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v8, v1, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 148
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J

    .line 153
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    .end local v4    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/facebook/places/internal/ScannerException;

    sget-object v6, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v5, v6, v0}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V

    throw v5

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v2    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v3    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    .restart local v4    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 156
    .end local v1    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v3    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    :cond_2
    return-object v4
.end method

.method private isWifiScanningAlwaysOn()Z
    .locals 2

    .prologue
    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v0

    .line 129
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWifiSsidBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 163
    if-eqz p0, :cond_1

    .line 164
    const-string v0, "_nomap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "_optout"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 250
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->unregisterBroadcastReceiver()V

    .line 253
    :cond_0
    new-instance v1, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;-><init>(Lcom/facebook/places/internal/WifiScannerImpl;Lcom/facebook/places/internal/WifiScannerImpl$1;)V

    iput-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    .line 254
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->broadcastReceiver:Lcom/facebook/places/internal/WifiScannerImpl$ScanResultBroadcastReceiver;

    .line 268
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getConnectedWifi()Lcom/facebook/places/internal/WifiScanResult;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-object v3, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 92
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v3, v4, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiSsidBlacklisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    :cond_0
    const/4 v2, 0x0

    .line 106
    :cond_1
    :goto_0
    return-object v2

    .line 98
    :cond_2
    new-instance v2, Lcom/facebook/places/internal/WifiScanResult;

    invoke-direct {v2}, Lcom/facebook/places/internal/WifiScanResult;-><init>()V

    .line 99
    .local v2, "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/places/internal/WifiScanResult;->bssid:Ljava/lang/String;

    .line 100
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/places/internal/WifiScanResult;->ssid:Ljava/lang/String;

    .line 101
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    iput v3, v2, Lcom/facebook/places/internal/WifiScanResult;->rssi:I

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/facebook/places/internal/WifiScanResult;->timestampMs:J

    .line 103
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 104
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    iput v3, v2, Lcom/facebook/places/internal/WifiScanResult;->frequency:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiScanResult":Lcom/facebook/places/internal/WifiScanResult;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/facebook/places/internal/ScannerException;

    sget-object v4, Lcom/facebook/places/internal/ScannerException$Type;->UNKNOWN_ERROR:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v3, v4, v0}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;Ljava/lang/Exception;)V

    throw v3
.end method

.method public declared-synchronized getWifiScans()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 212
    monitor-enter p0

    const/4 v1, 0x0

    .line 213
    .local v1, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/places/internal/WifiScanResult;>;"
    :try_start_0
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced()Z

    move-result v2

    if-nez v2, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getCachedScanResults()Ljava/util/List;

    move-result-object v1

    .line 216
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 217
    .local v0, "isListEmpty":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanForced()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/facebook/places/internal/WifiScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v2}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiActiveScanAllowed()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 218
    :cond_2
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->getActiveScanResults()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 220
    :cond_3
    monitor-exit p0

    return-object v1

    .line 216
    .end local v0    # "isListEmpty":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public initAndCheckEligibility()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->NOT_SUPPORTED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/Validate;->hasWiFiPermission(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->isWifiScanningAlwaysOn()Z

    move-result v0

    .line 83
    .local v0, "isWifiScanningAlwaysOn":Z
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/facebook/places/internal/WifiScannerImpl;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 84
    new-instance v1, Lcom/facebook/places/internal/ScannerException;

    sget-object v2, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v1, v2}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v1

    .line 86
    :cond_3
    return-void
.end method

.method public isWifiScanningEnabled()Z
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/places/internal/WifiScannerImpl;->initAndCheckEligibility()V

    .line 116
    iget-object v0, p0, Lcom/facebook/places/internal/WifiScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
