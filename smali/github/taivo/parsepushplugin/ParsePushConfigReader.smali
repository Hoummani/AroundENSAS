.class public final Lgithub/taivo/parsepushplugin/ParsePushConfigReader;
.super Ljava/lang/Object;
.source "ParsePushConfigReader.java"


# static fields
.field public static final LOGTAG:Ljava/lang/String; = "ParsePushConfigReader"

.field private static final parseAppIdKey:Ljava/lang/String; = "ParseAppId"

.field private static final parseClientKeyKey:Ljava/lang/String; = "ParseClientKey"

.field private static final parseServerUrlKey:Ljava/lang/String; = "ParseServerUrl"

.field private static final preferenceTag:Ljava/lang/String; = "preference"


# instance fields
.field private configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private supportedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configXmlResourceId"    # Ljava/lang/Integer;
    .param p3, "moreSupportedKeys"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgithub/taivo/parsepushplugin/ParsePushConfigException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ParseAppId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ParseServerUrl"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->supportedKeys:Ljava/util/List;

    .line 45
    if-nez p2, :cond_1

    invoke-static {p1}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getConfigXmlResourceId(Landroid/content/Context;)I

    move-result v0

    .line 47
    .local v0, "configXmlResId":I
    :goto_0
    if-eqz p3, :cond_0

    .line 48
    iget-object v1, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->supportedKeys:Ljava/util/List;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->loadConfigsFromXml(Landroid/content/res/Resources;I)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->configs:Ljava/util/Map;

    .line 52
    invoke-virtual {p0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->hasRequiredParams()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 53
    new-instance v1, Lgithub/taivo/parsepushplugin/ParsePushConfigException;

    const-string v2, "ParseAppId or ParseServerUrl is missing! Please set them in config.xml"

    invoke-direct {v1, v2}, Lgithub/taivo/parsepushplugin/ParsePushConfigException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v0    # "configXmlResId":I
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 56
    .restart local v0    # "configXmlResId":I
    :cond_2
    return-void
.end method

.method private static getConfigXmlResourceId(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config"

    const-string v2, "xml"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private loadConfigsFromXml(Landroid/content/res/Resources;I)Ljava/util/Map;
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "configXmlResourceId"    # I

    .prologue
    .line 92
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 94
    .local v3, "xrp":Landroid/content/res/XmlResourceParser;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v0, "configs":Ljava/util/Map;
    :try_start_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    .line 101
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 102
    const-string v4, "preference"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->matchSupportedKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, "key":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 105
    const/4 v4, 0x0

    const-string v5, "value"

    invoke-interface {v3, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "ParsePushConfigReader"

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_1
    :goto_1
    return-object v0

    .line 112
    :catch_1
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/io/IOException;
    const-string v4, "ParsePushConfigReader"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private matchSupportedKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "testKey"    # Ljava/lang/String;

    .prologue
    .line 83
    iget-object v1, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->supportedKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "realKey":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    .end local v0    # "realKey":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->configs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->configs:Ljava/util/Map;

    const-string v1, "ParseAppId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->configs:Ljava/util/Map;

    const-string v1, "ParseClientKey"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->configs:Ljava/util/Map;

    const-string v1, "ParseServerUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasRequiredParams()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lgithub/taivo/parsepushplugin/ParsePushConfigReader;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
