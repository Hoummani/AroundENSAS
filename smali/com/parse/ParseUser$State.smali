.class Lcom/parse/ParseUser$State;
.super Lcom/parse/ParseObject$State;
.source "ParseUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseUser$State$Builder;
    }
.end annotation


# instance fields
.field private final isNew:Z


# direct methods
.method constructor <init>(Landroid/os/Parcel;Ljava/lang/String;Lcom/parse/ParseParcelDecoder;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    const/4 v0, 0x1

    .line 133
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseObject$State;-><init>(Landroid/os/Parcel;Ljava/lang/String;Lcom/parse/ParseParcelDecoder;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    .line 135
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/parse/ParseUser$State$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/parse/ParseUser$State$Builder;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State;-><init>(Lcom/parse/ParseObject$State$Init;)V

    .line 129
    invoke-static {p1}, Lcom/parse/ParseUser$State$Builder;->access$100(Lcom/parse/ParseUser$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParseUser$State$Builder;Lcom/parse/ParseUser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ParseUser$State$Builder;
    .param p2, "x1"    # Lcom/parse/ParseUser$1;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/parse/ParseUser$State;-><init>(Lcom/parse/ParseUser$State$Builder;)V

    return-void
.end method


# virtual methods
.method public authData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 149
    const-string v1, "authData"

    .line 150
    invoke-virtual {p0, v1}, Lcom/parse/ParseUser$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 151
    .local v0, "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 157
    .restart local v0    # "authData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    return-object v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/parse/ParseObject$State$Init;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/parse/ParseUser$State$Builder;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$State$Builder;-><init>(Lcom/parse/ParseUser$State;)V

    return-object v0
.end method

.method public sessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 166
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject$State;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 167
    iget-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 168
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
