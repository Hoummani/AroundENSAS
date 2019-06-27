.class Lcom/parse/PushServiceApi26$1;
.super Ljava/lang/Object;
.source "PushServiceApi26.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/PushServiceApi26;->onStartJob(Landroid/app/job/JobParameters;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushServiceApi26;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Lcom/parse/PushServiceApi26;Landroid/content/Intent;Landroid/app/job/JobParameters;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/PushServiceApi26;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    iput-object p2, p0, Lcom/parse/PushServiceApi26$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/parse/PushServiceApi26$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v0}, Lcom/parse/PushServiceApi26;->access$000(Lcom/parse/PushServiceApi26;)Lcom/parse/PushHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/PushServiceApi26$1;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/parse/PushHandler;->handlePush(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    iget-object v1, p0, Lcom/parse/PushServiceApi26$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, v3}, Lcom/parse/PushServiceApi26;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 86
    iget-object v0, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v0}, Lcom/parse/PushServiceApi26;->access$110(Lcom/parse/PushServiceApi26;)I

    .line 87
    iget-object v0, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v0}, Lcom/parse/PushServiceApi26;->access$100(Lcom/parse/PushServiceApi26;)I

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v0}, Lcom/parse/PushServiceApi26;->access$200(Lcom/parse/PushServiceApi26;)V

    .line 91
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    iget-object v2, p0, Lcom/parse/PushServiceApi26$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v3}, Lcom/parse/PushServiceApi26;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 86
    iget-object v1, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v1}, Lcom/parse/PushServiceApi26;->access$110(Lcom/parse/PushServiceApi26;)I

    .line 87
    iget-object v1, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v1}, Lcom/parse/PushServiceApi26;->access$100(Lcom/parse/PushServiceApi26;)I

    move-result v1

    if-nez v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/parse/PushServiceApi26$1;->this$0:Lcom/parse/PushServiceApi26;

    invoke-static {v1}, Lcom/parse/PushServiceApi26;->access$200(Lcom/parse/PushServiceApi26;)V

    :cond_1
    throw v0
.end method
