.class public abstract synthetic Lokhttp3/Authenticator$$CC;
.super Ljava/lang/Object;


# direct methods
.method public static $$triggerInterfaceInit()V
    .locals 1

    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    return-void
.end method

.method static synthetic lambda$static$0$Authenticator$$CC(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 1
    .param p0, "route"    # Lokhttp3/Route;
    .param p1, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method
