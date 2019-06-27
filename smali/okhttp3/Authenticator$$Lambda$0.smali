.class final synthetic Lokhttp3/Authenticator$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Authenticator;


# static fields
.field static final $instance:Lokhttp3/Authenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/Authenticator$$Lambda$0;

    invoke-direct {v0}, Lokhttp3/Authenticator$$Lambda$0;-><init>()V

    sput-object v0, Lokhttp3/Authenticator$$Lambda$0;->$instance:Lokhttp3/Authenticator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1

    invoke-static {p1, p2}, Lokhttp3/Authenticator$$CC;->lambda$static$0$Authenticator$$CC(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
