.class public interface abstract Lcom/parse/GetFileCallback;
.super Ljava/lang/Object;
.source "GetFileCallback.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Ljava/io/File;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract done(Ljava/io/File;Lcom/parse/ParseException;)V
.end method
