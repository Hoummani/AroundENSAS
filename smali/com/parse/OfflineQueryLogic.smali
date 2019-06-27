.class Lcom/parse/OfflineQueryLogic;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/OfflineQueryLogic$SubQueryMatcher;,
        Lcom/parse/OfflineQueryLogic$Decider;,
        Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    }
.end annotation


# instance fields
.field private final store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0
    .param p1, "store"    # Lcom/parse/OfflineStore;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    .line 56
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineQueryLogic;)Lcom/parse/OfflineStore;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineQueryLogic;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lcom/parse/ParseQuery$KeyConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-static {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "decider"    # Lcom/parse/OfflineQueryLogic$Decider;

    .prologue
    .line 205
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 206
    check-cast p1, Ljava/util/List;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    .line 210
    :goto_0
    return v0

    .line 207
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 208
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    goto :goto_0

    .line 210
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    invoke-interface {p2, p0, p1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "values"    # Lorg/json/JSONArray;
    .param p2, "decider"    # Lcom/parse/OfflineQueryLogic$Decider;

    .prologue
    .line 185
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 187
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v2, 0x1

    .line 195
    :goto_1
    return v2

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 185
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p2, "decider"    # Lcom/parse/OfflineQueryLogic$Decider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/parse/OfflineQueryLogic$Decider;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {p2, p0, v0}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v1, 0x1

    .line 178
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 7
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v4, :cond_0

    if-nez p0, :cond_3

    :cond_0
    move v0, v3

    .line 140
    .local v0, "lhsIsNullOrUndefined":Z
    :goto_0
    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v4, :cond_1

    if-nez p1, :cond_4

    :cond_1
    move v1, v3

    .line 142
    .local v1, "rhsIsNullOrUndefined":Z
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_7

    .line 143
    :cond_2
    if-nez v0, :cond_5

    .line 155
    .end local p0    # "lhs":Ljava/lang/Object;
    .end local p1    # "rhs":Ljava/lang/Object;
    :goto_2
    return v3

    .end local v0    # "lhsIsNullOrUndefined":Z
    .end local v1    # "rhsIsNullOrUndefined":Z
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_3
    move v0, v2

    .line 139
    goto :goto_0

    .restart local v0    # "lhsIsNullOrUndefined":Z
    :cond_4
    move v1, v2

    .line 140
    goto :goto_1

    .line 145
    .restart local v1    # "rhsIsNullOrUndefined":Z
    :cond_5
    if-nez v1, :cond_6

    .line 146
    const/4 v3, -0x1

    goto :goto_2

    :cond_6
    move v3, v2

    .line 148
    goto :goto_2

    .line 150
    :cond_7
    instance-of v4, p0, Ljava/util/Date;

    if-eqz v4, :cond_8

    instance-of v4, p1, Ljava/util/Date;

    if-eqz v4, :cond_8

    .line 151
    check-cast p0, Ljava/util/Date;

    .end local p0    # "lhs":Ljava/lang/Object;
    check-cast p1, Ljava/util/Date;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    goto :goto_2

    .line 152
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_9

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 153
    check-cast p0, Ljava/lang/String;

    .end local p0    # "lhs":Ljava/lang/Object;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 154
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_a

    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_a

    .line 155
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "lhs":Ljava/lang/Object;
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "rhs":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/parse/Numbers;->compare(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v3

    goto :goto_2

    .line 157
    .restart local p0    # "lhs":Ljava/lang/Object;
    .restart local p1    # "rhs":Ljava/lang/Object;
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot compare %s against %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    aput-object p1, v6, v3

    .line 158
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 665
    .local v0, "selectMatcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v1, Lcom/parse/OfflineQueryLogic$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$9;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 605
    check-cast p2, Lcom/parse/ParseQuery$State$Builder;

    .end local p2    # "constraint":Ljava/lang/Object;
    invoke-virtual {p2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 606
    .local v0, "query":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v1, Lcom/parse/OfflineQueryLogic$6;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/parse/OfflineQueryLogic$6;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;Ljava/lang/String;)V

    return-object v1
.end method

.method private createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 12
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "queryConstraints"    # Lcom/parse/ParseQuery$QueryConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 759
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v7, "matchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;>;"
    invoke-virtual {p2}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 761
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {p2, v4}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 763
    .local v8, "queryConstraintValue":Ljava/lang/Object;
    const-string v0, "$or"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    check-cast v8, Ljava/util/ArrayList;

    .line 769
    .end local v8    # "queryConstraintValue":Ljava/lang/Object;
    invoke-direct {p0, p1, v8}, Lcom/parse/OfflineQueryLogic;->createOrMatcher(Lcom/parse/ParseUser;Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v6

    .line 770
    .local v6, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 772
    .end local v6    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    .restart local v8    # "queryConstraintValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, v8, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v0, :cond_2

    move-object v5, v8

    .line 776
    check-cast v5, Lcom/parse/ParseQuery$KeyConstraints;

    .line 777
    .local v5, "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    invoke-virtual {v5}, Lcom/parse/ParseQuery$KeyConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 778
    .local v2, "operator":Ljava/lang/String;
    invoke-virtual {v5, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "keyConstraintValue":Ljava/lang/Object;
    move-object v0, p0

    move-object v1, p1

    .line 780
    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v6

    .line 781
    .restart local v6    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 784
    .end local v2    # "operator":Ljava/lang/String;
    .end local v3    # "keyConstraintValue":Ljava/lang/Object;
    .end local v5    # "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    .end local v6    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    :cond_2
    instance-of v0, v8, Lcom/parse/ParseQuery$RelationConstraint;

    if-eqz v0, :cond_3

    move-object v9, v8

    .line 788
    check-cast v9, Lcom/parse/ParseQuery$RelationConstraint;

    .line 789
    .local v9, "relation":Lcom/parse/ParseQuery$RelationConstraint;
    new-instance v0, Lcom/parse/OfflineQueryLogic$12;

    invoke-direct {v0, p0, p1, v9}, Lcom/parse/OfflineQueryLogic$12;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$RelationConstraint;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 800
    .end local v9    # "relation":Lcom/parse/ParseQuery$RelationConstraint;
    :cond_3
    new-instance v0, Lcom/parse/OfflineQueryLogic$13;

    invoke-direct {v0, p0, p1, v4, v8}, Lcom/parse/OfflineQueryLogic$13;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "queryConstraintValue":Ljava/lang/Object;
    :cond_4
    new-instance v0, Lcom/parse/OfflineQueryLogic$14;

    invoke-direct {v0, p0, p1, v7}, Lcom/parse/OfflineQueryLogic$14;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private createMatcher(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 7
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "constraint"    # Ljava/lang/Object;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "allKeyConstraints"    # Lcom/parse/ParseQuery$KeyConstraints;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$KeyConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 684
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 701
    new-instance v0, Lcom/parse/OfflineQueryLogic$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parse/OfflineQueryLogic$10;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)V

    :goto_1
    return-object v0

    .line 684
    :sswitch_0
    const-string v1, "$inQuery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "$notInQuery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "$select"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "$dontSelect"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 686
    :pswitch_0
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    .line 689
    :pswitch_1
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createNotInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    .line 692
    :pswitch_2
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    .line 695
    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    .line 684
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b0248ef -> :sswitch_3
        0xe79d9ff -> :sswitch_0
        0x19745774 -> :sswitch_1
        0x3a5f8a20 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createNotInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 620
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 621
    .local v0, "inQueryMatcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v1, Lcom/parse/OfflineQueryLogic$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$7;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createOrMatcher(Lcom/parse/ParseUser;Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 5
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ">;)",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p2, "queries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseQuery$QueryConstraints;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 723
    .local v2, "matchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$QueryConstraints;

    .line 724
    .local v0, "constraints":Lcom/parse/ParseQuery$QueryConstraints;
    invoke-direct {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v1

    .line 725
    .local v1, "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 730
    .end local v0    # "constraints":Lcom/parse/ParseQuery$QueryConstraints;
    .end local v1    # "matcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    :cond_0
    new-instance v3, Lcom/parse/OfflineQueryLogic$11;

    invoke-direct {v3, p0, p1, v2}, Lcom/parse/OfflineQueryLogic$11;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method private createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 7
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "constraint"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 639
    move-object v6, p2

    check-cast v6, Ljava/util/Map;

    .line 642
    .local v6, "constraintMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v0, "query"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v3

    .line 643
    .local v3, "query":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const-string v0, "key"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 644
    .local v5, "resultKey":Ljava/lang/String;
    new-instance v0, Lcom/parse/OfflineQueryLogic$8;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic$8;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 17
    .param p0, "store"    # Lcom/parse/OfflineStore;
    .param p1, "container"    # Ljava/lang/Object;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/OfflineStore;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1011
    if-nez p1, :cond_1

    .line 1012
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v16

    .line 1067
    :cond_0
    :goto_0
    return-object v16

    .line 1016
    :cond_1
    move-object/from16 v0, p1

    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    move-object/from16 v9, p1

    .line 1017
    check-cast v9, Ljava/util/Collection;

    .line 1019
    .local v9, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v16

    .line 1020
    .local v16, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 1021
    .local v11, "item":Ljava/lang/Object;
    new-instance v4, Lcom/parse/OfflineQueryLogic$17;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v11, v1, v2}, Lcom/parse/OfflineQueryLogic$17;-><init>(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v16

    .line 1027
    goto :goto_1

    .line 1029
    .end local v9    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v11    # "item":Ljava/lang/Object;
    .end local v16    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_2
    move-object/from16 v0, p1

    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_3

    move-object/from16 v5, p1

    .line 1030
    check-cast v5, Lorg/json/JSONArray;

    .line 1032
    .local v5, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v16

    .line 1033
    .restart local v16    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v10, v3, :cond_0

    .line 1034
    move v6, v10

    .line 1035
    .local v6, "index":I
    new-instance v3, Lcom/parse/OfflineQueryLogic$18;

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/parse/OfflineQueryLogic$18;-><init>(Lcom/parse/OfflineStore;Lorg/json/JSONArray;ILjava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v16

    .line 1033
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1046
    .end local v5    # "array":Lorg/json/JSONArray;
    .end local v6    # "index":I
    .end local v10    # "i":I
    .end local v16    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    if-nez p2, :cond_6

    .line 1047
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1050
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v16

    goto :goto_0

    .line 1051
    :cond_4
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/parse/ParseObject;

    if-eqz v3, :cond_5

    move-object/from16 v13, p1

    .line 1052
    check-cast v13, Lcom/parse/ParseObject;

    .line 1053
    .local v13, "object":Lcom/parse/ParseObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v3

    invoke-virtual {v3}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v16

    goto/16 :goto_0

    .line 1055
    .end local v13    # "object":Lcom/parse/ParseObject;
    :cond_5
    new-instance v3, Lcom/parse/ParseException;

    const/16 v4, 0x79

    const-string v7, "include is invalid for non-ParseObjects"

    invoke-direct {v3, v4, v7}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v16

    goto/16 :goto_0

    .line 1062
    :cond_6
    const-string v3, "\\."

    const/4 v4, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 1063
    .local v14, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v12, v14, v3

    .line 1064
    .local v12, "key":Ljava/lang/String;
    array-length v3, v14

    const/4 v4, 0x1

    if-le v3, v4, :cond_7

    const/4 v3, 0x1

    aget-object v15, v14, v3

    .line 1067
    .local v15, "rest":Ljava/lang/String;
    :goto_3
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineQueryLogic$20;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2, v12}, Lcom/parse/OfflineQueryLogic$20;-><init>(Ljava/lang/Object;Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineQueryLogic$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v15, v1}, Lcom/parse/OfflineQueryLogic$19;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    .line 1090
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v16

    goto/16 :goto_0

    .line 1064
    .end local v15    # "rest":Ljava/lang/String;
    :cond_7
    const/4 v15, 0x0

    goto :goto_3
.end method

.method static fetchIncludesAsync(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseQuery$State;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 5
    .param p0, "store"    # Lcom/parse/OfflineStore;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/OfflineStore;",
            "TT;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    .local p2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {p2}, Lcom/parse/ParseQuery$State;->includes()Ljava/util/Set;

    move-result-object v1

    .line 1108
    .local v1, "includes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1109
    .local v2, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1110
    .local v0, "include":Ljava/lang/String;
    new-instance v4, Lcom/parse/OfflineQueryLogic$21;

    invoke-direct {v4, p0, p1, v0, p3}, Lcom/parse/OfflineQueryLogic$21;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v2, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1116
    goto :goto_0

    .line 1117
    .end local v0    # "include":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "container"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 10
    .param p0, "container"    # Ljava/lang/Object;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "depth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v9, 0x79

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 67
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 68
    const-string v4, "\\."

    invoke-virtual {p1, v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "parts":[Ljava/lang/String;
    aget-object v4, v1, v5

    add-int/lit8 v7, p2, 0x1

    invoke-static {p0, v4, v7}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    .line 74
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v3, v4, :cond_2

    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_2

    instance-of v4, v3, Lorg/json/JSONObject;

    if-nez v4, :cond_2

    .line 76
    if-lez p2, :cond_1

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, "restFormat":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 83
    .end local v2    # "restFormat":Ljava/lang/Object;
    :goto_0
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 84
    aget-object v4, v1, v6

    add-int/lit8 v5, p2, 0x1

    invoke-static {v2, v4, v5}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    .line 126
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local p0    # "container":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-object v4

    .line 87
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local p0    # "container":Ljava/lang/Object;
    :cond_1
    new-instance v4, Lcom/parse/ParseException;

    const/16 v7, 0x66

    const-string v8, "Key %s is invalid."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 90
    :cond_2
    aget-object v4, v1, v6

    add-int/lit8 v5, p2, 0x1

    invoke-static {v3, v4, v5}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 93
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v8, p0, Lcom/parse/ParseObject;

    if-eqz v8, :cond_6

    move-object v0, p0

    .line 94
    check-cast v0, Lcom/parse/ParseObject;

    .line 97
    .local v0, "object":Lcom/parse/ParseObject;
    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 98
    new-instance v4, Lcom/parse/ParseException;

    const-string v7, "Bad key: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 103
    :cond_4
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 113
    invoke-virtual {v0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 103
    :sswitch_0
    const-string v6, "objectId"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v5

    goto :goto_2

    :sswitch_1
    const-string v5, "createdAt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v6

    goto :goto_2

    :sswitch_2
    const-string v5, "_created_at"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v4, v7

    goto :goto_2

    :sswitch_3
    const-string v5, "updatedAt"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x3

    goto :goto_2

    :sswitch_4
    const-string v5, "_updated_at"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x4

    goto :goto_2

    .line 105
    :pswitch_0
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 108
    :pswitch_1
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v4

    goto/16 :goto_1

    .line 111
    :pswitch_2
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v4

    goto/16 :goto_1

    .line 116
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_6
    instance-of v7, p0, Lorg/json/JSONObject;

    if-eqz v7, :cond_7

    .line 117
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "container":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1

    .line 119
    .restart local p0    # "container":Ljava/lang/Object;
    :cond_7
    instance-of v7, p0, Ljava/util/Map;

    if-eqz v7, :cond_8

    .line 120
    check-cast p0, Ljava/util/Map;

    .end local p0    # "container":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_1

    .line 122
    .restart local p0    # "container":Ljava/lang/Object;
    :cond_8
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v7, :cond_0

    .line 125
    if-eqz p0, :cond_0

    .line 129
    new-instance v4, Lcom/parse/ParseException;

    const-string v7, "Bad key: %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 80
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v2    # "restFormat":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        -0x742e59b2 -> :sswitch_3
        -0x6d7e0177 -> :sswitch_2
        0x564d8ba -> :sswitch_0
        0x23aa6d3b -> :sswitch_1
        0x2f41e7d6 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static hasReadAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    const/4 v1, 0x1

    .line 842
    if-ne p0, p1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return v1

    .line 846
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v0

    .line 847
    .local v0, "acl":Lcom/parse/ParseACL;
    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getPublicReadAccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 853
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/parse/ParseACL;->getReadAccess(Lcom/parse/ParseUser;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static hasWriteAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .param p0, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    const/4 v1, 0x1

    .line 864
    if-ne p0, p1, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v1

    .line 868
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v0

    .line 869
    .local v0, "acl":Lcom/parse/ParseACL;
    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getPublicWriteAccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 875
    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/parse/ParseACL;->getWriteAccess(Lcom/parse/ParseUser;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 879
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 342
    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    .line 356
    .end local p0    # "constraint":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 346
    .restart local p0    # "constraint":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Ljava/util/Collection;

    if-nez v2, :cond_2

    .line 347
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Value type not supported for $all queries."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 350
    :cond_2
    instance-of v2, p0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    .line 351
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "constraint":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 352
    .local v0, "requiredItem":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 356
    .end local v0    # "requiredItem":Ljava/lang/Object;
    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    .line 358
    .restart local p0    # "constraint":Ljava/lang/Object;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Constraint type not supported for $all queries."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 8
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 219
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 220
    :cond_0
    if-ne p0, p1, :cond_2

    .line 240
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    .line 220
    goto :goto_0

    .line 223
    :cond_3
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_4

    instance-of v4, p1, Ljava/lang/Number;

    if-eqz v4, :cond_4

    .line 224
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0

    .line 227
    :cond_4
    instance-of v4, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v4, :cond_6

    instance-of v4, p1, Lcom/parse/ParseGeoPoint;

    if-eqz v4, :cond_6

    move-object v0, p0

    .line 228
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .local v0, "lhs":Lcom/parse/ParseGeoPoint;
    move-object v1, p1

    .line 229
    check-cast v1, Lcom/parse/ParseGeoPoint;

    .line 230
    .local v1, "rhs":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-nez v4, :cond_5

    .line 231
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_1

    :cond_5
    move v2, v3

    goto :goto_0

    .line 234
    .end local v0    # "lhs":Lcom/parse/ParseGeoPoint;
    .end local v1    # "rhs":Lcom/parse/ParseGeoPoint;
    :cond_6
    instance-of v2, p0, Lcom/parse/ParsePolygon;

    if-eqz v2, :cond_7

    instance-of v2, p1, Lcom/parse/ParsePolygon;

    if-eqz v2, :cond_7

    move-object v0, p0

    .line 235
    check-cast v0, Lcom/parse/ParsePolygon;

    .local v0, "lhs":Lcom/parse/ParsePolygon;
    move-object v1, p1

    .line 236
    check-cast v1, Lcom/parse/ParsePolygon;

    .line 237
    .local v1, "rhs":Lcom/parse/ParsePolygon;
    invoke-virtual {v0, v1}, Lcom/parse/ParsePolygon;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 240
    .end local v0    # "lhs":Lcom/parse/ParsePolygon;
    .end local v1    # "rhs":Lcom/parse/ParsePolygon;
    :cond_7
    new-instance v2, Lcom/parse/OfflineQueryLogic$1;

    invoke-direct {v2}, Lcom/parse/OfflineQueryLogic$1;-><init>()V

    invoke-static {p0, p1, v2}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v2

    goto :goto_0
.end method

.method private static matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "constraint":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 407
    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    .line 409
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 407
    goto :goto_0

    .line 409
    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static matchesGeoIntersectsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 471
    if-eqz p1, :cond_0

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v3, :cond_1

    .line 472
    :cond_0
    const/4 v3, 0x0

    .line 480
    :goto_0
    return v3

    :cond_1
    move-object v0, p0

    .line 476
    check-cast v0, Ljava/util/HashMap;

    .line 478
    .local v0, "constraintMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/parse/ParseGeoPoint;>;"
    const-string v3, "$point"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;

    .local v1, "point":Lcom/parse/ParseGeoPoint;
    move-object v2, p1

    .line 479
    check-cast v2, Lcom/parse/ParsePolygon;

    .line 480
    .local v2, "target":Lcom/parse/ParsePolygon;
    invoke-virtual {v2, v1}, Lcom/parse/ParsePolygon;->containsPoint(Lcom/parse/ParseGeoPoint;)Z

    move-result v3

    goto :goto_0
.end method

.method private static matchesGeoWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 488
    if-eqz p1, :cond_0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v4, :cond_1

    .line 489
    :cond_0
    const/4 v4, 0x0

    .line 498
    :goto_0
    return v4

    :cond_1
    move-object v0, p0

    .line 493
    check-cast v0, Ljava/util/HashMap;

    .line 495
    .local v0, "constraintMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Lcom/parse/ParseGeoPoint;>;>;"
    const-string v4, "$polygon"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 496
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseGeoPoint;>;"
    new-instance v3, Lcom/parse/ParsePolygon;

    invoke-direct {v3, v2}, Lcom/parse/ParsePolygon;-><init>(Ljava/util/List;)V

    .local v3, "polygon":Lcom/parse/ParsePolygon;
    move-object v1, p1

    .line 497
    check-cast v1, Lcom/parse/ParseGeoPoint;

    .line 498
    .local v1, "point":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v3, v1}, Lcom/parse/ParsePolygon;->containsPoint(Lcom/parse/ParseGeoPoint;)Z

    move-result v4

    goto :goto_0
.end method

.method private static matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 289
    new-instance v0, Lcom/parse/OfflineQueryLogic$4;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$4;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 304
    new-instance v0, Lcom/parse/OfflineQueryLogic$5;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$5;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 320
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 321
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "constraint":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "requiredItem":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const/4 v1, 0x1

    .line 326
    .end local v0    # "requiredItem":Ljava/lang/Object;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 328
    .restart local p0    # "constraint":Ljava/lang/Object;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Constraint type not supported for $in queries."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 259
    new-instance v0, Lcom/parse/OfflineQueryLogic$2;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$2;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 274
    new-instance v0, Lcom/parse/OfflineQueryLogic$3;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$3;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z
    .locals 8
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "maxDistance"    # Ljava/lang/Double;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    if-eqz p1, :cond_0

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v4, :cond_2

    :cond_0
    move v2, v3

    .line 426
    :cond_1
    :goto_0
    return v2

    .line 421
    :cond_2
    if-eqz p2, :cond_1

    move-object v0, p0

    .line 424
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .local v0, "point1":Lcom/parse/ParseGeoPoint;
    move-object v1, p1

    .line 425
    check-cast v1, Lcom/parse/ParseGeoPoint;

    .line 426
    .local v1, "point2":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v0, v1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v4

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-lez v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private static matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 252
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 335
    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 9
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "options"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 366
    if-eqz p1, :cond_0

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v5, :cond_1

    .line 396
    .end local p1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 370
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_1
    if-nez p2, :cond_2

    .line 371
    const-string p2, ""

    .line 374
    :cond_2
    const-string v5, "^[imxs]*$"

    invoke-virtual {p2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 375
    new-instance v5, Lcom/parse/ParseException;

    const/16 v6, 0x66

    const-string v7, "Invalid regex options: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p2, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 379
    :cond_3
    const/4 v0, 0x0

    .line 380
    .local v0, "flags":I
    const-string v4, "i"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 381
    or-int/lit8 v0, v0, 0x2

    .line 383
    :cond_4
    const-string v4, "m"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 384
    or-int/lit8 v0, v0, 0x8

    .line 386
    :cond_5
    const-string v4, "x"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 387
    or-int/lit8 v0, v0, 0x4

    .line 389
    :cond_6
    const-string v4, "s"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    or-int/lit8 v0, v0, 0x20

    :cond_7
    move-object v3, p0

    .line 393
    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "regex":Ljava/lang/String;
    invoke-static {v3, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 395
    .local v2, "pattern":Ljava/util/regex/Pattern;
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 396
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    goto :goto_0
.end method

.method private static matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 6
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "constraint"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "allKeyConstraints"    # Lcom/parse/ParseQuery$KeyConstraints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 508
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 562
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v5, "The offline store does not yet support the %s operator."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 508
    :sswitch_0
    const-string v5, "$ne"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v5, "$lt"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string v5, "$lte"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_3
    const-string v5, "$gt"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v5, "$gte"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "$in"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v5, "$nin"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_7
    const-string v5, "$all"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x7

    goto :goto_0

    :sswitch_8
    const-string v5, "$regex"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :sswitch_9
    const-string v5, "$options"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0x9

    goto :goto_0

    :sswitch_a
    const-string v5, "$exists"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "$nearSphere"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "$maxDistance"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "$within"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "$geoWithin"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "$geoIntersects"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v3, 0xf

    goto/16 :goto_0

    .line 510
    :pswitch_0
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 559
    :goto_1
    :pswitch_1
    return v2

    .line 513
    :pswitch_2
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 516
    :pswitch_3
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 519
    :pswitch_4
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 522
    :pswitch_5
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 525
    :pswitch_6
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 528
    :pswitch_7
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 531
    :pswitch_8
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 534
    :pswitch_9
    const-string v2, "$options"

    invoke-virtual {p3, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 535
    .local v1, "regexOptions":Ljava/lang/String;
    invoke-static {p1, p2, v1}, Lcom/parse/OfflineQueryLogic;->matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    goto :goto_1

    .line 542
    .end local v1    # "regexOptions":Ljava/lang/String;
    :pswitch_a
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 545
    :pswitch_b
    const-string v2, "$maxDistance"

    invoke-virtual {p3, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 546
    .local v0, "maxDistance":Ljava/lang/Double;
    invoke-static {p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z

    move-result v2

    goto :goto_1

    .line 553
    .end local v0    # "maxDistance":Ljava/lang/Double;
    :pswitch_c
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 556
    :pswitch_d
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGeoWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 559
    :pswitch_e
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGeoIntersectsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 508
    nop

    :sswitch_data_0
    .sparse-switch
        -0x78057888 -> :sswitch_e
        -0x60b0cd2b -> :sswitch_c
        -0x1a72bec7 -> :sswitch_b
        0x9411 -> :sswitch_3
        0x9449 -> :sswitch_5
        0x94ac -> :sswitch_1
        0x94db -> :sswitch_0
        0x11d6fd -> :sswitch_7
        0x11ee74 -> :sswitch_4
        0x120139 -> :sswitch_2
        0x12076f -> :sswitch_6
        0x23864980 -> :sswitch_a
        0x416ef98f -> :sswitch_d
        0x43e466a3 -> :sswitch_8
        0x5130d5fa -> :sswitch_9
        0x6a6ad3c1 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13
    .param p0, "constraint"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/16 v12, 0x66

    const/4 v6, 0x0

    .line 434
    if-eqz p1, :cond_0

    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v7, :cond_2

    :cond_0
    move v5, v6

    .line 460
    :cond_1
    :goto_0
    return v5

    :cond_2
    move-object v1, p0

    .line 439
    check-cast v1, Ljava/util/HashMap;

    .line 441
    .local v1, "constraintMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/parse/ParseGeoPoint;>;>;"
    const-string v7, "$box"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 442
    .local v0, "box":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseGeoPoint;>;"
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseGeoPoint;

    .line 443
    .local v3, "southwest":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseGeoPoint;

    .local v2, "northeast":Lcom/parse/ParseGeoPoint;
    move-object v4, p1

    .line 444
    check-cast v4, Lcom/parse/ParseGeoPoint;

    .line 446
    .local v4, "target":Lcom/parse/ParseGeoPoint;
    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_3

    .line 447
    new-instance v5, Lcom/parse/ParseException;

    const-string v6, "whereWithinGeoBox queries cannot cross the International Date Line."

    invoke-direct {v5, v12, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 450
    :cond_3
    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gez v7, :cond_4

    .line 451
    new-instance v5, Lcom/parse/ParseException;

    const-string v6, "The southwest corner of a geo box must be south of the northeast corner."

    invoke-direct {v5, v12, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 454
    :cond_4
    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    sub-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v7, v8, v10

    if-lez v7, :cond_5

    .line 455
    new-instance v5, Lcom/parse/ParseException;

    const-string v6, "Geo box queries larger than 180 degrees in longitude are not supported. Please check point order."

    invoke-direct {v5, v12, v6}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 460
    :cond_5
    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_6

    .line 461
    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_6

    .line 462
    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v3}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    cmpl-double v7, v8, v10

    if-ltz v7, :cond_6

    .line 463
    invoke-virtual {v4}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v2}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-lez v7, :cond_1

    :cond_6
    move v5, v6

    goto/16 :goto_0
.end method

.method static sort(Ljava/util/List;Lcom/parse/ParseQuery$State;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 913
    .local p0, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v2

    .line 915
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 916
    .local v0, "key":Ljava/lang/String;
    const-string v10, "^-?[A-Za-z][A-Za-z0-9_]*$"

    invoke-virtual {v0, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 917
    const-string v10, "_created_at"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "_updated_at"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 918
    new-instance v9, Lcom/parse/ParseException;

    const/16 v10, 0x69

    const-string v11, "Invalid key name: \"%s\"."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v9

    .line 925
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    .line 926
    .local v3, "mutableNearSphereKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 927
    .local v4, "mutableNearSphereValue":Lcom/parse/ParseGeoPoint;
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v9

    invoke-virtual {v9}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 928
    .local v7, "queryKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 929
    .local v8, "queryKeyConstraints":Ljava/lang/Object;
    instance-of v10, v8, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v10, :cond_2

    move-object v1, v8

    .line 930
    check-cast v1, Lcom/parse/ParseQuery$KeyConstraints;

    .line 931
    .local v1, "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    const-string v10, "$nearSphere"

    invoke-virtual {v1, v10}, Lcom/parse/ParseQuery$KeyConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 932
    move-object v3, v7

    .line 933
    const-string v10, "$nearSphere"

    invoke-virtual {v1, v10}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mutableNearSphereValue":Lcom/parse/ParseGeoPoint;
    check-cast v4, Lcom/parse/ParseGeoPoint;

    .restart local v4    # "mutableNearSphereValue":Lcom/parse/ParseGeoPoint;
    goto :goto_0

    .line 937
    .end local v1    # "keyConstraints":Lcom/parse/ParseQuery$KeyConstraints;
    .end local v7    # "queryKey":Ljava/lang/String;
    .end local v8    # "queryKeyConstraints":Ljava/lang/Object;
    :cond_3
    move-object v5, v3

    .line 938
    .local v5, "nearSphereKey":Ljava/lang/String;
    move-object v6, v4

    .line 941
    .local v6, "nearSphereValue":Lcom/parse/ParseGeoPoint;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    if-nez v3, :cond_4

    .line 999
    :goto_1
    return-void

    .line 949
    :cond_4
    new-instance v9, Lcom/parse/OfflineQueryLogic$16;

    invoke-direct {v9, v5, v6, v2}, Lcom/parse/OfflineQueryLogic$16;-><init>(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Ljava/util/List;)V

    invoke-static {p0, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method


# virtual methods
.method createMatcher(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 3
    .param p2, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 894
    .local p1, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->ignoreACLs()Z

    move-result v1

    .line 895
    .local v1, "ignoreACLs":Z
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    .line 897
    .local v0, "constraintMatcher":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    new-instance v2, Lcom/parse/OfflineQueryLogic$15;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/parse/OfflineQueryLogic$15;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;ZLcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v2
.end method
