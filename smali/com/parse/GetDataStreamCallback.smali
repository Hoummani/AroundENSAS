.class public interface abstract Lcom/parse/GetDataStreamCallback;
.super Ljava/lang/Object;
.source "GetDataStreamCallback.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Ljava/io/InputStream;Lcom/parse/ParseException;)V
.end method
