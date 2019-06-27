.class Lcom/parse/GcmRegistrar$4;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->updateLocalDeviceTokenLastModifiedAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/parse/GcmRegistrar$4;->this$0:Lcom/parse/GcmRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/parse/GcmRegistrar$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v1, p0, Lcom/parse/GcmRegistrar$4;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v1}, Lcom/parse/GcmRegistrar;->access$400(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/parse/GcmRegistrar$4;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/parse/GcmRegistrar;->access$502(Lcom/parse/GcmRegistrar;J)J

    .line 242
    iget-object v1, p0, Lcom/parse/GcmRegistrar$4;->this$0:Lcom/parse/GcmRegistrar;

    .line 243
    invoke-static {v1}, Lcom/parse/GcmRegistrar;->access$500(Lcom/parse/GcmRegistrar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 245
    .local v0, "localDeviceTokenLastModifiedStr":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedFile()Ljava/io/File;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v0, v3}, Lcom/parse/ParseFileUtils;->writeStringToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 251
    const/4 v1, 0x0

    return-object v1

    .line 250
    .end local v0    # "localDeviceTokenLastModifiedStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 247
    .restart local v0    # "localDeviceTokenLastModifiedStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
