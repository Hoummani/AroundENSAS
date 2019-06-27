.class final Lcom/parse/ParsePolygon$1;
.super Ljava/lang/Object;
.source "ParsePolygon.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePolygon;
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
        "Lcom/parse/ParsePolygon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParsePolygon;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 220
    new-instance v0, Lcom/parse/ParsePolygon;

    invoke-static {}, Lcom/parse/ParseParcelDecoder;->get()Lcom/parse/ParseParcelDecoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/parse/ParsePolygon;-><init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/parse/ParsePolygon$1;->createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParsePolygon;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parse/ParsePolygon;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 225
    new-array v0, p1, [Lcom/parse/ParsePolygon;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Lcom/parse/ParsePolygon$1;->newArray(I)[Lcom/parse/ParsePolygon;

    move-result-object v0

    return-object v0
.end method
