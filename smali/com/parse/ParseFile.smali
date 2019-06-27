.class public Lcom/parse/ParseFile;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFile$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parse/ParseFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbolts/TaskCompletionSource",
            "<*>;>;"
        }
    .end annotation
.end field

.field data:[B

.field file:Ljava/io/File;

.field private state:Lcom/parse/ParseFile$State;

.field final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 763
    new-instance v0, Lcom/parse/ParseFile$13;

    invoke-direct {v0}, Lcom/parse/ParseFile$13;-><init>()V

    sput-object v0, Lcom/parse/ParseFile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 236
    invoke-static {}, Lcom/parse/ParseParcelDecoder;->get()Lcom/parse/ParseParcelDecoder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseFile;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    .line 237
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    .line 248
    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->url(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v1

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/parse/ParseFile$State$Builder;->mimeType(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    .line 248
    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    .line 253
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/parse/ParseFile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/parse/ParseFile$State;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    .line 256
    iput-object p1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    .line 257
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/ParseFile$State$Builder;->mimeType(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    .line 167
    iput-object p1, p0, Lcom/parse/ParseFile;->file:Ljava/io/File;

    .line 168
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 212
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 184
    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/ParseFile$State$Builder;->mimeType(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    .line 185
    iput-object p2, p0, Lcom/parse/ParseFile;->data:[B

    .line 186
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 723
    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->url(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    .line 724
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, v0, p1, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 196
    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    .line 225
    return-void
.end method

.method static synthetic access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parse/ParseFile;Lcom/parse/ParseFile$State;)Lcom/parse/ParseFile$State;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Lcom/parse/ParseFile$State;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/parse/ParseFile;->progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseFile;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ProgressCallback;
    .param p3, "x3"    # Lbolts/Task;
    .param p4, "x4"    # Lbolts/Task;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseFile;
    .param p1, "x1"    # Lcom/parse/ProgressCallback;
    .param p2, "x2"    # Lbolts/Task;
    .param p3, "x3"    # Lbolts/Task;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseFile;->fetchInBackground(Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private fetchInBackground(Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 685
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 689
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseFile$12;

    invoke-direct {v0, p0, p3, p1}, Lcom/parse/ParseFile$12;-><init>(Lcom/parse/ParseFile;Lbolts/Task;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method static getFileController()Lcom/parse/ParseFileController;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    return-object v0
.end method

.method private static progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    .locals 1
    .param p0, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 54
    if-nez p0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseFile$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseFile$1;-><init>(Lcom/parse/ProgressCallback;)V

    goto :goto_0
.end method

.method private saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local p4, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 318
    :goto_0
    return-object v0

    .line 313
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    new-instance v0, Lcom/parse/ParseFile$2;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/parse/ParseFile$2;-><init>(Lcom/parse/ParseFile;Lbolts/Task;Ljava/lang/String;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p3, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 711
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 712
    .local v0, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lbolts/TaskCompletionSource<*>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/TaskCompletionSource;

    .line 713
    .local v1, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<*>;"
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->trySetCancelled()Z

    goto :goto_0

    .line 715
    .end local v1    # "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<*>;"
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 716
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 742
    const/4 v0, 0x0

    return v0
.end method

.method encode()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 728
    .local v0, "json":Lorg/json/JSONObject;
    const-string v2, "__type"

    const-string v3, "File"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 729
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 731
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 732
    .local v1, "url":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 733
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unable to encode an unsaved ParseFile."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_0
    const-string v2, "url"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 737
    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDataInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 484
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 450
    .local v0, "cts":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v1, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParseFile$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$7;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$6;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$6;-><init>(Lcom/parse/ParseFile;Lbolts/TaskCompletionSource;)V

    .line 468
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 452
    return-object v1
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/parse/GetDataCallback;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 511
    return-void
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "dataCallback"    # Lcom/parse/GetDataCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 499
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 500
    return-void
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataStreamInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataStreamInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataStreamInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getDataStreamInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 618
    .local v0, "cts":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v1, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParseFile$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$11;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$10;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$10;-><init>(Lcom/parse/ParseFile;Lbolts/TaskCompletionSource;)V

    .line 630
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 620
    return-object v1
.end method

.method public getDataStreamInBackground(Lcom/parse/GetDataStreamCallback;)V
    .locals 1
    .param p1, "dataStreamCallback"    # Lcom/parse/GetDataStreamCallback;

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataStreamInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 679
    return-void
.end method

.method public getDataStreamInBackground(Lcom/parse/GetDataStreamCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "dataStreamCallback"    # Lcom/parse/GetDataStreamCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 665
    .line 666
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataStreamInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    .line 665
    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 667
    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFileInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public getFileInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getFileInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getFileInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "progressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 535
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 536
    .local v0, "cts":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v1, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParseFile$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$9;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$8;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$8;-><init>(Lcom/parse/ParseFile;Lbolts/TaskCompletionSource;)V

    .line 543
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 538
    return-object v1
.end method

.method public getFileInBackground(Lcom/parse/GetFileCallback;)V
    .locals 1
    .param p1, "fileCallback"    # Lcom/parse/GetFileCallback;

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFileInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 595
    return-void
.end method

.method public getFileInBackground(Lcom/parse/GetFileCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "fileCallback"    # Lcom/parse/GetFileCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 581
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getFileInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 582
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getState()Lcom/parse/ParseFile$State;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-nez v0, :cond_0

    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0, v1}, Lcom/parse/ParseFileController;->isDataAvailable(Lcom/parse/ParseFile$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    .local p3, "cancellationToken":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseFile$5;-><init>(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground()Lbolts/Task;
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
    .line 404
    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    .line 370
    .local v0, "cts":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$4;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$3;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$3;-><init>(Lcom/parse/ParseFile;Lbolts/TaskCompletionSource;)V

    .line 378
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 372
    return-object v1
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 429
    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
    .locals 1
    .param p1, "saveCallback"    # Lcom/parse/SaveCallback;
    .param p2, "progressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 418
    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 419
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 747
    invoke-static {}, Lcom/parse/ParseParcelEncoder;->get()Lcom/parse/ParseParcelEncoder;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseFile;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 748
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to parcel an unsaved ParseFile."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p0}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v1}, Lcom/parse/ParseFile$State;->mimeType()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 758
    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 761
    :cond_1
    return-void

    .line 757
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
