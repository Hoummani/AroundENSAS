.class public Lorg/apache/cordova/dialogs/Notification;
.super Lorg/apache/cordova/CordovaPlugin;
.source "Notification.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notification"


# instance fields
.field public confirmResult:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field public spinnerDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/cordova/dialogs/Notification;->confirmResult:I

    .line 56
    iput-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 57
    iput-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/dialogs/Notification;
    .param p1, "x1"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->createDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/cordova/dialogs/Notification;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/dialogs/Notification;
    .param p1, "x1"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->changeTextDirection(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/dialogs/Notification;
    .param p1, "x1"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/apache/cordova/dialogs/Notification;->createProgressDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method private changeTextDirection(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "dlg"    # Landroid/app/AlertDialog$Builder;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 506
    .local v0, "currentapiVersion":I
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 507
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 508
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/16 v3, 0x11

    if-lt v0, v3, :cond_0

    .line 509
    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 510
    .local v2, "messageview":Landroid/widget/TextView;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 512
    .end local v2    # "messageview":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private createDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/AlertDialog$Builder;
    .locals 4
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 486
    .local v0, "currentapiVersion":I
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 487
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 489
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private createProgressDialog(Lorg/apache/cordova/CordovaInterface;)Landroid/app/ProgressDialog;
    .locals 4
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 495
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 496
    .local v0, "currentapiVersion":I
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 497
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 499
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized activityStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 394
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    .line 397
    :cond_0
    move-object v2, p0

    .line 398
    .local v2, "notification":Lorg/apache/cordova/dialogs/Notification;
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 399
    .local v3, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$5;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$5;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 393
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "notification":Lorg/apache/cordova/dialogs/Notification;
    .end local v3    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized activityStop()V
    .locals 1

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->spinnerDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    :cond_0
    monitor-exit p0

    return-void

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabel"    # Ljava/lang/String;
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 165
    .local v2, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/dialogs/Notification$2;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 190
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 163
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beep(J)V
    .locals 3
    .param p1, "count"    # J

    .prologue
    .line 131
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/dialogs/Notification$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/cordova/dialogs/Notification$1;-><init>(Lorg/apache/cordova/dialogs/Notification;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public declared-synchronized confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 206
    .local v2, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$3;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/cordova/dialogs/Notification$3;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 268
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    monitor-exit p0

    return-void

    .line 204
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 80
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 82
    :cond_1
    const-string v1, "beep"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/dialogs/Notification;->beep(J)V

    .line 117
    :goto_1
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    move v0, v6

    .line 118
    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "alert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/cordova/dialogs/Notification;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move v0, v6

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const-string v1, "confirm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2, p3}, Lorg/apache/cordova/dialogs/Notification;->confirm(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    move v0, v6

    .line 91
    goto :goto_0

    .line 93
    :cond_4
    const-string v1, "prompt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification;->prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    move v0, v6

    .line 95
    goto :goto_0

    .line 97
    :cond_5
    const-string v1, "activityStart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 98
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/dialogs/Notification;->activityStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :cond_6
    const-string v1, "activityStop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 101
    invoke-virtual {p0}, Lorg/apache/cordova/dialogs/Notification;->activityStop()V

    goto :goto_1

    .line 103
    :cond_7
    const-string v1, "progressStart"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 104
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/cordova/dialogs/Notification;->progressStart(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 106
    :cond_8
    const-string v1, "progressValue"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 107
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/cordova/dialogs/Notification;->progressValue(I)V

    goto/16 :goto_1

    .line 109
    :cond_9
    const-string v1, "progressStop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/apache/cordova/dialogs/Notification;->progressStop()V

    goto/16 :goto_1
.end method

.method public declared-synchronized progressStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    .line 439
    :cond_0
    move-object v2, p0

    .line 440
    .local v2, "notification":Lorg/apache/cordova/dialogs/Notification;
    iget-object v3, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 441
    .local v3, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$6;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/cordova/dialogs/Notification$6;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    monitor-exit p0

    return-void

    .line 435
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "notification":Lorg/apache/cordova/dialogs/Notification;
    .end local v3    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized progressStop()V
    .locals 1

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    :cond_0
    monitor-exit p0

    return-void

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized progressValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/apache/cordova/dialogs/Notification;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prompt(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "defaultText"    # Ljava/lang/String;
    .param p5, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 287
    .local v2, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lorg/apache/cordova/dialogs/Notification$4;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/cordova/dialogs/Notification$4;-><init>(Lorg/apache/cordova/dialogs/Notification;Lorg/apache/cordova/CordovaInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 383
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lorg/apache/cordova/dialogs/Notification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit p0

    return-void

    .line 285
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
