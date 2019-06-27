.class abstract Lcom/parse/OfflineQueryLogic$SubQueryMatcher;
.super Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineQueryLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SubQueryMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final subQuery:Lcom/parse/ParseQuery$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery$State",
            "<TT;>;"
        }
    .end annotation
.end field

.field private subQueryResults:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;)V
    .locals 1
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p0, "this":Lcom/parse/OfflineQueryLogic$SubQueryMatcher;, "Lcom/parse/OfflineQueryLogic$SubQueryMatcher<TT;>;"
    .local p3, "subQuery":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->this$0:Lcom/parse/OfflineQueryLogic;

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:Lbolts/Task;

    .line 573
    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQuery:Lcom/parse/ParseQuery$State;

    .line 574
    return-void
.end method


# virtual methods
.method protected abstract matches(Lcom/parse/ParseObject;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation
.end method

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
    .line 582
    .local p0, "this":Lcom/parse/OfflineQueryLogic$SubQueryMatcher;, "Lcom/parse/OfflineQueryLogic$SubQueryMatcher<TT;>;"
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:Lbolts/Task;

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->this$0:Lcom/parse/OfflineQueryLogic;

    invoke-static {v0}, Lcom/parse/OfflineQueryLogic;->access$100(Lcom/parse/OfflineQueryLogic;)Lcom/parse/OfflineStore;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQuery:Lcom/parse/ParseQuery$State;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->user:Lcom/parse/ParseUser;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:Lbolts/Task;

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$SubQueryMatcher;->subQueryResults:Lbolts/Task;

    new-instance v1, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineQueryLogic$SubQueryMatcher$1;-><init>(Lcom/parse/OfflineQueryLogic$SubQueryMatcher;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
