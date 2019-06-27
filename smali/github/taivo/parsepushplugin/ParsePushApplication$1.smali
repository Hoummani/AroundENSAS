.class Lgithub/taivo/parsepushplugin/ParsePushApplication$1;
.super Ljava/lang/Object;
.source "ParsePushApplication.java"

# interfaces
.implements Lcom/parse/SaveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgithub/taivo/parsepushplugin/ParsePushApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgithub/taivo/parsepushplugin/ParsePushApplication;


# direct methods
.method constructor <init>(Lgithub/taivo/parsepushplugin/ParsePushApplication;)V
    .locals 0
    .param p1, "this$0"    # Lgithub/taivo/parsepushplugin/ParsePushApplication;

    .prologue
    .line 79
    iput-object p1, p0, Lgithub/taivo/parsepushplugin/ParsePushApplication$1;->this$0:Lgithub/taivo/parsepushplugin/ParsePushApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "ex"    # Lcom/parse/ParseException;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string v0, "ParsePushApplication"

    invoke-virtual {p1}, Lcom/parse/ParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "ParsePushApplication"

    const-string v1, "Installation saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic done(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 79
    check-cast p1, Lcom/parse/ParseException;

    invoke-virtual {p0, p1}, Lgithub/taivo/parsepushplugin/ParsePushApplication$1;->done(Lcom/parse/ParseException;)V

    return-void
.end method
