.class public Lcom/parse/PushHandler$Factory;
.super Ljava/lang/Object;
.source "PushHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Lcom/parse/PushType;)Lcom/parse/PushHandler;
    .locals 3
    .param p0, "type"    # Lcom/parse/PushType;

    .prologue
    const/4 v1, 0x0

    .line 36
    sget-object v0, Lcom/parse/PushHandler$1;->$SwitchMap$com$parse$PushType:[I

    invoke-virtual {p0}, Lcom/parse/PushType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 40
    :goto_0
    return-object v0

    .line 37
    :pswitch_0
    new-instance v0, Lcom/parse/GcmPushHandler;

    invoke-direct {v0}, Lcom/parse/GcmPushHandler;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_1
    new-instance v0, Lcom/parse/PushHandler$FallbackHandler;

    invoke-direct {v0, v1}, Lcom/parse/PushHandler$FallbackHandler;-><init>(Lcom/parse/PushHandler$1;)V

    goto :goto_0

    .line 36
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
