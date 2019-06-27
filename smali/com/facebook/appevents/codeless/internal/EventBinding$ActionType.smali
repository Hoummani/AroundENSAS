.class public final enum Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
.super Ljava/lang/Enum;
.source "EventBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/codeless/internal/EventBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

.field public static final enum CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

.field public static final enum SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

.field public static final enum TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 161
    new-instance v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    const-string v1, "SELECTED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 162
    new-instance v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    const-string v1, "TEXT_CHANGED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->CLICK:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->SELECTED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->TEXT_CHANGED:Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->$VALUES:[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    const-class v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->$VALUES:[Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    invoke-virtual {v0}, [Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/appevents/codeless/internal/EventBinding$ActionType;

    return-object v0
.end method
