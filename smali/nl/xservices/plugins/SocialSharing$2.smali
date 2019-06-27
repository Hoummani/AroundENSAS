.class Lnl/xservices/plugins/SocialSharing$2;
.super Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing;->doSendIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$appName:Ljava/lang/String;

.field final synthetic val$appPackageName:Ljava/lang/String;

.field final synthetic val$boolResult:Z

.field final synthetic val$chooserTitle:Ljava/lang/String;

.field final synthetic val$files:Lorg/json/JSONArray;

.field final synthetic val$msg:Ljava/lang/String;

.field final synthetic val$mycordova:Lorg/apache/cordova/CordovaInterface;

.field final synthetic val$peek:Z

.field final synthetic val$plugin:Lorg/apache/cordova/CordovaPlugin;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaPlugin;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/SocialSharing;
    .param p2, "cb"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 268
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$2;->val$msg:Ljava/lang/String;

    iput-object p4, p0, Lnl/xservices/plugins/SocialSharing$2;->val$files:Lorg/json/JSONArray;

    iput-object p5, p0, Lnl/xservices/plugins/SocialSharing$2;->val$subject:Ljava/lang/String;

    iput-object p6, p0, Lnl/xservices/plugins/SocialSharing$2;->val$url:Ljava/lang/String;

    iput-object p7, p0, Lnl/xservices/plugins/SocialSharing$2;->val$appPackageName:Ljava/lang/String;

    iput-object p8, p0, Lnl/xservices/plugins/SocialSharing$2;->val$appName:Ljava/lang/String;

    iput-boolean p9, p0, Lnl/xservices/plugins/SocialSharing$2;->val$peek:Z

    iput-object p10, p0, Lnl/xservices/plugins/SocialSharing$2;->val$mycordova:Lorg/apache/cordova/CordovaInterface;

    iput-object p11, p0, Lnl/xservices/plugins/SocialSharing$2;->val$plugin:Lorg/apache/cordova/CordovaPlugin;

    iput-object p12, p0, Lnl/xservices/plugins/SocialSharing$2;->val$chooserTitle:Ljava/lang/String;

    iput-boolean p13, p0, Lnl/xservices/plugins/SocialSharing$2;->val$boolResult:Z

    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v14, v0, Lnl/xservices/plugins/SocialSharing$2;->val$msg:Ljava/lang/String;

    .line 271
    .local v14, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    const/4 v12, 0x1

    .line 272
    .local v12, "hasMultipleAttachments":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    if-eqz v12, :cond_1

    const-string v2, "android.intent.action.SEND_MULTIPLE"

    :goto_1
    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v3, "sendIntent":Landroid/content/Intent;
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v5, Lnl/xservices/plugins/ShareChooserPendingIntent;

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v18, "receiverIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    move-object/from16 v0, v18

    invoke-static {v2, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 275
    .local v17, "pendingIntent":Landroid/app/PendingIntent;
    const/high16 v2, 0x80000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 278
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_b

    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$2;->val$files:Lorg/json/JSONArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$200(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "dir":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 281
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v11, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v10, 0x0

    .line 283
    .local v10, "fileUri":Landroid/net/Uri;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v7, v2, :cond_2

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$2;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lnl/xservices/plugins/SocialSharing$2;->val$subject:Ljava/lang/String;

    invoke-static/range {v2 .. v7}, Lnl/xservices/plugins/SocialSharing;->access$300(Lnl/xservices/plugins/SocialSharing;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v6, v6, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".sharing.provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/io/File;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5, v6}, Lnl/xservices/plugins/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 286
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 271
    .end local v3    # "sendIntent":Landroid/content/Intent;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "fileUri":Landroid/net/Uri;
    .end local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v12    # "hasMultipleAttachments":Z
    .end local v17    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v18    # "receiverIntent":Landroid/content/Intent;
    :cond_0
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 272
    .restart local v12    # "hasMultipleAttachments":Z
    :cond_1
    const-string v2, "android.intent.action.SEND"

    goto/16 :goto_1

    .line 288
    .restart local v3    # "sendIntent":Landroid/content/Intent;
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "fileUri":Landroid/net/Uri;
    .restart local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v17    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v18    # "receiverIntent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 289
    if-eqz v12, :cond_9

    .line 290
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v3, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "fileUri":Landroid/net/Uri;
    .end local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$subject:Ljava/lang/String;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    const-string v2, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$2;->val$subject:Ljava/lang/String;

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$url:Ljava/lang/String;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 311
    invoke-static {v14}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$2;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 317
    :cond_5
    :goto_4
    invoke-static {v14}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 318
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v2, v5, :cond_6

    .line 321
    const-string v2, "sms_body"

    invoke-virtual {v3, v2, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    :cond_6
    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$appPackageName:Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lnl/xservices/plugins/SocialSharing$2;->val$appPackageName:Ljava/lang/String;

    .line 330
    .local v15, "packageName":Ljava/lang/String;
    const/16 v16, 0x0

    .line 331
    .local v16, "passedActivityName":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$appPackageName:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 333
    .local v13, "items":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v15, v13, v2

    .line 334
    const/4 v2, 0x1

    aget-object v16, v13, v2

    .line 336
    .end local v13    # "items":[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$2;->callbackContext:Lorg/apache/cordova/CallbackContext;

    move-object/from16 v0, p0

    iget-object v6, v0, Lnl/xservices/plugins/SocialSharing$2;->val$appName:Ljava/lang/String;

    invoke-static {v2, v5, v3, v15, v6}, Lnl/xservices/plugins/SocialSharing;->access$400(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 337
    .local v8, "activity":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_8

    .line 338
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$peek:Z

    if-eqz v2, :cond_d

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 387
    .end local v8    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "passedActivityName":Ljava/lang/String;
    :cond_8
    :goto_5
    return-void

    .line 292
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v10    # "fileUri":Landroid/net/Uri;
    .restart local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9
    :try_start_2
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v3, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 301
    .end local v4    # "dir":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v10    # "fileUri":Landroid/net/Uri;
    .end local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v9

    .line 302
    .local v9, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 296
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "dir":Ljava/lang/String;
    :cond_a
    :try_start_3
    const-string v2, "text/plain"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 299
    .end local v4    # "dir":Ljava/lang/String;
    :cond_b
    const-string v2, "text/plain"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 314
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lnl/xservices/plugins/SocialSharing$2;->val$url:Ljava/lang/String;

    goto/16 :goto_4

    .line 341
    .restart local v8    # "activity":Landroid/content/pm/ActivityInfo;
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "passedActivityName":Ljava/lang/String;
    :cond_d
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    new-instance v2, Landroid/content/ComponentName;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v16, :cond_e

    .end local v16    # "passedActivityName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, v16

    invoke-direct {v2, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v5, Lnl/xservices/plugins/SocialSharing$2$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v3}, Lnl/xservices/plugins/SocialSharing$2$1;-><init>(Lnl/xservices/plugins/SocialSharing$2;Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v2}, Lnl/xservices/plugins/SocialSharing;->access$500(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 354
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v5, Lnl/xservices/plugins/SocialSharing$2$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lnl/xservices/plugins/SocialSharing$2$2;-><init>(Lnl/xservices/plugins/SocialSharing$2;)V

    const-wide/16 v20, 0x7d0

    move-wide/from16 v0, v20

    invoke-virtual {v2, v5, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_5

    .line 342
    .restart local v16    # "passedActivityName":Ljava/lang/String;
    :cond_e
    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_6

    .line 368
    .end local v8    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "passedActivityName":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lnl/xservices/plugins/SocialSharing$2;->val$peek:Z

    if-eqz v2, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v5, Lorg/apache/cordova/PluginResult;

    sget-object v6, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v5, v6}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v2, v5}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto/16 :goto_5

    .line 373
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lnl/xservices/plugins/SocialSharing$2;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v2, v2, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v5, Lnl/xservices/plugins/SocialSharing$2$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v5, v0, v3, v1}, Lnl/xservices/plugins/SocialSharing$2$3;-><init>(Lnl/xservices/plugins/SocialSharing$2;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    invoke-virtual {v2, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_5
.end method
