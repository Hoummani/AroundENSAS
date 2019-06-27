.class Lcom/parse/PushService$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushService;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/parse/PushService;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/PushService;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/parse/PushService$1;->this$0:Lcom/parse/PushService;

    iput-object p2, p0, Lcom/parse/PushService$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/parse/PushService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/parse/PushService$1;->this$0:Lcom/parse/PushService;

    invoke-static {v0}, Lcom/parse/PushService;->access$000(Lcom/parse/PushService;)Lcom/parse/PushHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushService$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/parse/PushHandler;->handlePush(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    iget-object v0, p0, Lcom/parse/PushService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0}, Lcom/parse/PushService;->dispose(Landroid/content/Intent;)V

    .line 246
    iget-object v0, p0, Lcom/parse/PushService$1;->this$0:Lcom/parse/PushService;

    iget v1, p0, Lcom/parse/PushService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/parse/PushService;->stopSelf(I)V

    .line 248
    return-void

    .line 245
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/PushService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/parse/PushService;->dispose(Landroid/content/Intent;)V

    .line 246
    iget-object v1, p0, Lcom/parse/PushService$1;->this$0:Lcom/parse/PushService;

    iget v2, p0, Lcom/parse/PushService$1;->val$startId:I

    invoke-virtual {v1, v2}, Lcom/parse/PushService;->stopSelf(I)V

    throw v0
.end method
