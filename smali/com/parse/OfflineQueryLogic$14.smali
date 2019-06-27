.class Lcom/parse/OfflineQueryLogic$14;
.super Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$matchers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parse/OfflineQueryLogic;
    .param p2, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 818
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$14;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$14;->val$matchers:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 4
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 821
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 822
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$14;->val$matchers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    .line 823
    .local v0, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v3, Lcom/parse/OfflineQueryLogic$14$1;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/parse/OfflineQueryLogic$14$1;-><init>(Lcom/parse/OfflineQueryLogic$14;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 832
    goto :goto_0

    .line 833
    .end local v0    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    :cond_0
    return-object v1
.end method
