.class final Lcom/facebook/places/internal/LocationPackageManager$3;
.super Ljava/lang/Object;
.source "LocationPackageManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->newBluetoothScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/facebook/places/internal/LocationPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/facebook/places/internal/LocationPackage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 164
    new-instance v4, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v4}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 166
    .local v4, "locationPackage":Lcom/facebook/places/internal/LocationPackage;
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v1, v5}, Lcom/facebook/places/internal/ScannerFactory;->newBleScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/BleScanner;

    move-result-object v0

    .line 169
    .local v0, "bleScanner":Lcom/facebook/places/internal/BleScanner;
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->initAndCheckEligibility()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->startScanning()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    iget-object v5, p0, Lcom/facebook/places/internal/LocationPackageManager$3;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v5}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getBluetoothScanDurationMs()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :goto_0
    :try_start_3
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->stopScanning()V

    .line 182
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->getErrorCode()I

    move-result v3

    .line 183
    .local v3, "errorCode":I
    if-nez v3, :cond_0

    .line 184
    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->getScanResults()Ljava/util/List;

    move-result-object v5

    iput-object v5, v4, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    .line 185
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    .line 200
    .end local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "errorCode":I
    :goto_1
    return-object v4

    .line 179
    .restart local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .restart local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v5

    invoke-interface {v0}, Lcom/facebook/places/internal/BleScanner;->stopScanning()V

    .line 180
    throw v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 196
    .end local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "Exception scanning for bluetooth beacons"

    invoke-static {v5, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 198
    iput-boolean v11, v4, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    goto :goto_1

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bleScanner":Lcom/facebook/places/internal/BleScanner;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "errorCode":I
    :cond_0
    :try_start_4
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 188
    const-string v5, "LocationPackageManager"

    .line 190
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "Bluetooth LE scan failed with error: %d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    .line 190
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 188
    invoke-static {v5, v6}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 175
    .end local v3    # "errorCode":I
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/facebook/places/internal/LocationPackageManager$3;->call()Lcom/facebook/places/internal/LocationPackage;

    move-result-object v0

    return-object v0
.end method
