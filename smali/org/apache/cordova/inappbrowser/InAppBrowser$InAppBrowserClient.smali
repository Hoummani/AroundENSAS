.class public Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;
.super Landroid/webkit/WebViewClient;
.source "InAppBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InAppBrowserClient"
.end annotation


# instance fields
.field edittext:Landroid/widget/EditText;

.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

.field webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/CordovaWebView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;
    .param p3, "mEditText"    # Landroid/widget/EditText;

    .prologue
    .line 1049
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 1050
    iput-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 1051
    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->edittext:Landroid/widget/EditText;

    .line 1052
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1181
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1184
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 1185
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->flush()V

    .line 1191
    :goto_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->clearFocus()V

    .line 1192
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1195
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1196
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "loadstop"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1197
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1199
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 1187
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "ex":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1150
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1151
    const-string v1, ""

    .line 1152
    .local v1, "newloc":Ljava/lang/String;
    const-string v3, "http:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "file:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1153
    :cond_0
    move-object v1, p2

    .line 1164
    :goto_0
    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->edittext:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1165
    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->edittext:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1170
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "type"

    const-string v4, "loadstart"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1171
    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1172
    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 1159
    :cond_2
    const-string v3, "InAppBrowser"

    const-string v4, "Possible Uncaught/Unknown URI"

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "ex":Lorg/json/JSONException;
    const-string v3, "InAppBrowser"

    const-string v4, "URI passed in has caused a JSON error."

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1209
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1210
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "type"

    const-string v3, "loaderror"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1211
    const-string v2, "url"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1212
    const-string v2, "code"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1213
    const-string v2, "message"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1215
    iget-object v2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    invoke-static {v2, v1, v3, v4}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2800(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;ZLorg/apache/cordova/PluginResult$Status;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "ex":Lorg/json/JSONException;
    const-string v2, "InAppBrowser"

    const-string v3, "Should never happen"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/HttpAuthHandler;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "realm"    # Ljava/lang/String;

    .prologue
    .line 1228
    const/4 v3, 0x0

    .line 1230
    .local v3, "pluginManager":Lorg/apache/cordova/PluginManager;
    :try_start_0
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getPluginManager"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1231
    .local v2, "gpm":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/cordova/PluginManager;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1240
    .end local v2    # "gpm":Ljava/lang/reflect/Method;
    :goto_0
    if-nez v3, :cond_0

    .line 1242
    :try_start_1
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "pluginManager"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 1243
    .local v4, "pmf":Ljava/lang/reflect/Field;
    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/cordova/PluginManager;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1251
    .end local v4    # "pmf":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    iget-object v5, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->webView:Lorg/apache/cordova/CordovaWebView;

    new-instance v6, Lorg/apache/cordova/CordovaHttpAuthHandler;

    invoke-direct {v6, p2}, Lorg/apache/cordova/CordovaHttpAuthHandler;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v3, v5, v6, p3, p4}, Lorg/apache/cordova/PluginManager;->onReceivedHttpAuthRequest(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/ICordovaHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1257
    :goto_2
    return-void

    .line 1232
    :catch_0
    move-exception v1

    .line 1233
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "InAppBrowser"

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 1235
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "InAppBrowser"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "InAppBrowser"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1244
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .line 1245
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "InAppBrowser"

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1246
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v1

    .line 1247
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "InAppBrowser"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1256
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 16
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1064
    const-string v11, "tel:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1066
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.DIAL"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1067
    .local v5, "intent":Landroid/content/Intent;
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1068
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v11, v11, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    const/4 v11, 0x1

    .line 1137
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_0
    return v11

    .line 1070
    :catch_0
    move-exception v3

    .line 1071
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string v11, "InAppBrowser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error dialing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    :goto_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1073
    :cond_1
    const-string v11, "geo:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "mailto:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "market:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "intent:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1075
    :cond_2
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1076
    .restart local v5    # "intent":Landroid/content/Intent;
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1077
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v11, v11, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1078
    const/4 v11, 0x1

    goto :goto_0

    .line 1079
    .end local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 1080
    .restart local v3    # "e":Landroid/content/ActivityNotFoundException;
    const-string v11, "InAppBrowser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1084
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    const-string v11, "sms:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1086
    :try_start_2
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1089
    .restart local v5    # "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 1090
    .local v1, "address":Ljava/lang/String;
    const/16 v11, 0x3f

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1091
    .local v7, "parmIndex":I
    const/4 v11, -0x1

    if-ne v7, v11, :cond_5

    .line 1092
    const/4 v11, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1105
    :cond_4
    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sms:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1106
    const-string v11, "address"

    invoke-virtual {v5, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1107
    const-string v11, "vnd.android-dir/mms-sms"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v11, v11, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1109
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1094
    :cond_5
    const/4 v11, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1097
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1098
    .local v10, "uri":Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v8

    .line 1099
    .local v8, "query":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 1100
    const-string v11, "body="

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1101
    const-string v11, "sms_body"

    const/4 v12, 0x5

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 1110
    .end local v1    # "address":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v7    # "parmIndex":I
    .end local v8    # "query":Ljava/lang/String;
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_2
    move-exception v3

    .line 1111
    .restart local v3    # "e":Landroid/content/ActivityNotFoundException;
    const-string v11, "InAppBrowser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error sending sms "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1115
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    :cond_6
    const-string v11, "http:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "https:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "^[a-z]*://.*?$"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1116
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v11}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)[Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    .line 1117
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v11}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v11

    const-string v12, "AllowedSchemes"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1118
    .local v2, "allowed":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const-string v12, ","

    invoke-virtual {v2, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2602(Lorg/apache/cordova/inappbrowser/InAppBrowser;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1120
    .end local v2    # "allowed":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v11}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 1121
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v11}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v13, :cond_0

    aget-object v9, v12, v11

    .line 1122
    .local v9, "scheme":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1124
    :try_start_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1125
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v14, "type"

    const-string v15, "customscheme"

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1126
    const-string v14, "url"

    move-object/from16 v0, p2

    invoke-virtual {v6, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1127
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    const/4 v15, 0x1

    invoke-static {v14, v6, v15}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$200(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/json/JSONObject;Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1128
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 1129
    .end local v6    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v4

    .line 1130
    .local v4, "ex":Lorg/json/JSONException;
    const-string v14, "InAppBrowser"

    const-string v15, "Custom Scheme URI passed in has caused a JSON error."

    invoke-static {v14, v15}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    .end local v4    # "ex":Lorg/json/JSONException;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method
