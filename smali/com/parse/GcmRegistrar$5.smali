.class Lcom/parse/GcmRegistrar$5;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedAsync()Lbolts/Task;
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
        "Ljava/lang/Long;",
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
    .line 257
    iput-object p1, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 260
    iget-object v2, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v2}, Lcom/parse/GcmRegistrar;->access$400(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v2}, Lcom/parse/GcmRegistrar;->access$500(Lcom/parse/GcmRegistrar;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 264
    :try_start_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getLocalDeviceTokenLastModifiedFile()Ljava/io/File;

    move-result-object v2

    const-string v4, "UTF-8"

    .line 263
    invoke-static {v2, v4}, Lcom/parse/ParseFileUtils;->readFileToString(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "localDeviceTokenLastModifiedStr":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/parse/GcmRegistrar;->access$502(Lcom/parse/GcmRegistrar;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    .end local v1    # "localDeviceTokenLastModifiedStr":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    invoke-static {v2}, Lcom/parse/GcmRegistrar;->access$500(Lcom/parse/GcmRegistrar;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/parse/GcmRegistrar$5;->this$0:Lcom/parse/GcmRegistrar;

    const-wide/16 v4, 0x0

    invoke-static {v2, v4, v5}, Lcom/parse/GcmRegistrar;->access$502(Lcom/parse/GcmRegistrar;J)J

    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/parse/GcmRegistrar$5;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
