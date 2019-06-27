.class Lcom/parse/OfflineStore$28;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->updateDataForObjectAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$json:Lorg/json/JSONObject;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/parse/OfflineStore$28;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$28;->val$object:Lcom/parse/ParseObject;

    iput-object p3, p0, Lcom/parse/OfflineStore$28;->val$json:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/parse/OfflineStore$28;->val$uuid:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/OfflineStore$28;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 8
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
    .line 1027
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v6, p0, Lcom/parse/OfflineStore$28;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v6}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1028
    .local v1, "className":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/OfflineStore$28;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v6}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 1029
    .local v3, "objectId":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/OfflineStore$28;->val$json:Lorg/json/JSONObject;

    const-string v7, "__isDeletingEventually"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1031
    .local v2, "isDeletingEventually":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1032
    .local v4, "values":Landroid/content/ContentValues;
    const-string v6, "className"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v6, "json"

    iget-object v7, p0, Lcom/parse/OfflineStore$28;->val$json:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    if-eqz v3, :cond_0

    .line 1035
    const-string v6, "objectId"

    invoke-virtual {v4, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    :cond_0
    const-string v6, "isDeletingEventually"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    const-string v5, "uuid = ?"

    .line 1039
    .local v5, "where":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/parse/OfflineStore$28;->val$uuid:Ljava/lang/String;

    aput-object v7, v0, v6

    .line 1040
    .local v0, "args":[Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/OfflineStore$28;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v7, "ParseObjects"

    invoke-virtual {v6, v7, v4, v5, v0}, Lcom/parse/ParseSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v6}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v6

    return-object v6
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$28;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
