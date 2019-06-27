.class public final enum Lcom/parse/PushHandler$SupportLevel;
.super Ljava/lang/Enum;
.source "PushHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/PushHandler$SupportLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/parse/PushHandler$SupportLevel;

.field public static final enum MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

.field public static final enum MISSING_REQUIRED_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

.field public static final enum SUPPORTED:Lcom/parse/PushHandler$SupportLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/parse/PushHandler$SupportLevel;

    const-string v1, "SUPPORTED"

    invoke-direct {v0, v1, v2}, Lcom/parse/PushHandler$SupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushHandler$SupportLevel;->SUPPORTED:Lcom/parse/PushHandler$SupportLevel;

    .line 54
    new-instance v0, Lcom/parse/PushHandler$SupportLevel;

    const-string v1, "MISSING_OPTIONAL_DECLARATIONS"

    invoke-direct {v0, v1, v3}, Lcom/parse/PushHandler$SupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushHandler$SupportLevel;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    .line 59
    new-instance v0, Lcom/parse/PushHandler$SupportLevel;

    const-string v1, "MISSING_REQUIRED_DECLARATIONS"

    invoke-direct {v0, v1, v4}, Lcom/parse/PushHandler$SupportLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/PushHandler$SupportLevel;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/parse/PushHandler$SupportLevel;

    sget-object v1, Lcom/parse/PushHandler$SupportLevel;->SUPPORTED:Lcom/parse/PushHandler$SupportLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/PushHandler$SupportLevel;->MISSING_OPTIONAL_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/PushHandler$SupportLevel;->MISSING_REQUIRED_DECLARATIONS:Lcom/parse/PushHandler$SupportLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/parse/PushHandler$SupportLevel;->$VALUES:[Lcom/parse/PushHandler$SupportLevel;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/PushHandler$SupportLevel;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/parse/PushHandler$SupportLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/PushHandler$SupportLevel;

    return-object v0
.end method

.method public static values()[Lcom/parse/PushHandler$SupportLevel;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/parse/PushHandler$SupportLevel;->$VALUES:[Lcom/parse/PushHandler$SupportLevel;

    invoke-virtual {v0}, [Lcom/parse/PushHandler$SupportLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/PushHandler$SupportLevel;

    return-object v0
.end method
