.class final Lcom/parse/ParseFile$13;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseFile;
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
        "Lcom/parse/ParseFile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseFile;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 766
    new-instance v0, Lcom/parse/ParseFile;

    invoke-direct {v0, p1}, Lcom/parse/ParseFile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$13;->createFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/parse/ParseFile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 771
    new-array v0, p1, [Lcom/parse/ParseFile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$13;->newArray(I)[Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method
