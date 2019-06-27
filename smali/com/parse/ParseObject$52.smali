.class final Lcom/parse/ParseObject$52;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 4320
    new-instance v0, Lcom/parse/ParseObjectParcelDecoder;

    invoke-direct {v0}, Lcom/parse/ParseObjectParcelDecoder;-><init>()V

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->createFromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4317
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$52;->createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parse/ParseObject;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 4325
    new-array v0, p1, [Lcom/parse/ParseObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 4317
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$52;->newArray(I)[Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
