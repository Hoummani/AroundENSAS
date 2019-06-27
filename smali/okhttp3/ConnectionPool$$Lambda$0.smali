.class final synthetic Lokhttp3/ConnectionPool$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lokhttp3/ConnectionPool;


# direct methods
.method constructor <init>(Lokhttp3/ConnectionPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/ConnectionPool$$Lambda$0;->arg$1:Lokhttp3/ConnectionPool;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lokhttp3/ConnectionPool$$Lambda$0;->arg$1:Lokhttp3/ConnectionPool;

    invoke-virtual {v0}, Lokhttp3/ConnectionPool;->lambda$new$0$ConnectionPool()V

    return-void
.end method
