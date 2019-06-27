.class Lcom/parse/Lists$Partition;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Partition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final size:I


# direct methods
.method public constructor <init>(Ljava/util/List;I)V
    .locals 0
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/parse/Lists$Partition;, "Lcom/parse/Lists$Partition<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/parse/Lists$Partition;->list:Ljava/util/List;

    .line 61
    iput p2, p0, Lcom/parse/Lists$Partition;->size:I

    .line 62
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/parse/Lists$Partition;, "Lcom/parse/Lists$Partition<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/Lists$Partition;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/List;
    .locals 4
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/parse/Lists$Partition;, "Lcom/parse/Lists$Partition<TT;>;"
    iget v2, p0, Lcom/parse/Lists$Partition;->size:I

    mul-int v1, p1, v2

    .line 67
    .local v1, "start":I
    iget v2, p0, Lcom/parse/Lists$Partition;->size:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/parse/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    .local v0, "end":I
    iget-object v2, p0, Lcom/parse/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 4

    .prologue
    .line 73
    .local p0, "this":Lcom/parse/Lists$Partition;, "Lcom/parse/Lists$Partition<TT;>;"
    iget-object v0, p0, Lcom/parse/Lists$Partition;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/parse/Lists$Partition;->size:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
