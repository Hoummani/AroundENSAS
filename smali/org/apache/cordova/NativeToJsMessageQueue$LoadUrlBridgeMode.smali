.class public Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;
.super Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/cordova/NativeToJsMessageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadUrlBridgeMode"
.end annotation


# instance fields
.field private final cordova:Lorg/apache/cordova/CordovaInterface;

.field private final engine:Lorg/apache/cordova/CordovaWebViewEngine;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .param p1, "engine"    # Lorg/apache/cordova/CordovaWebViewEngine;
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/apache/cordova/NativeToJsMessageQueue$BridgeMode;-><init>()V

    .line 288
    iput-object p1, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    .line 289
    iput-object p2, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 290
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;)Lorg/apache/cordova/CordovaWebViewEngine;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;

    .prologue
    .line 283
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->engine:Lorg/apache/cordova/CordovaWebViewEngine;

    return-object v0
.end method


# virtual methods
.method public onNativeToJsMessageAvailable(Lorg/apache/cordova/NativeToJsMessageQueue;)V
    .locals 2
    .param p1, "queue"    # Lorg/apache/cordova/NativeToJsMessageQueue;

    .prologue
    .line 294
    iget-object v0, p0, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode$1;-><init>(Lorg/apache/cordova/NativeToJsMessageQueue$LoadUrlBridgeMode;Lorg/apache/cordova/NativeToJsMessageQueue;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 302
    return-void
.end method
