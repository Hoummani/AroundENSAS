.class public Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
.super Ljava/lang/Object;
.source "FetchedAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FetchedAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogFeatureConfig"
.end annotation


# static fields
.field private static final DIALOG_CONFIG_DIALOG_NAME_FEATURE_NAME_SEPARATOR:Ljava/lang/String; = "\\|"

.field private static final DIALOG_CONFIG_NAME_KEY:Ljava/lang/String; = "name"

.field private static final DIALOG_CONFIG_URL_KEY:Ljava/lang/String; = "url"

.field private static final DIALOG_CONFIG_VERSIONS_KEY:Ljava/lang/String; = "versions"


# instance fields
.field private dialogName:Ljava/lang/String;

.field private fallbackUrl:Landroid/net/Uri;

.field private featureName:Ljava/lang/String;

.field private featureVersionSpec:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V
    .locals 0
    .param p1, "dialogName"    # Ljava/lang/String;
    .param p2, "featureName"    # Ljava/lang/String;
    .param p3, "fallbackUrl"    # Landroid/net/Uri;
    .param p4, "featureVersionSpec"    # [I

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    .line 236
    iput-object p2, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    .line 237
    iput-object p3, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->fallbackUrl:Landroid/net/Uri;

    .line 238
    iput-object p4, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureVersionSpec:[I

    .line 239
    return-void
.end method

.method public static parseDialogConfig(Lorg/json/JSONObject;)Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;
    .locals 11
    .param p0, "dialogConfigJSON"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x0

    .line 160
    const-string v9, "name"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "dialogNameWithFeature":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-object v8

    .line 165
    :cond_1
    const-string v9, "\\|"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "components":[Ljava/lang/String;
    array-length v9, v0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 173
    const/4 v9, 0x0

    aget-object v1, v0, v9

    .line 174
    .local v1, "dialogName":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v4, v0, v9

    .line 175
    .local v4, "featureName":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 179
    const-string v8, "url"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "urlString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 181
    .local v3, "fallbackUri":Landroid/net/Uri;
    invoke-static {v6}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 182
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 185
    :cond_2
    const-string v8, "versions"

    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 187
    .local v7, "versionsJSON":Lorg/json/JSONArray;
    invoke-static {v7}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->parseVersionSpec(Lorg/json/JSONArray;)[I

    move-result-object v5

    .line 189
    .local v5, "featureVersionSpec":[I
    new-instance v8, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;

    invoke-direct {v8, v1, v4, v3, v5}, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;[I)V

    goto :goto_0
.end method

.method private static parseVersionSpec(Lorg/json/JSONArray;)[I
    .locals 8
    .param p0, "versionsJSON"    # Lorg/json/JSONArray;

    .prologue
    const/4 v7, -0x1

    .line 197
    const/4 v4, 0x0

    .line 198
    .local v4, "versionSpec":[I
    if-eqz p0, :cond_1

    .line 199
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 200
    .local v2, "numVersions":I
    new-array v4, v2, [I

    .line 201
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 203
    invoke-virtual {p0, v0, v7}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    .line 204
    .local v3, "version":I
    if-ne v3, v7, :cond_0

    .line 207
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 208
    .local v5, "versionString":Ljava/lang/String;
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 210
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 218
    .end local v5    # "versionString":Ljava/lang/String;
    :cond_0
    :goto_1
    aput v3, v4, v0

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .restart local v5    # "versionString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 212
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v6, "FacebookSDK"

    invoke-static {v6, v1}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 213
    const/4 v3, -0x1

    goto :goto_1

    .line 222
    .end local v0    # "i":I
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    .end local v2    # "numVersions":I
    .end local v3    # "version":I
    .end local v5    # "versionString":Ljava/lang/String;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getDialogName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->dialogName:Ljava/lang/String;

    return-object v0
.end method

.method public getFallbackUrl()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->fallbackUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionSpec()[I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/internal/FetchedAppSettings$DialogFeatureConfig;->featureVersionSpec:[I

    return-object v0
.end method
