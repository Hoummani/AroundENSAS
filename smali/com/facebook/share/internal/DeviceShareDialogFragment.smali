.class public Lcom/facebook/share/internal/DeviceShareDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DeviceShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    }
.end annotation


# static fields
.field private static final DEVICE_SHARE_ENDPOINT:Ljava/lang/String; = "device/share"

.field private static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field private static final REQUEST_STATE_KEY:Ljava/lang/String; = "request_state"

.field public static final TAG:Ljava/lang/String; = "DeviceShareDialogFragment"

.field private static backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private volatile codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

.field private confirmationCode:Landroid/widget/TextView;

.field private volatile currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

.field private dialog:Landroid/app/Dialog;

.field private progressBar:Landroid/widget/ProgressBar;

.field private shareContent:Lcom/facebook/share/model/ShareContent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/DeviceShareDialogFragment;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/FacebookRequestError;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;
    .param p1, "x1"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivityWithError(Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/DeviceShareDialogFragment;Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/share/internal/DeviceShareDialogFragment;
    .param p1, "x1"    # Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    return-void
.end method

.method private detach()V
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 161
    :cond_0
    return-void
.end method

.method private finishActivity(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 141
    iget-object v2, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {v2}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 145
    :cond_0
    const-string v2, "error"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/FacebookRequestError;

    .line 146
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 152
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 155
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method private finishActivityWithError(Lcom/facebook/FacebookRequestError;)V
    .locals 2
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->detach()V

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 228
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivity(ILandroid/content/Intent;)V

    .line 229
    return-void
.end method

.method private static declared-synchronized getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    .prologue
    .line 232
    const-class v1, Lcom/facebook/share/internal/DeviceShareDialogFragment;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 235
    :cond_0
    sget-object v0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->backgroundExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getGraphParametersForShareContent()Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 169
    .local v0, "content":Lcom/facebook/share/model/ShareContent;
    if-nez v0, :cond_1

    .line 177
    .end local v0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_0
    :goto_0
    return-object v1

    .line 172
    .restart local v0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_1
    instance-of v2, v0, Lcom/facebook/share/model/ShareLinkContent;

    if-eqz v2, :cond_2

    .line 173
    check-cast v0, Lcom/facebook/share/model/ShareLinkContent;

    .end local v0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-static {v0}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareLinkContent;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 174
    .restart local v0    # "content":Lcom/facebook/share/model/ShareContent;
    :cond_2
    instance-of v2, v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    if-eqz v2, :cond_0

    .line 175
    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphContent;

    .end local v0    # "content":Lcom/facebook/share/model/ShareContent;
    invoke-static {v0}, Lcom/facebook/share/internal/WebDialogParameters;->create(Lcom/facebook/share/model/ShareOpenGraphContent;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method

.method private setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V
    .locals 5
    .param p1, "currentRequestState"    # Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 240
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->confirmationCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->confirmationCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 244
    invoke-static {}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$3;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    .line 251
    invoke-virtual {p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;->getExpiresIn()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 244
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 253
    return-void
.end method

.method private startShare()V
    .locals 7

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getGraphParametersForShareContent()Landroid/os/Bundle;

    move-result-object v3

    .line 182
    .local v3, "parameters":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    new-instance v1, Lcom/facebook/FacebookRequestError;

    const/4 v2, 0x0

    const-string v4, ""

    const-string v5, "Failed to get share content"

    invoke-direct {v1, v2, v4, v5}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivityWithError(Lcom/facebook/FacebookRequestError;)V

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/internal/Validate;->hasAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/internal/Validate;->hasClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, "accessToken":Ljava/lang/String;
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "device_info"

    .line 190
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance v0, Lcom/facebook/GraphRequest;

    const/4 v1, 0x0

    const-string v2, "device/share"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;

    invoke-direct {v5, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$2;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 220
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 221
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    new-instance v4, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    sget v6, Lcom/facebook/common/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v4, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    .line 98
    invoke-virtual {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 99
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/facebook/common/R$layout;->com_facebook_device_auth_dialog_fragment:I

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 100
    .local v3, "view":Landroid/view/View;
    sget v4, Lcom/facebook/common/R$id;->progress_bar:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 101
    sget v4, Lcom/facebook/common/R$id;->confirmation_code:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->confirmationCode:Landroid/widget/TextView;

    .line 103
    sget v4, Lcom/facebook/common/R$id;->cancel_button:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v4, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment$1;-><init>(Lcom/facebook/share/internal/DeviceShareDialogFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    sget v4, Lcom/facebook/common/R$id;->com_facebook_device_auth_instructions:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 113
    .local v2, "instructions":Landroid/widget/TextView;
    sget v4, Lcom/facebook/common/R$string;->com_facebook_device_auth_instructions:I

    .line 114
    invoke-virtual {p0, v4}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 113
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->startShare()V

    .line 119
    iget-object v4, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->dialog:Landroid/app/Dialog;

    return-object v4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, "view":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 86
    const-string v2, "request_state"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    .line 87
    .local v0, "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    if-eqz v0, :cond_0

    .line 88
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->setCurrentRequestState(Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;)V

    .line 91
    .end local v0    # "requestState":Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    :cond_0
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 125
    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->codeExpiredFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 128
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, "resultIntent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/facebook/share/internal/DeviceShareDialogFragment;->finishActivity(ILandroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->currentRequestState:Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    :cond_0
    return-void
.end method

.method public setShareContent(Lcom/facebook/share/model/ShareContent;)V
    .locals 0
    .param p1, "shareContent"    # Lcom/facebook/share/model/ShareContent;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/share/internal/DeviceShareDialogFragment;->shareContent:Lcom/facebook/share/model/ShareContent;

    .line 165
    return-void
.end method
