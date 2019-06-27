.class final synthetic Lokhttp3/internal/Util$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final arg$1:Ljava/lang/String;

.field private final arg$2:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/Util$$Lambda$0;->arg$1:Ljava/lang/String;

    iput-boolean p2, p0, Lokhttp3/internal/Util$$Lambda$0;->arg$2:Z

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/Util$$Lambda$0;->arg$1:Ljava/lang/String;

    iget-boolean v1, p0, Lokhttp3/internal/Util$$Lambda$0;->arg$2:Z

    invoke-static {v0, v1, p1}, Lokhttp3/internal/Util;->lambda$threadFactory$0$Util(Ljava/lang/String;ZLjava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method
