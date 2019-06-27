.class final Lcom/parse/ParseAnalytics$2;
.super Ljava/lang/Object;
.source "ParseAnalytics.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAnalytics;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$dimensionsCopy:Ljava/util/Map;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/parse/ParseAnalytics$2;->val$name:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseAnalytics$2;->val$dimensionsCopy:Ljava/util/Map;

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
            "Ljava/lang/String;",
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
    .line 204
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    .local v0, "sessionToken":Ljava/lang/String;
    invoke-static {}, Lcom/parse/ParseAnalytics;->getAnalyticsController()Lcom/parse/ParseAnalyticsController;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseAnalytics$2;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseAnalytics$2;->val$dimensionsCopy:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v0}, Lcom/parse/ParseAnalyticsController;->trackEventInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/parse/ParseAnalytics$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
