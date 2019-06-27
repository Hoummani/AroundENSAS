.class final Lcom/parse/OfflineQueryLogic$17;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$17;->val$store:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$17;->val$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$17;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$17;->val$store:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$17;->val$item:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$17;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$17;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
