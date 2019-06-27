.class Lcom/parse/OfflineStore$43;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lcom/parse/OfflineStore$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->findFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/OfflineStore$SQLiteDatabaseCallable",
        "<",
        "Lbolts/Task",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$state:Lcom/parse/ParseQuery$State;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 1331
    iput-object p1, p0, Lcom/parse/OfflineStore$43;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$43;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineStore$43;->val$state:Lcom/parse/ParseQuery$State;

    iput-object p4, p0, Lcom/parse/OfflineStore$43;->val$user:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 4
    .param p1, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/parse/OfflineStore$43;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$43;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineStore$43;->val$state:Lcom/parse/ParseQuery$State;

    iget-object v3, p0, Lcom/parse/OfflineStore$43;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/parse/OfflineStore;->access$2200(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1331
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$43;->call(Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
