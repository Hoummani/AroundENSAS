.class Lcom/parse/GcmRegistrar$Request;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/GcmRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Request"
.end annotation


# static fields
.field private static final BACKOFF_INTERVAL_MS:I = 0xbb8

.field private static final MAX_RETRIES:I = 0x5

.field private static final RETRY_ACTION:Ljava/lang/String; = "com.parse.RetryGcmRegistration"


# instance fields
.field private final appIntent:Landroid/app/PendingIntent;

.field private final context:Landroid/content/Context;

.field private final identifier:I

.field private final random:Ljava/util/Random;

.field private final retryIntent:Landroid/app/PendingIntent;

.field private final retryReceiver:Landroid/content/BroadcastReceiver;

.field private final senderId:Ljava/lang/String;

.field private final tcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tries:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    .line 313
    iput-object p2, p0, Lcom/parse/GcmRegistrar$Request;->senderId:Ljava/lang/String;

    .line 314
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/parse/GcmRegistrar$Request;->random:Ljava/util/Random;

    .line 315
    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->random:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    iput v3, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    .line 316
    new-instance v3, Lbolts/TaskCompletionSource;

    invoke-direct {v3}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v3, p0, Lcom/parse/GcmRegistrar$Request;->tcs:Lbolts/TaskCompletionSource;

    .line 317
    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iget v4, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/GcmRegistrar$Request;->appIntent:Landroid/app/PendingIntent;

    .line 318
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "packageName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.parse.RetryGcmRegistration"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 322
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    const-string v3, "random"

    iget v4, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 324
    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iget v4, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    invoke-static {v3, v4, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/GcmRegistrar$Request;->retryIntent:Landroid/app/PendingIntent;

    .line 326
    new-instance v3, Lcom/parse/GcmRegistrar$Request$1;

    invoke-direct {v3, p0}, Lcom/parse/GcmRegistrar$Request$1;-><init>(Lcom/parse/GcmRegistrar$Request;)V

    iput-object v3, p0, Lcom/parse/GcmRegistrar$Request;->retryReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 336
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.parse.RetryGcmRegistration"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 339
    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->retryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    return-void
.end method

.method static synthetic access$300(Lcom/parse/GcmRegistrar$Request;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/GcmRegistrar$Request;

    .prologue
    .line 289
    iget v0, p0, Lcom/parse/GcmRegistrar$Request;->identifier:I

    return v0
.end method

.method static synthetic access$600(Lcom/parse/GcmRegistrar$Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/GcmRegistrar$Request;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/parse/GcmRegistrar$Request;->send()V

    return-void
.end method

.method public static createAndSend(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/GcmRegistrar$Request;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Lcom/parse/GcmRegistrar$Request;

    invoke-direct {v0, p0, p1}, Lcom/parse/GcmRegistrar$Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    .local v0, "request":Lcom/parse/GcmRegistrar$Request;
    invoke-direct {v0}, Lcom/parse/GcmRegistrar$Request;->send()V

    .line 308
    return-object v0
.end method

.method private finish(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 392
    if-eqz p1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v1, p1}, Lbolts/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    move-result v0

    .line 398
    .local v0, "didSetResult":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request;->appIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 400
    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request;->retryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    .line 401
    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/parse/GcmRegistrar$Request;->retryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 403
    :cond_0
    return-void

    .line 395
    .end local v0    # "didSetResult":Z
    :cond_1
    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request;->tcs:Lbolts/TaskCompletionSource;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GCM registration error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    move-result v0

    .restart local v0    # "didSetResult":Z
    goto :goto_0
.end method

.method private send()V
    .locals 4

    .prologue
    .line 347
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.google.android.gsf"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string v2, "sender"

    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const-string v2, "app"

    iget-object v3, p0, Lcom/parse/GcmRegistrar$Request;->appIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, "name":Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 359
    :goto_0
    if-nez v1, :cond_0

    .line 360
    const/4 v2, 0x0

    const-string v3, "GSF_PACKAGE_NOT_AVAILABLE"

    invoke-direct {p0, v2, v3}, Lcom/parse/GcmRegistrar$Request;->finish(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 365
    const-string v2, "com.parse.GcmRegistrar"

    const-string v3, "Sending GCM registration intent"

    invoke-static {v2, v3}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    return-void

    .line 355
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getTask()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request;->tcs:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveResponseIntent(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    const-string v8, "registration_id"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 370
    .local v5, "registrationId":Ljava/lang/String;
    const-string v8, "error"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, "error":Ljava/lang/String;
    if-nez v5, :cond_0

    if-nez v1, :cond_0

    .line 373
    const-string v8, "com.parse.GcmRegistrar"

    const-string v9, "Got no registration info in GCM onReceiveResponseIntent"

    invoke-static {v8, v9}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_0
    const-string v8, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 379
    iget-object v8, p0, Lcom/parse/GcmRegistrar$Request;->context:Landroid/content/Context;

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 380
    .local v4, "manager":Landroid/app/AlarmManager;
    const/4 v0, 0x2

    .line 381
    .local v0, "alarmType":I
    const/4 v8, 0x1

    iget-object v9, p0, Lcom/parse/GcmRegistrar$Request;->tries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v9

    shl-int/2addr v8, v9

    mul-int/lit16 v8, v8, 0xbb8

    iget-object v9, p0, Lcom/parse/GcmRegistrar$Request;->random:Ljava/util/Random;

    const/16 v10, 0xbb8

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v2, v8

    .line 382
    .local v2, "delay":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long v6, v8, v2

    .line 383
    .local v6, "start":J
    iget-object v8, p0, Lcom/parse/GcmRegistrar$Request;->retryIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 385
    .end local v0    # "alarmType":I
    .end local v2    # "delay":J
    .end local v4    # "manager":Landroid/app/AlarmManager;
    .end local v6    # "start":J
    :cond_1
    invoke-direct {p0, v5, v1}, Lcom/parse/GcmRegistrar$Request;->finish(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
