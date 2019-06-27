.class Lnl/xservices/plugins/SocialSharing$1;
.super Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;
.source "SocialSharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/SocialSharing;->invokeEmailIntent(Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$bcc:Lorg/json/JSONArray;

.field final synthetic val$cc:Lorg/json/JSONArray;

.field final synthetic val$files:Lorg/json/JSONArray;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$plugin:Lnl/xservices/plugins/SocialSharing;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$to:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lorg/json/JSONArray;Lnl/xservices/plugins/SocialSharing;)V
    .locals 0
    .param p1, "this$0"    # Lnl/xservices/plugins/SocialSharing;
    .param p2, "cb"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 137
    iput-object p1, p0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iput-object p3, p0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    iput-object p5, p0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    iput-object p6, p0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    iput-object p7, p0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    iput-object p8, p0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    iput-object p9, p0, Lnl/xservices/plugins/SocialSharing$1;->val$plugin:Lnl/xservices/plugins/SocialSharing;

    invoke-direct {p0, p1, p2}, Lnl/xservices/plugins/SocialSharing$SocialSharingRunnable;-><init>(Lnl/xservices/plugins/SocialSharing;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 139
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "draft":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-static {v1}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, ".*\\<[^>]+>.*"

    const/16 v4, 0x20

    invoke-static {v1, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 142
    .local v12, "htmlPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 143
    const-string v1, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 144
    const-string v1, "text/html"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    .end local v12    # "htmlPattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    invoke-static {v1}, Lnl/xservices/plugins/SocialSharing;->access$000(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const-string v1, "android.intent.extra.SUBJECT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 155
    const-string v1, "android.intent.extra.EMAIL"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$to:Lorg/json/JSONArray;

    invoke-static {v4}, Lnl/xservices/plugins/SocialSharing;->access$100(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 158
    const-string v1, "android.intent.extra.CC"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$cc:Lorg/json/JSONArray;

    invoke-static {v4}, Lnl/xservices/plugins/SocialSharing;->access$100(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 161
    const-string v1, "android.intent.extra.BCC"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$bcc:Lorg/json/JSONArray;

    invoke-static {v4}, Lnl/xservices/plugins/SocialSharing;->access$100(Lorg/json/JSONArray;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    invoke-static {v1}, Lnl/xservices/plugins/SocialSharing;->access$200(Lnl/xservices/plugins/SocialSharing;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "dir":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 166
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v11, "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v6, v1, :cond_7

    .line 168
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$files:Lorg/json/JSONArray;

    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$1;->val$subject:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lnl/xservices/plugins/SocialSharing;->access$300(Lnl/xservices/plugins/SocialSharing;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v10

    .line 169
    .local v10, "fileUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v5, v5, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".sharing.provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {v10}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Lnl/xservices/plugins/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 170
    if-eqz v10, :cond_5

    .line 171
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 146
    .end local v3    # "dir":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v10    # "fileUri":Landroid/net/Uri;
    .end local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v12    # "htmlPattern":Ljava/util/regex/Pattern;
    :cond_6
    const-string v1, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lnl/xservices/plugins/SocialSharing$1;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "text/plain"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 174
    .end local v12    # "htmlPattern":Ljava/util/regex/Pattern;
    .restart local v3    # "dir":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_7
    :try_start_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 175
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v3    # "dir":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v11    # "fileUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 187
    const-string v1, "mailto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 191
    .local v8, "emailAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v14, "labeledIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LabeledIntent;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 193
    .local v13, "info":Landroid/content/pm/ResolveInfo;
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v4, "application/octet-stream"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 197
    new-instance v4, Landroid/content/pm/LabeledIntent;

    iget-object v5, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v15, v15, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v15}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    iget v0, v13, Landroid/content/pm/ResolveInfo;->icon:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v4, v2, v5, v15, v0}, Landroid/content/pm/LabeledIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 179
    .end local v8    # "emailAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "info":Landroid/content/pm/ResolveInfo;
    .end local v14    # "labeledIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LabeledIntent;>;"
    :catch_0
    move-exception v7

    .line 180
    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 208
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 199
    .restart local v8    # "emailAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "labeledIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LabeledIntent;>;"
    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v14, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v4, "Choose Email App"

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v9

    .line 200
    .local v9, "emailAppLists":Landroid/content/Intent;
    const-string v4, "android.intent.extra.INITIAL_INTENTS"

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/LabeledIntent;

    invoke-interface {v14, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v9, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    move-object/from16 v0, p0

    iget-object v1, v0, Lnl/xservices/plugins/SocialSharing$1;->this$0:Lnl/xservices/plugins/SocialSharing;

    iget-object v1, v1, Lnl/xservices/plugins/SocialSharing;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Lnl/xservices/plugins/SocialSharing$1$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v9}, Lnl/xservices/plugins/SocialSharing$1$1;-><init>(Lnl/xservices/plugins/SocialSharing$1;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method
