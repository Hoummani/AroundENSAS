.class final Lcom/facebook/share/internal/ShareInternalUtility$10;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/internal/Utility$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->getStickerUrl(Lcom/facebook/share/model/ShareStoryContent;Ljava/util/UUID;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/internal/Utility$Mapper",
        "<",
        "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/os/Bundle;
    .locals 4
    .param p1, "item"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 785
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 786
    .local v1, "mediaInfo":Landroid/os/Bundle;
    const-string v2, "uri"

    invoke-virtual {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/share/internal/ShareInternalUtility;->getUriExtension(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 788
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 789
    const-string v2, "extension"

    invoke-static {v1, v2, v0}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    return-object v1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 782
    check-cast p1, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/ShareInternalUtility$10;->apply(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
