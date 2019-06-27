.class Lcom/parse/ParseSetOperation;
.super Ljava/lang/Object;
.source "ParseSetOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# static fields
.field static final OP_NAME:Ljava/lang/String; = "Set"


# instance fields
.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    .line 24
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public encode(Lcom/parse/ParseEncoder;)Ljava/lang/Object;
    .locals 1
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public encode(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableEncoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 37
    const-string v0, "Set"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 39
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/ParseSetOperation;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 0
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 43
    return-object p0
.end method
