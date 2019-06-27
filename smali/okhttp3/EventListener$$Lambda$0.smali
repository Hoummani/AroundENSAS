.class final synthetic Lokhttp3/EventListener$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/EventListener$Factory;


# instance fields
.field private final arg$1:Lokhttp3/EventListener;


# direct methods
.method constructor <init>(Lokhttp3/EventListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/EventListener$$Lambda$0;->arg$1:Lokhttp3/EventListener;

    return-void
.end method


# virtual methods
.method public create(Lokhttp3/Call;)Lokhttp3/EventListener;
    .locals 1

    iget-object v0, p0, Lokhttp3/EventListener$$Lambda$0;->arg$1:Lokhttp3/EventListener;

    invoke-static {v0, p1}, Lokhttp3/EventListener;->lambda$factory$0$EventListener(Lokhttp3/EventListener;Lokhttp3/Call;)Lokhttp3/EventListener;

    move-result-object v0

    return-object v0
.end method
