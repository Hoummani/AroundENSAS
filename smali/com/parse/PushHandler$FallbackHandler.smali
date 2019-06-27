.class public Lcom/parse/PushHandler$FallbackHandler;
.super Ljava/lang/Object;
.source "PushHandler.java"

# interfaces
.implements Lcom/parse/PushHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FallbackHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/PushHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/PushHandler$1;

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/parse/PushHandler$FallbackHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getWarningMessage(Lcom/parse/PushHandler$SupportLevel;)Ljava/lang/String;
    .locals 1
    .param p1, "level"    # Lcom/parse/PushHandler$SupportLevel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public handlePush(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    return-void
.end method

.method public initialize()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public isSupported()Lcom/parse/PushHandler$SupportLevel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/parse/PushHandler$SupportLevel;->SUPPORTED:Lcom/parse/PushHandler$SupportLevel;

    return-object v0
.end method
