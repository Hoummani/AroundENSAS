.class final enum Lcom/parse/PushType;
.super Ljava/lang/Enum;
.source "PushType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/PushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/PushType;

.field public static final enum GCM:Lcom/parse/PushType;

.field public static final enum NONE:Lcom/parse/PushType;


# instance fields
.field private final pushType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/parse/PushType;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/parse/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    .line 15
    new-instance v0, Lcom/parse/PushType;

    const-string v1, "GCM"

    const-string v2, "gcm"

    invoke-direct {v0, v1, v4, v2}, Lcom/parse/PushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parse/PushType;

    sget-object v1, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parse/PushType;->$VALUES:[Lcom/parse/PushType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "pushType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/parse/PushType;->pushType:Ljava/lang/String;

    .line 21
    return-void
.end method

.method static fromString(Ljava/lang/String;)Lcom/parse/PushType;
    .locals 1
    .param p0, "pushType"    # Ljava/lang/String;

    .prologue
    .line 24
    const-string v0, "none"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    .line 29
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v0, "gcm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    sget-object v0, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    goto :goto_0

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static types()[Lcom/parse/PushType;
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/parse/PushType;

    const/4 v1, 0x0

    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/parse/PushType;->NONE:Lcom/parse/PushType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/PushType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/parse/PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/PushType;

    return-object v0
.end method

.method public static values()[Lcom/parse/PushType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/parse/PushType;->$VALUES:[Lcom/parse/PushType;

    invoke-virtual {v0}, [Lcom/parse/PushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/PushType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parse/PushType;->pushType:Ljava/lang/String;

    return-object v0
.end method
