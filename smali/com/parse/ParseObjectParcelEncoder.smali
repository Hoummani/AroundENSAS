.class Lcom/parse/ParseObjectParcelEncoder;
.super Lcom/parse/ParseParcelEncoder;
.source "ParseObjectParcelEncoder.java"


# instance fields
.field private ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/parse/ParseParcelEncoder;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObjectParcelEncoder;->ids:Ljava/util/Set;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "root"    # Lcom/parse/ParseObject;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/parse/ParseParcelEncoder;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObjectParcelEncoder;->ids:Ljava/util/Set;

    .line 21
    iget-object v0, p0, Lcom/parse/ParseObjectParcelEncoder;->ids:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/parse/ParseObjectParcelEncoder;->getObjectOrLocalId(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method private getObjectOrLocalId(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected encodeParseObject(Lcom/parse/ParseObject;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "dest"    # Landroid/os/Parcel;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseObjectParcelEncoder;->getObjectOrLocalId(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/ParseObjectParcelEncoder;->ids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/parse/ParseObjectParcelEncoder;->encodePointer(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcel;)V

    .line 33
    :goto_0
    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObjectParcelEncoder;->ids:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-super {p0, p1, p2}, Lcom/parse/ParseParcelEncoder;->encodeParseObject(Lcom/parse/ParseObject;Landroid/os/Parcel;)V

    goto :goto_0
.end method
