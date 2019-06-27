.class Lcom/parse/ParseDeleteOperation;
.super Ljava/lang/Object;
.source "ParseDeleteOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# static fields
.field static final OP_NAME:Ljava/lang/String; = "Delete"

.field private static final defaultInstance:Lcom/parse/ParseDeleteOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/parse/ParseDeleteOperation;

    invoke-direct {v0}, Lcom/parse/ParseDeleteOperation;-><init>()V

    sput-object v0, Lcom/parse/ParseDeleteOperation;->defaultInstance:Lcom/parse/ParseDeleteOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static getInstance()Lcom/parse/ParseDeleteOperation;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/parse/ParseDeleteOperation;->defaultInstance:Lcom/parse/ParseDeleteOperation;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/parse/ParseDeleteOperation;->encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 34
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Delete"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    return-object v0
.end method

.method public encode(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableEncoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 40
    const-string v0, "Delete"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 0
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 45
    return-object p0
.end method
