.class interface abstract Lcom/parse/PushHandler;
.super Ljava/lang/Object;
.source "PushHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushHandler$FallbackHandler;,
        Lcom/parse/PushHandler$SupportLevel;,
        Lcom/parse/PushHandler$Factory;
    }
.end annotation


# virtual methods
.method public abstract getWarningMessage(Lcom/parse/PushHandler$SupportLevel;)Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract handlePush(Landroid/content/Intent;)V
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation
.end method

.method public abstract initialize()Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isSupported()Lcom/parse/PushHandler$SupportLevel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
