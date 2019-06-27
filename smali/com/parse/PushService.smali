.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushService$ServiceLifecycleCallbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field private static final WAKE_LOCK_EXTRA:Ljava/lang/String; = "parseWakeLockId"

.field private static serviceLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/PushService$ServiceLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private static wakeLockId:I

.field private static final wakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parse/ParseWakeLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private executor:Ljava/util/concurrent/ExecutorService;

.field private handler:Lcom/parse/PushHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/parse/PushService;->wakeLocks:Landroid/util/SparseArray;

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/parse/PushService;->wakeLockId:I

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/parse/PushService;)Lcom/parse/PushHandler;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushService;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/parse/PushService;->handler:Lcom/parse/PushHandler;

    return-object v0
.end method

.method private static dispatchOnServiceCreated(Landroid/app/Service;)V
    .locals 3
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    .line 166
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 167
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .line 168
    .local v0, "callback":Lcom/parse/PushService$ServiceLifecycleCallbacks;
    invoke-interface {v0, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceCreated(Landroid/app/Service;)V

    goto :goto_0

    .line 171
    .end local v0    # "callback":Lcom/parse/PushService$ServiceLifecycleCallbacks;
    :cond_0
    return-void
.end method

.method private static dispatchOnServiceDestroyed(Landroid/app/Service;)V
    .locals 3
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    .line 174
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 175
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .line 176
    .local v0, "callback":Lcom/parse/PushService$ServiceLifecycleCallbacks;
    invoke-interface {v0, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceDestroyed(Landroid/app/Service;)V

    goto :goto_0

    .line 179
    .end local v0    # "callback":Lcom/parse/PushService$ServiceLifecycleCallbacks;
    :cond_0
    return-void
.end method

.method static dispose(Landroid/content/Intent;)V
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    const-string v2, "parseWakeLockId"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const-string v2, "parseWakeLockId"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "id":I
    sget-object v3, Lcom/parse/PushService;->wakeLocks:Landroid/util/SparseArray;

    monitor-enter v3

    .line 128
    :try_start_0
    sget-object v2, Lcom/parse/PushService;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseWakeLock;

    .line 129
    .local v1, "wakeLock":Lcom/parse/ParseWakeLock;
    sget-object v2, Lcom/parse/PushService;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 130
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    if-nez v1, :cond_1

    .line 133
    const-string v2, "com.parse.PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got wake lock id of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in intent, but no such lock found in global map. Was disposePushService called twice for the same intent?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "id":I
    .end local v1    # "wakeLock":Lcom/parse/ParseWakeLock;
    :cond_0
    :goto_0
    return-void

    .line 130
    .restart local v0    # "id":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 136
    .restart local v1    # "wakeLock":Lcom/parse/ParseWakeLock;
    :cond_1
    invoke-virtual {v1}, Lcom/parse/ParseWakeLock;->release()V

    goto :goto_0
.end method

.method static isSupported()Z
    .locals 1

    .prologue
    .line 204
    const-class v0, Lcom/parse/PushService;

    invoke-static {v0}, Lcom/parse/ManifestInfo;->getServiceInfo(Ljava/lang/Class;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static registerServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2
    .param p0, "callbacks"    # Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .prologue
    .line 151
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 152
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    .line 155
    :cond_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static run(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 101
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "reason":Ljava/lang/String;
    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v1, v4, v5}, Lcom/parse/ParseWakeLock;->acquireNewWakeLock(Landroid/content/Context;ILjava/lang/String;J)Lcom/parse/ParseWakeLock;

    move-result-object v2

    .line 104
    .local v2, "wl":Lcom/parse/ParseWakeLock;
    sget-object v4, Lcom/parse/PushService;->wakeLocks:Landroid/util/SparseArray;

    monitor-enter v4

    .line 105
    :try_start_0
    const-string v5, "parseWakeLockId"

    sget v6, Lcom/parse/PushService;->wakeLockId:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    sget-object v5, Lcom/parse/PushService;->wakeLocks:Landroid/util/SparseArray;

    sget v6, Lcom/parse/PushService;->wakeLockId:I

    invoke-virtual {v5, v6, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 107
    sget v5, Lcom/parse/PushService;->wakeLockId:I

    add-int/lit8 v5, v5, 0x1

    sput v5, Lcom/parse/PushService;->wakeLockId:I

    .line 108
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const-class v4, Lcom/parse/PushService;

    invoke-virtual {p1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 112
    .local v0, "name":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 113
    const-string v3, "com.parse.PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not start the service. Make sure that the XML tag <service android:name=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/parse/PushService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" /> is in your AndroidManifest.xml as a child of the <application> element."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/parse/PushService;->dispose(Landroid/content/Intent;)V

    .line 117
    const/4 v3, 0x0

    .line 119
    :cond_0
    return v3

    .line 108
    .end local v0    # "name":Landroid/content/ComponentName;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method static unregisterServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2
    .param p0, "callbacks"    # Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .prologue
    .line 160
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    monitor-exit v1

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 213
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 214
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    const-string v0, "com.parse.PushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    .line 228
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 226
    invoke-static {}, Lcom/parse/PushServiceUtils;->createPushHandler()Lcom/parse/PushHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushService;->handler:Lcom/parse/PushHandler;

    .line 227
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceCreated(Landroid/app/Service;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 268
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 270
    iput-object v1, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    .line 271
    iput-object v1, p0, Lcom/parse/PushService;->handler:Lcom/parse/PushHandler;

    .line 274
    :cond_0
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceDestroyed(Landroid/app/Service;)V

    .line 275
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 276
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 235
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    if-ne v0, v1, :cond_0

    .line 236
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started push service even though no push service is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/PushService$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/parse/PushService$1;-><init>(Lcom/parse/PushService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 251
    const/4 v0, 0x2

    return v0
.end method

.method setPushHandler(Lcom/parse/PushHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/parse/PushHandler;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/parse/PushService;->handler:Lcom/parse/PushHandler;

    .line 197
    return-void
.end method
