.class final Lcom/parse/ParseACL$1;
.super Ljava/lang/Object;
.source "ParseACL.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseACL;
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
        "Lcom/parse/ParseACL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseACL;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 589
    new-instance v0, Lcom/parse/ParseACL;

    new-instance v1, Lcom/parse/ParseObjectParcelDecoder;

    invoke-direct {v1}, Lcom/parse/ParseObjectParcelDecoder;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/parse/ParseACL;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/parse/ParseACL$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parse/ParseACL;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 594
    new-array v0, p1, [Lcom/parse/ParseACL;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0, p1}, Lcom/parse/ParseACL$1;->newArray(I)[Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method
