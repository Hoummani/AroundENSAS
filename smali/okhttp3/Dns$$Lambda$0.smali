.class final synthetic Lokhttp3/Dns$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Dns;


# static fields
.field static final $instance:Lokhttp3/Dns;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/Dns$$Lambda$0;

    invoke-direct {v0}, Lokhttp3/Dns$$Lambda$0;-><init>()V

    sput-object v0, Lokhttp3/Dns$$Lambda$0;->$instance:Lokhttp3/Dns;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Lokhttp3/Dns$$CC;->lambda$static$0$Dns$$CC(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
