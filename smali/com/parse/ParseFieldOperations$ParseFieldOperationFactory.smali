.class interface abstract Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;
.super Ljava/lang/Object;
.source "ParseFieldOperations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseFieldOperations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ParseFieldOperationFactory"
.end annotation


# virtual methods
.method public abstract decode(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseFieldOperation;
.end method

.method public abstract decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
