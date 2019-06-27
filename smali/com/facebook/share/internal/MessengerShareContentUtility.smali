.class public Lcom/facebook/share/internal/MessengerShareContentUtility;
.super Ljava/lang/Object;
.source "MessengerShareContentUtility.java"


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final ATTACHMENT_ID:Ljava/lang/String; = "attachment_id"

.field public static final ATTACHMENT_PAYLOAD:Ljava/lang/String; = "payload"

.field public static final ATTACHMENT_TEMPLATE_TYPE:Ljava/lang/String; = "template"

.field public static final ATTACHMENT_TYPE:Ljava/lang/String; = "type"

.field public static final BUTTONS:Ljava/lang/String; = "buttons"

.field public static final BUTTON_TYPE:Ljava/lang/String; = "type"

.field public static final BUTTON_URL_TYPE:Ljava/lang/String; = "web_url"

.field public static final DEFAULT_ACTION:Ljava/lang/String; = "default_action"

.field public static final ELEMENTS:Ljava/lang/String; = "elements"

.field public static final FACEBOOK_DOMAIN:Ljava/util/regex/Pattern;

.field public static final FALLBACK_URL:Ljava/lang/String; = "fallback_url"

.field public static final IMAGE_ASPECT_RATIO:Ljava/lang/String; = "image_aspect_ratio"

.field public static final IMAGE_RATIO_HORIZONTAL:Ljava/lang/String; = "horizontal"

.field public static final IMAGE_RATIO_SQUARE:Ljava/lang/String; = "square"

.field public static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field public static final MEDIA_IMAGE:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final MEDIA_VIDEO:Ljava/lang/String; = "video"

.field public static final MESSENGER_EXTENSIONS:Ljava/lang/String; = "messenger_extensions"

.field public static final PREVIEW_DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final PREVIEW_OPEN_GRAPH:Ljava/lang/String; = "OPEN_GRAPH"

.field public static final SHARABLE:Ljava/lang/String; = "sharable"

.field public static final SHARE_BUTTON_HIDE:Ljava/lang/String; = "hide"

.field public static final SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final TEMPLATE_GENERIC_TYPE:Ljava/lang/String; = "generic"

.field public static final TEMPLATE_MEDIA_TYPE:Ljava/lang/String; = "media"

.field public static final TEMPLATE_OPEN_GRAPH_TYPE:Ljava/lang/String; = "open_graph"

.field public static final TEMPLATE_TYPE:Ljava/lang/String; = "template_type"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final WEBVIEW_RATIO:Ljava/lang/String; = "webview_height_ratio"

.field public static final WEBVIEW_RATIO_COMPACT:Ljava/lang/String; = "compact"

.field public static final WEBVIEW_RATIO_FULL:Ljava/lang/String; = "full"

.field public static final WEBVIEW_RATIO_TALL:Ljava/lang/String; = "tall"

.field public static final WEBVIEW_SHARE_BUTTON:Ljava/lang/String; = "webview_share_button"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "^(.+)\\.(facebook\\.com)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility;->FACEBOOK_DOMAIN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V
    .locals 1
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;
    .param p2, "isDefaultAction"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_1

    .line 171
    .end local p1    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    :cond_0
    :goto_0
    return-void

    .line 168
    .restart local p1    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    :cond_1
    instance-of v0, p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_0

    .line 169
    check-cast p1, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    .end local p1    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addURLActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)V

    goto :goto_0
.end method

.method public static addGenericTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addGenericTemplateElementForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)V

    .line 96
    const-string v0, "MESSENGER_PLATFORM_CONTENT"

    .line 99
    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 96
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method private static addGenericTemplateElementForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "element"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    .line 131
    :cond_0
    :goto_0
    const-string v0, "IMAGE"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    const-string v0, "PREVIEW_TYPE"

    const-string v1, "DEFAULT"

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "TITLE"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "SUBTITLE"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    goto :goto_0
.end method

.method public static addMediaTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addMediaTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V

    .line 116
    const-string v0, "MESSENGER_PLATFORM_CONTENT"

    .line 119
    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method private static addMediaTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    .line 149
    const-string v0, "PREVIEW_TYPE"

    const-string v1, "DEFAULT"

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "ATTACHMENT_ID"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getMediaUrlKey(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 154
    :cond_0
    const-string v0, "type"

    .line 157
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static addOpenGraphMusicTemplateContent(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-static {p0, p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addOpenGraphMusicTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V

    .line 106
    const-string v0, "MESSENGER_PLATFORM_CONTENT"

    .line 109
    invoke-static {p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeOpenGraphMusicTemplateContent(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;

    move-result-object v1

    .line 106
    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method private static addOpenGraphMusicTemplateContentForPreview(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)V
    .locals 2
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->addActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerActionButton;Z)V

    .line 141
    const-string v0, "PREVIEW_TYPE"

    const-string v1, "OPEN_GRAPH"

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "OPEN_GRAPH_URL"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 143
    return-void
.end method

.method private static addURLActionButton(Landroid/os/Bundle;Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)V
    .locals 3
    .param p0, "params"    # Landroid/os/Bundle;
    .param p1, "button"    # Lcom/facebook/share/model/ShareMessengerURLActionButton;
    .param p2, "isDefaultAction"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 177
    if-eqz p2, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "actionForDisplay":Ljava/lang/String;
    :goto_0
    const-string v1, "TARGET_DISPLAY"

    invoke-static {p0, v1, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "ITEM_URL"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/facebook/internal/Utility;->putUri(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 183
    return-void

    .line 178
    .end local v0    # "actionForDisplay":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getImageRatioString(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Ljava/lang/String;
    .locals 2
    .param p0, "imageAspectRatio"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    .prologue
    .line 332
    if-nez p0, :cond_0

    .line 333
    const-string v0, "horizontal"

    .line 339
    :goto_0
    return-object v0

    .line 335
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerGenericTemplateContent$ImageAspectRatio:[I

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    const-string v0, "horizontal"

    goto :goto_0

    .line 337
    :pswitch_0
    const-string v0, "square"

    goto :goto_0

    .line 335
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Ljava/lang/String;
    .locals 2
    .param p0, "mediaType"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .prologue
    .line 344
    if-nez p0, :cond_0

    .line 345
    const-string v0, "image"

    .line 351
    :goto_0
    return-object v0

    .line 347
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerMediaTemplateContent$MediaType:[I

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 351
    const-string v0, "image"

    goto :goto_0

    .line 349
    :pswitch_0
    const-string v0, "video"

    goto :goto_0

    .line 347
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getMediaUrlKey(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "host":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/facebook/share/internal/MessengerShareContentUtility;->FACEBOOK_DOMAIN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "uri"

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "IMAGE"

    goto :goto_0
.end method

.method private static getShouldHideShareButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Ljava/lang/String;
    .locals 1
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerURLActionButton;

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getShouldHideWebviewShareButton()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hide"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getWebviewHeightRatioString(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Ljava/lang/String;
    .locals 2
    .param p0, "webviewHeightRatio"    # Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    const-string v0, "full"

    .line 327
    :goto_0
    return-object v0

    .line 321
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/MessengerShareContentUtility$1;->$SwitchMap$com$facebook$share$model$ShareMessengerURLActionButton$WebviewHeightRatio:[I

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 327
    const-string v0, "full"

    goto :goto_0

    .line 323
    :pswitch_0
    const-string v0, "compact"

    goto :goto_0

    .line 325
    :pswitch_1
    const-string v0, "tall"

    goto :goto_0

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 286
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private static serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;Z)Lorg/json/JSONObject;
    .locals 1
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;
    .param p1, "isDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 291
    instance-of v0, p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    if-eqz v0, :cond_0

    .line 292
    check-cast p0, Lcom/facebook/share/model/ShareMessengerURLActionButton;

    .end local p0    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p0, p1}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 294
    :goto_0
    return-object v0

    .restart local p0    # "button":Lcom/facebook/share/model/ShareMessengerActionButton;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static serializeGenericTemplateContent(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 188
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getGenericTemplateElement()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 190
    .local v1, "elements":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_type"

    const-string v5, "generic"

    .line 191
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "sharable"

    .line 192
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getIsSharable()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "image_aspect_ratio"

    .line 193
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;->getImageAspectRatio()Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getImageRatioString(Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$ImageAspectRatio;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "elements"

    .line 194
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 196
    .local v2, "payload":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v5, "template"

    .line 197
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "payload"

    .line 198
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 200
    .local v0, "attachment":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "attachment"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private static serializeGenericTemplateElement(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "element"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "title"

    .line 238
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "subtitle"

    .line 239
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getSubtitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "image_url"

    .line 240
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getImageUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 242
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 243
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 244
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 245
    const-string v2, "buttons"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 249
    const-string v2, "default_action"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->getDefaultAction()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;Z)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :cond_1
    return-object v1
.end method

.method private static serializeMediaTemplateContent(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 222
    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeMediaTemplateElement(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 224
    .local v1, "elements":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_type"

    const-string v5, "media"

    .line 225
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "elements"

    .line 226
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 228
    .local v2, "payload":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v5, "template"

    .line 229
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "payload"

    .line 230
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 232
    .local v0, "attachment":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "attachment"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private static serializeMediaTemplateElement(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "element"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "attachment_id"

    .line 271
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getAttachmentId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    .line 272
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "media_type"

    .line 273
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getMediaType(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 275
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 276
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 277
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 278
    const-string v2, "buttons"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    return-object v1
.end method

.method private static serializeOpenGraphMusicTemplateContent(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "content"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 206
    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeOpenGraphMusicTemplateElement(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    .line 208
    .local v1, "elements":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_type"

    const-string v5, "open_graph"

    .line 209
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "elements"

    .line 210
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 212
    .local v2, "payload":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "type"

    const-string v5, "template"

    .line 213
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "payload"

    .line 214
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 216
    .local v0, "attachment":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "attachment"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    return-object v3
.end method

.method private static serializeOpenGraphMusicTemplateElement(Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "element"    # Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "url"

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 259
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 260
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 261
    .local v0, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerOpenGraphMusicTemplateContent;->getButton()Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->serializeActionButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 262
    const-string v2, "buttons"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    .end local v0    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    return-object v1
.end method

.method private static serializeURLActionButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;Z)Lorg/json/JSONObject;
    .locals 3
    .param p0, "button"    # Lcom/facebook/share/model/ShareMessengerURLActionButton;
    .param p1, "isDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 299
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "web_url"

    .line 300
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "title"

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 301
    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "url"

    .line 302
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "webview_height_ratio"

    .line 303
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getWebviewHeightRatio()Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getWebviewHeightRatioString(Lcom/facebook/share/model/ShareMessengerURLActionButton$WebviewHeightRatio;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "messenger_extensions"

    .line 304
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getIsMessengerExtensionURL()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "fallback_url"

    .line 305
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getFallbackUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getUriString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "webview_share_button"

    .line 306
    invoke-static {p0}, Lcom/facebook/share/internal/MessengerShareContentUtility;->getShouldHideShareButton(Lcom/facebook/share/model/ShareMessengerURLActionButton;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    .line 299
    return-object v0

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerURLActionButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
