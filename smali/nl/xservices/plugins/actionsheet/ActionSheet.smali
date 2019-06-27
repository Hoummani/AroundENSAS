.class public Lnl/xservices/plugins/actionsheet/ActionSheet;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ActionSheet.java"


# static fields
.field private static final ACTION_HIDE:Ljava/lang/String; = "hide"

.field private static final ACTION_SHOW:Ljava/lang/String; = "show"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Z
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lnl/xservices/plugins/actionsheet/ActionSheet;->getStringArray(Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnl/xservices/plugins/actionsheet/ActionSheet;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;

    .prologue
    .line 23
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Lnl/xservices/plugins/actionsheet/ActionSheet;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lnl/xservices/plugins/actionsheet/ActionSheet;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 23
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private varargs getStringArray(Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "append"    # Z
    .param p3, "additionalButtons"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v1, "btns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 172
    array-length v5, p3

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, p3, v4

    .line 173
    .local v0, "btn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "btn":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 182
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 187
    .end local v2    # "i":I
    :cond_2
    if-eqz p2, :cond_4

    .line 188
    array-length v4, p3

    :goto_2
    if-ge v3, v4, :cond_4

    aget-object v0, p3, v3

    .line 189
    .restart local v0    # "btn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 190
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    .end local v0    # "btn":Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 36
    const-string v0, "show"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 39
    .local v10, "options":Lorg/json/JSONObject;
    const-string v0, "title"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "title":Ljava/lang/String;
    const-string v0, "subtitle"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "subtitle":Ljava/lang/String;
    const-string v0, "androidTheme"

    const/4 v9, 0x1

    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 42
    .local v8, "theme":I
    const-string v0, "buttonLabels"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 44
    .local v3, "buttons":Lorg/json/JSONArray;
    const-string v0, "androidEnableCancelButton"

    const/4 v9, 0x0

    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 45
    .local v5, "androidEnableCancelButton":Z
    const-string v0, "destructiveButtonLast"

    const/4 v9, 0x0

    invoke-virtual {v10, v0, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 47
    .local v7, "destructiveButtonLast":Z
    const-string v0, "addCancelButtonWithLabel"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    .local v4, "addCancelButtonWithLabel":Ljava/lang/String;
    const-string v0, "addDestructiveButtonWithLabel"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "addDestructiveButtonWithLabel":Ljava/lang/String;
    move-object v0, p0

    move-object v9, p3

    .line 50
    invoke-virtual/range {v0 .. v9}, Lnl/xservices/plugins/actionsheet/ActionSheet;->show(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ZILorg/apache/cordova/CallbackContext;)V

    .line 54
    const/4 v0, 0x1

    .line 64
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "subtitle":Ljava/lang/String;
    .end local v3    # "buttons":Lorg/json/JSONArray;
    .end local v4    # "addCancelButtonWithLabel":Ljava/lang/String;
    .end local v5    # "androidEnableCancelButton":Z
    .end local v6    # "addDestructiveButtonWithLabel":Ljava/lang/String;
    .end local v7    # "destructiveButtonLast":Z
    .end local v8    # "theme":I
    .end local v10    # "options":Lorg/json/JSONObject;
    :goto_0
    return v0

    .line 56
    :cond_0
    const-string v0, "hide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 59
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v9, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v11, -0x1

    invoke-direct {v0, v9, v11}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 61
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized show(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ZILorg/apache/cordova/CallbackContext;)V
    .locals 11
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "subtitle"    # Ljava/lang/String;
    .param p3, "buttonLabels"    # Lorg/json/JSONArray;
    .param p4, "addCancelButtonWithLabel"    # Ljava/lang/String;
    .param p5, "androidEnableCancelButton"    # Z
    .param p6, "addDestructiveButtonWithLabel"    # Ljava/lang/String;
    .param p7, "destructiveButtonLast"    # Z
    .param p8, "theme"    # I
    .param p9, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 79
    .local v2, "cordova":Lorg/apache/cordova/CordovaInterface;
    new-instance v0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    move-object v1, p0

    move/from16 v3, p8

    move-object v4, p1

    move/from16 v5, p5

    move-object v6, p4

    move-object v7, p3

    move/from16 v8, p7

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lnl/xservices/plugins/actionsheet/ActionSheet$1;-><init>(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/apache/cordova/CordovaInterface;ILjava/lang/String;ZLjava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 163
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 77
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "cordova":Lorg/apache/cordova/CordovaInterface;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
