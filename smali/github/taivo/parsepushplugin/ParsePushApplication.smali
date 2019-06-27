.class public Lgithub/taivo/parsepushplugin/ParsePushApplication;
.super Landroid/app/Application;
.source "ParsePushApplication.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "ParsePushApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 7

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 60
    :try_start_0
    new-instance v0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;

    invoke-virtual {p0}, Lgithub/taivo/parsepushplugin/ParsePushApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ParseClientKey"

    aput-object v6, v4, v5

    invoke-direct {v0, v2, v3, v4}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;-><init>(Landroid/content/Context;Ljava/lang/Integer;[Ljava/lang/String;)V

    .line 62
    .local v0, "config":Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PARSE_DOT_COM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getClientKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :goto_0
    const-string v2, "ParsePushApplication"

    const-string v3, "Saving Installation in background"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v2

    new-instance v3, Lgithub/taivo/parsepushplugin/ParsePushApplication$1;

    invoke-direct {v3, p0}, Lgithub/taivo/parsepushplugin/ParsePushApplication$1;-><init>(Lgithub/taivo/parsepushplugin/ParsePushApplication;)V

    invoke-virtual {v2, v3}, Lcom/parse/ParseInstallation;->saveInBackground(Lcom/parse/SaveCallback;)V

    .line 93
    .end local v0    # "config":Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
    :goto_1
    return-void

    .line 67
    .restart local v0    # "config":Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
    :cond_0
    const-string v2, "ParsePushApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getServerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v2, "ParsePushApplication"

    const-string v3, "NOTE: The trailing slash is important, e.g., https://mydomain.com:1337/parse/"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v2, "ParsePushApplication"

    const-string v3, "NOTE: Set the clientKey if your server requires it, otherwise it can be null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v2, Lcom/parse/Parse$Configuration$Builder;

    invoke-direct {v2, p0}, Lcom/parse/Parse$Configuration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/Parse$Configuration$Builder;->applicationId(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/Parse$Configuration$Builder;->server(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v2

    invoke-virtual {v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getClientKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/parse/Parse$Configuration$Builder;->clientKey(Ljava/lang/String;)Lcom/parse/Parse$Configuration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/Parse$Configuration$Builder;->build()Lcom/parse/Parse$Configuration;

    move-result-object v2

    .line 72
    invoke-static {v2}, Lcom/parse/Parse;->initialize(Lcom/parse/Parse$Configuration;)V
    :try_end_0
    .catch Lgithub/taivo/parsepushplugin/ParsePushConfigException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    .end local v0    # "config":Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
    :catch_0
    move-exception v1

    .line 91
    .local v1, "ex":Lgithub/taivo/parsepushplugin/ParsePushConfigException;
    const-string v2, "ParsePushApplication"

    invoke-virtual {v1}, Lgithub/taivo/parsepushplugin/ParsePushConfigException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
