.class Lcom/parse/NoObjectsEncoder;
.super Lcom/parse/ParseEncoder;
.source "NoObjectsEncoder.java"


# static fields
.field private static final INSTANCE:Lcom/parse/NoObjectsEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/parse/NoObjectsEncoder;

    invoke-direct {v0}, Lcom/parse/NoObjectsEncoder;-><init>()V

    sput-object v0, Lcom/parse/NoObjectsEncoder;->INSTANCE:Lcom/parse/NoObjectsEncoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/parse/ParseEncoder;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/NoObjectsEncoder;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parse/NoObjectsEncoder;->INSTANCE:Lcom/parse/NoObjectsEncoder;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ParseObjects not allowed here"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
