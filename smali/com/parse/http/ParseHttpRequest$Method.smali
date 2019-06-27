.class public final enum Lcom/parse/http/ParseHttpRequest$Method;
.super Ljava/lang/Enum;
.source "ParseHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/http/ParseHttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/http/ParseHttpRequest$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/http/ParseHttpRequest$Method;

.field public static final enum DELETE:Lcom/parse/http/ParseHttpRequest$Method;

.field public static final enum GET:Lcom/parse/http/ParseHttpRequest$Method;

.field public static final enum POST:Lcom/parse/http/ParseHttpRequest$Method;

.field public static final enum PUT:Lcom/parse/http/ParseHttpRequest$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/parse/http/ParseHttpRequest$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/parse/http/ParseHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    new-instance v0, Lcom/parse/http/ParseHttpRequest$Method;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/parse/http/ParseHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    new-instance v0, Lcom/parse/http/ParseHttpRequest$Method;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/parse/http/ParseHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    new-instance v0, Lcom/parse/http/ParseHttpRequest$Method;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/parse/http/ParseHttpRequest$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/http/ParseHttpRequest$Method;->DELETE:Lcom/parse/http/ParseHttpRequest$Method;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parse/http/ParseHttpRequest$Method;

    sget-object v1, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/http/ParseHttpRequest$Method;->DELETE:Lcom/parse/http/ParseHttpRequest$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parse/http/ParseHttpRequest$Method;->$VALUES:[Lcom/parse/http/ParseHttpRequest$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Method;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 38
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid http method: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :sswitch_0
    const-string v2, "GET"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "POST"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "PUT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "DELETE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->GET:Lcom/parse/http/ParseHttpRequest$Method;

    .line 54
    .local v0, "method":Lcom/parse/http/ParseHttpRequest$Method;
    :goto_1
    return-object v0

    .line 43
    .end local v0    # "method":Lcom/parse/http/ParseHttpRequest$Method;
    :pswitch_1
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->POST:Lcom/parse/http/ParseHttpRequest$Method;

    .line 44
    .restart local v0    # "method":Lcom/parse/http/ParseHttpRequest$Method;
    goto :goto_1

    .line 46
    .end local v0    # "method":Lcom/parse/http/ParseHttpRequest$Method;
    :pswitch_2
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->PUT:Lcom/parse/http/ParseHttpRequest$Method;

    .line 47
    .restart local v0    # "method":Lcom/parse/http/ParseHttpRequest$Method;
    goto :goto_1

    .line 49
    .end local v0    # "method":Lcom/parse/http/ParseHttpRequest$Method;
    :pswitch_3
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->DELETE:Lcom/parse/http/ParseHttpRequest$Method;

    .line 50
    .restart local v0    # "method":Lcom/parse/http/ParseHttpRequest$Method;
    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_0
        0x136ef -> :sswitch_2
        0x2590a0 -> :sswitch_1
        0x77f979ab -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/http/ParseHttpRequest$Method;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/parse/http/ParseHttpRequest$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/http/ParseHttpRequest$Method;

    return-object v0
.end method

.method public static values()[Lcom/parse/http/ParseHttpRequest$Method;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/parse/http/ParseHttpRequest$Method;->$VALUES:[Lcom/parse/http/ParseHttpRequest$Method;

    invoke-virtual {v0}, [Lcom/parse/http/ParseHttpRequest$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/http/ParseHttpRequest$Method;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 64
    sget-object v1, Lcom/parse/http/ParseHttpRequest$1;->$SwitchMap$com$parse$http$ParseHttpRequest$Method:[I

    invoke-virtual {p0}, Lcom/parse/http/ParseHttpRequest$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid http method: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :pswitch_0
    const-string v0, "GET"

    .line 80
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 69
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_1
    const-string v0, "POST"

    .line 70
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PUT"

    .line 73
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v0    # "string":Ljava/lang/String;
    :pswitch_3
    const-string v0, "DELETE"

    .line 76
    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
