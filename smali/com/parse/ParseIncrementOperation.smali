.class Lcom/parse/ParseIncrementOperation;
.super Ljava/lang/Object;
.source "ParseIncrementOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperation;


# static fields
.field static final OP_NAME:Ljava/lang/String; = "Increment"


# instance fields
.field private final amount:Ljava/lang/Number;


# direct methods
.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Number;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 26
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "oldValue"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 68
    .end local p1    # "oldValue":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 67
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "oldValue":Ljava/lang/Object;
    iget-object v0, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-static {p1, v0}, Lcom/parse/Numbers;->add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 70
    .restart local p1    # "oldValue":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot increment a non-number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    invoke-virtual {p0, p1}, Lcom/parse/ParseIncrementOperation;->encode(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

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
    .line 30
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .local v0, "output":Lorg/json/JSONObject;
    const-string v1, "__op"

    const-string v2, "Increment"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "amount"

    iget-object v2, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    return-object v0
.end method

.method public encode(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableEncoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    .line 38
    const-string v0, "Increment"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-virtual {p2, v0, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 40
    return-void
.end method

.method public mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;
    .locals 4
    .param p1, "previous"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 57
    .end local p0    # "this":Lcom/parse/ParseIncrementOperation;
    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    .local v0, "oldAmount":Ljava/lang/Number;
    :goto_0
    return-object p0

    .line 46
    .end local v0    # "oldAmount":Ljava/lang/Number;
    .restart local p0    # "this":Lcom/parse/ParseIncrementOperation;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseDeleteOperation;

    if-eqz v2, :cond_1

    .line 47
    new-instance v2, Lcom/parse/ParseSetOperation;

    iget-object v3, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 48
    :cond_1
    instance-of v2, p1, Lcom/parse/ParseSetOperation;

    if-eqz v2, :cond_3

    .line 49
    check-cast p1, Lcom/parse/ParseSetOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p1}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 50
    .local v1, "oldValue":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 51
    new-instance v2, Lcom/parse/ParseSetOperation;

    check-cast v1, Ljava/lang/Number;

    .end local v1    # "oldValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-static {v1, v3}, Lcom/parse/Numbers;->add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    move-object p0, v2

    goto :goto_0

    .line 53
    .restart local v1    # "oldValue":Ljava/lang/Object;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You cannot increment a non-number."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .end local v1    # "oldValue":Ljava/lang/Object;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_3
    instance-of v2, p1, Lcom/parse/ParseIncrementOperation;

    if-eqz v2, :cond_4

    .line 56
    check-cast p1, Lcom/parse/ParseIncrementOperation;

    .end local p1    # "previous":Lcom/parse/ParseFieldOperation;
    iget-object v0, p1, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    .line 57
    .restart local v0    # "oldAmount":Ljava/lang/Number;
    new-instance v2, Lcom/parse/ParseIncrementOperation;

    iget-object v3, p0, Lcom/parse/ParseIncrementOperation;->amount:Ljava/lang/Number;

    invoke-static {v0, v3}, Lcom/parse/Numbers;->add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    move-object p0, v2

    goto :goto_0

    .line 59
    .end local v0    # "oldAmount":Ljava/lang/Number;
    .restart local p1    # "previous":Lcom/parse/ParseFieldOperation;
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Operation is invalid after previous operation."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
