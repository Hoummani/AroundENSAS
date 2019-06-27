.class Lcom/parse/OfflineStore;
.super Ljava/lang/Object;
.source "OfflineStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/OfflineStore$SQLiteDatabaseCallable;,
        Lcom/parse/OfflineStore$OfflineEncoder;,
        Lcom/parse/OfflineStore$OfflineDecoder;
    }
.end annotation


# static fields
.field private static final MAX_SQL_VARIABLES:I = 0x3e7


# instance fields
.field private final classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/WeakValueHashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchedObjects:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final helper:Lcom/parse/OfflineSQLiteOpenHelper;

.field private final lock:Ljava/lang/Object;

.field private final objectToUuidMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/WeakValueHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    new-instance v0, Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;-><init>(Lcom/parse/OfflineSQLiteOpenHelper;)V

    .line 180
    return-void
.end method

.method constructor <init>(Lcom/parse/OfflineSQLiteOpenHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/parse/OfflineSQLiteOpenHelper;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    .line 158
    new-instance v0, Lcom/parse/WeakValueHashMap;

    invoke-direct {v0}, Lcom/parse/WeakValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    .line 166
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    .line 173
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    .line 1405
    new-instance v0, Lcom/parse/WeakValueHashMap;

    invoke-direct {v0}, Lcom/parse/WeakValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    .line 183
    iput-object p1, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    .line 184
    return-void
.end method

.method static synthetic access$1000(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/OfflineStore;)Lcom/parse/OfflineSQLiteOpenHelper;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/OfflineStore;Ljava/lang/String;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/OfflineStore;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parse/OfflineStore;Ljava/lang/String;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->unpinAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseQuery$State;
    .param p3, "x3"    # Lcom/parse/ParseUser;
    .param p4, "x4"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/OfflineStore;->findFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseQuery$State;
    .param p2, "x2"    # Lcom/parse/ParseUser;
    .param p3, "x3"    # Lcom/parse/ParsePin;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseQuery$State;
    .param p3, "x3"    # Lcom/parse/ParseUser;
    .param p4, "x4"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/OfflineStore;->countFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseObject;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseObject;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private countFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/parse/ParseUser;
    .param p4, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    .local p2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    if-eqz p1, :cond_0

    .line 1378
    invoke-direct {p0, p1, p4}, Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    .line 1382
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :goto_0
    new-instance v1, Lcom/parse/OfflineStore$46;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/parse/OfflineStore$46;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 1380
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    goto :goto_0
.end method

.method private deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 5
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    new-instance v1, Lbolts/Capture;

    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    .line 1078
    .local v1, "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1079
    :try_start_0
    iget-object v3, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;

    .line 1080
    .local v2, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 1082
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    monitor-exit v4

    .line 1149
    :goto_0
    return-object v3

    .line 1084
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1085
    new-instance v3, Lcom/parse/OfflineStore$30;

    invoke-direct {v3, p0, v1}, Lcom/parse/OfflineStore$30;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1094
    new-instance v3, Lcom/parse/OfflineStore$32;

    invoke-direct {v3, p0, v1, p2}, Lcom/parse/OfflineStore$32;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$31;

    invoke-direct {v4, p0, p2, p1}, Lcom/parse/OfflineStore$31;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V

    .line 1103
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1149
    .local v0, "unpinTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parse/OfflineStore$35;

    invoke-direct {v3, p0, v1, p2}, Lcom/parse/OfflineStore$35;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$34;

    invoke-direct {v4, p0, v1, p2}, Lcom/parse/OfflineStore$34;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    .line 1156
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$33;

    invoke-direct {v4, p0, p1}, Lcom/parse/OfflineStore$33;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    .line 1163
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 1084
    .end local v0    # "unpinTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 6
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x3e7

    .line 912
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 913
    const/4 v4, 0x0

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 934
    :goto_0
    return-object v4

    .line 918
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 919
    const/4 v4, 0x0

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$25;

    invoke-direct {v5, p0, p1, p2}, Lcom/parse/OfflineStore$25;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 927
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 928
    .local v2, "placeholders":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 929
    const-string v4, "?"

    aput-object v4, v2, v1

    .line 928
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 931
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    .local v3, "where":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 934
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "ParseObjects"

    invoke-virtual {p2, v4, v3, v0}, Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    goto :goto_0
.end method

.method private findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 21
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .param p4, "isCount"    # Z
    .param p5, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "Z",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "query":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v15, 0x0

    .line 341
    .local v15, "includeIsDeletingEventually":Z
    new-instance v6, Lcom/parse/OfflineQueryLogic;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/parse/OfflineQueryLogic;-><init>(Lcom/parse/OfflineStore;)V

    .line 343
    .local v6, "queryLogic":Lcom/parse/OfflineQueryLogic;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 346
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p3, :cond_0

    .line 347
    const-string v18, "ParseObjects"

    .line 348
    .local v18, "table":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string v5, "uuid"

    aput-object v5, v17, v4

    .line 349
    .local v17, "select":[Ljava/lang/String;
    const-string v20, "className=?"

    .line 351
    .local v20, "where":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND isDeletingEventually=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 353
    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    .line 355
    .local v14, "args":[Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v16

    .line 384
    .end local v14    # "args":[Ljava/lang/String;
    .end local v17    # "select":[Ljava/lang/String;
    .end local v18    # "table":Ljava/lang/String;
    .end local v20    # "where":Ljava/lang/String;
    .local v16, "queryTask":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    :goto_0
    new-instance v4, Lcom/parse/OfflineStore$6;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/parse/OfflineStore$6;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    new-instance v8, Lcom/parse/OfflineStore$5;

    move-object/from16 v9, p0

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v8 .. v13}, Lcom/parse/OfflineStore$5;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseQuery$State;ZLcom/parse/ParseSQLiteDatabase;)V

    .line 433
    invoke-virtual {v4, v8}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 384
    .end local v16    # "queryTask":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    :goto_1
    return-object v4

    .line 357
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lbolts/Task;

    .line 358
    .local v19, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v19, :cond_1

    .line 360
    invoke-static {v10}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    goto :goto_1

    .line 363
    :cond_1
    new-instance v4, Lcom/parse/OfflineStore$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v1, v2}, Lcom/parse/OfflineStore$4;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery$State;Lcom/parse/ParseSQLiteDatabase;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v16

    .restart local v16    # "queryTask":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    goto :goto_0
.end method

.method private findFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/parse/ParseUser;
    .param p4, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1345
    .local p2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    if-eqz p1, :cond_0

    .line 1346
    invoke-direct {p0, p1, p4}, Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    .line 1350
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :goto_0
    new-instance v1, Lcom/parse/OfflineStore$44;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/parse/OfflineStore$44;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 1348
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .restart local v0    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParsePin;>;"
    goto :goto_0
.end method

.method private getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 8
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "newUUID":Ljava/lang/String;
    new-instance v1, Lbolts/TaskCompletionSource;

    invoke-direct {v1}, Lbolts/TaskCompletionSource;-><init>()V

    .line 194
    .local v1, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 195
    :try_start_0
    iget-object v4, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;

    .line 196
    .local v2, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 197
    monitor-exit v5

    .line 229
    .end local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 201
    .restart local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v4, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v4, v0, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    iget-object v4, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/OfflineStore$1;

    invoke-direct {v7, p0, p1}, Lcom/parse/OfflineStore$1;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "uuid"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v4, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "ParseObjects"

    invoke-virtual {p2, v4, v3}, Lcom/parse/ParseSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/parse/OfflineStore$2;-><init>(Lcom/parse/OfflineStore;Lbolts/TaskCompletionSource;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 229
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 209
    .end local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParsePin;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1180
    new-instance v1, Lcom/parse/ParseQuery$State$Builder;

    const-class v2, Lcom/parse/ParsePin;

    invoke-direct {v1, v2}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/Class;)V

    const-string v2, "_name"

    .line 1181
    invoke-virtual {v1, v2, p1}, Lcom/parse/ParseQuery$State$Builder;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    .line 1182
    invoke-virtual {v1}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1187
    .local v0, "query":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<Lcom/parse/ParsePin;>;"
    invoke-virtual {p0, v0, v3, v3, p2}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$36;

    invoke-direct {v2, p0, p1}, Lcom/parse/OfflineStore$36;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 246
    iget-object v5, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 248
    :try_start_0
    iget-object v4, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v4, p1}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 249
    .local v1, "existing":Lcom/parse/ParseObject;, "TT;"
    if-eqz v1, :cond_0

    .line 250
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    monitor-exit v5

    .line 262
    :goto_0
    return-object v4

    .line 252
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "className"

    aput-object v4, v2, v6

    const-string v4, "objectId"

    aput-object v4, v2, v7

    .line 260
    .local v2, "select":[Ljava/lang/String;
    const-string v3, "uuid = ?"

    .line 261
    .local v3, "where":Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v6

    .line 262
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "ParseObjects"

    invoke-virtual {p2, v4, v2, v3, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$3;

    invoke-direct {v5, p0, p1}, Lcom/parse/OfflineStore$3;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 252
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "existing":Lcom/parse/ParseObject;, "TT;"
    .end local v2    # "select":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "includeChildren"    # Z
    .param p4, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;Z",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1224
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1227
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p4}, Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$38;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/parse/OfflineStore$38;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private runWithManagedConnection(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/OfflineStore$SQLiteDatabaseCallable",
            "<",
            "Lbolts/Task",
            "<TT;>;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1496
    .local p1, "callable":Lcom/parse/OfflineStore$SQLiteDatabaseCallable;, "Lcom/parse/OfflineStore$SQLiteDatabaseCallable<Lbolts/Task<TT;>;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$47;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$47;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private runWithManagedTransaction(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/OfflineStore$SQLiteDatabaseCallable",
            "<",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1515
    .local p1, "callable":Lcom/parse/OfflineStore$SQLiteDatabaseCallable;, "Lcom/parse/OfflineStore$SQLiteDatabaseCallable<Lbolts/Task<Ljava/lang/Void;>;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$48;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$48;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 5
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-eqz p2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 788
    .local v1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 789
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 794
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 795
    .local v0, "obj":Lcom/parse/ParseObject;
    invoke-virtual {p0, v0, p3}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v4

    invoke-virtual {v4}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 785
    .end local v0    # "obj":Lcom/parse/ParseObject;
    .end local v1    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 798
    .restart local v1    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .restart local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_2
    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$19;

    invoke-direct {v4, p0, p1}, Lcom/parse/OfflineStore$19;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$18;

    invoke-direct {v4, p0, p3}, Lcom/parse/OfflineStore$18;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    .line 803
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$17;

    invoke-direct {v4, p0, p1, p3}, Lcom/parse/OfflineStore$17;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    .line 816
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$16;

    invoke-direct {v4, p0, v1, p3}, Lcom/parse/OfflineStore$16;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    .line 821
    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    .line 798
    return-object v3
.end method

.method private saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "includeAllChildren"    # Z
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Z",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 765
    .local v0, "objectsInTree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    if-nez p2, :cond_0

    .line 766
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 768
    :cond_0
    new-instance v1, Lcom/parse/OfflineStore$15;

    invoke-direct {v1, p0, v0}, Lcom/parse/OfflineStore$15;-><init>(Lcom/parse/OfflineStore;Ljava/util/ArrayList;)V

    .line 776
    invoke-virtual {v1, v2}, Lcom/parse/OfflineStore$15;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    invoke-virtual {p2}, Lcom/parse/ParseObject;->hasOutstandingOperations()Z

    move-result v1

    if-nez v1, :cond_0

    .line 720
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 726
    :goto_0
    return-object v1

    .line 723
    :cond_0
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 726
    .local v0, "uuidCapture":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$14;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/parse/OfflineStore$14;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$13;

    invoke-direct {v2, p0, p1, v0, p3}, Lcom/parse/OfflineStore$13;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    .line 733
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private unpinAllObjectsAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1315
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$42;

    invoke-direct {v1, p0, p2}, Lcom/parse/OfflineStore$42;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
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
    .line 1273
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1274
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/parse/OfflineStore;->getParsePin(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$40;

    invoke-direct {v1, p0, p2, p3}, Lcom/parse/OfflineStore$40;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private unpinAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 838
    iget-object v1, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 839
    .local v0, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 841
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 843
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/parse/OfflineStore$20;

    invoke-direct {v1, p0, p2}, Lcom/parse/OfflineStore$20;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 857
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 859
    .local v0, "uuidsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$24;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/OfflineStore$24;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$23;

    invoke-direct {v2, p0, v0, p2}, Lcom/parse/OfflineStore$23;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    .line 872
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$22;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/OfflineStore$22;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    .line 885
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$21;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$21;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;)V

    .line 893
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 859
    return-object v1
.end method

.method private updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 999
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 1001
    .local v0, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 1003
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1006
    :goto_0
    return-object v1

    .line 1005
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1006
    new-instance v1, Lcom/parse/OfflineStore$27;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/OfflineStore$27;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 1005
    .end local v0    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateDataForObjectAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v6, Lcom/parse/OfflineStore$OfflineEncoder;

    invoke-direct {v6, p0, p3}, Lcom/parse/OfflineStore$OfflineEncoder;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    .line 1021
    .local v6, "encoder":Lcom/parse/OfflineStore$OfflineEncoder;
    invoke-virtual {p2, v6}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1023
    .local v3, "json":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lcom/parse/OfflineStore$OfflineEncoder;->whenFinished()Lbolts/Task;

    move-result-object v7

    new-instance v0, Lcom/parse/OfflineStore$28;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore$28;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lorg/json/JSONObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v7, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearDatabase(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;->clearDatabase(Landroid/content/Context;)V

    .line 1566
    return-void
.end method

.method countFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1363
    .local p2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/OfflineStore$45;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/parse/OfflineStore$45;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;->runWithManagedConnection(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method deleteDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$29;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$29;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method fetchLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    new-instance v0, Lcom/parse/OfflineStore$12;

    invoke-direct {v0, p0, p1}, Lcom/parse/OfflineStore$12;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;->runWithManagedConnection(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 13
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    new-instance v5, Lbolts/TaskCompletionSource;

    invoke-direct {v5}, Lbolts/TaskCompletionSource;-><init>()V

    .line 491
    .local v5, "tcs":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<TT;>;"
    iget-object v10, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 492
    :try_start_0
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 498
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbolts/Task;

    monitor-exit v10

    .line 626
    :goto_0
    return-object v9

    .line 506
    :cond_0
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v11

    invoke-virtual {v9, p1, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    iget-object v9, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbolts/Task;

    .line 509
    .local v7, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "objectId":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v9}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 519
    .local v2, "jsonStringTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 521
    if-nez v7, :cond_1

    .line 626
    :goto_1
    new-instance v9, Lcom/parse/OfflineStore$11;

    invoke-direct {v9, p0, p2, p1}, Lcom/parse/OfflineStore$11;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v9}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    new-instance v10, Lcom/parse/OfflineStore$10;

    invoke-direct {v10, p0, v5, p1}, Lcom/parse/OfflineStore$10;-><init>(Lcom/parse/OfflineStore;Lbolts/TaskCompletionSource;Lcom/parse/ParseObject;)V

    .line 674
    invoke-virtual {v9, v10}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    goto :goto_0

    .line 509
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "jsonStringTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v7    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 536
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v2    # "jsonStringTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    .restart local v3    # "objectId":Ljava/lang/String;
    .restart local v7    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :cond_1
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "json"

    aput-object v10, v4, v9

    .line 537
    .local v4, "select":[Ljava/lang/String;
    const-string v8, "uuid = ?"

    .line 538
    .local v8, "where":Ljava/lang/String;
    new-instance v6, Lbolts/Capture;

    invoke-direct {v6}, Lbolts/Capture;-><init>()V

    .line 539
    .local v6, "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    new-instance v9, Lcom/parse/OfflineStore$8;

    invoke-direct {v9, p0, v6, p2, v4}, Lcom/parse/OfflineStore$8;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;[Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    new-instance v10, Lcom/parse/OfflineStore$7;

    invoke-direct {v10, p0, v6}, Lcom/parse/OfflineStore$7;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;)V

    .line 546
    invoke-virtual {v9, v10}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 561
    goto :goto_1

    .line 563
    .end local v4    # "select":[Ljava/lang/String;
    .end local v6    # "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    .end local v8    # "where":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 568
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "This object must have already been fetched from the local datastore, but isn\'t marked as fetched."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 570
    iget-object v10, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 572
    :try_start_2
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 574
    invoke-virtual {v5}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v9

    goto :goto_0

    .line 573
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 583
    :cond_3
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "json"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "uuid"

    aput-object v10, v4, v9

    .line 584
    .restart local v4    # "select":[Ljava/lang/String;
    const-string v9, "%s = ? AND %s = ?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "className"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "objectId"

    aput-object v12, v10, v11

    .line 585
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 587
    .restart local v8    # "where":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v0, v9

    const/4 v9, 0x1

    aput-object v3, v0, v9

    .line 588
    .local v0, "args":[Ljava/lang/String;
    const-string v9, "ParseObjects"

    .line 589
    invoke-virtual {p2, v9, v4, v8, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v9

    new-instance v10, Lcom/parse/OfflineStore$9;

    invoke-direct {v10, p0, p1}, Lcom/parse/OfflineStore$9;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v9, v10}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto/16 :goto_1
.end method

.method findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 6
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .param p4, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "query":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method findFromPinAsync(Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1331
    .local p2, "state":Lcom/parse/ParseQuery$State;, "Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/OfflineStore$43;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/parse/OfflineStore$43;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;->runWithManagedConnection(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 1439
    if-nez p2, :cond_0

    .line 1440
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "objectId cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1443
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1445
    .local v0, "classNameAndObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1446
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v1, v0}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    monitor-exit v2

    return-object v1

    .line 1447
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "includeChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1210
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/parse/OfflineStore$37;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/parse/OfflineStore$37;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;->runWithManagedTransaction(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method registerNewObject(Lcom/parse/ParseObject;)V
    .locals 5
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 1413
    iget-object v4, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1414
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 1415
    .local v2, "objectId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1416
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1418
    .local v1, "classNameAndObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v3, v1, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1420
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classNameAndObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    monitor-exit v4

    .line 1421
    return-void

    .line 1420
    .end local v2    # "objectId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 1553
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1554
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/parse/WeakValueHashMap;->clear()V

    .line 1555
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1556
    iget-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/parse/WeakValueHashMap;->clear()V

    .line 1557
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1558
    monitor-exit v1

    .line 1559
    return-void

    .line 1558
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unpinAllObjectsAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1306
    new-instance v0, Lcom/parse/OfflineStore$41;

    invoke-direct {v0, p0, p1}, Lcom/parse/OfflineStore$41;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;->runWithManagedTransaction(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lcom/parse/OfflineStore$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/parse/OfflineStore$39;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/parse/OfflineStore;->runWithManagedTransaction(Lcom/parse/OfflineStore$SQLiteDatabaseCallable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method unregisterObject(Lcom/parse/ParseObject;)V
    .locals 4
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 1424
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1425
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "objectId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1427
    iget-object v1, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/parse/WeakValueHashMap;->remove(Ljava/lang/Object;)V

    .line 1429
    :cond_0
    monitor-exit v2

    .line 1430
    return-void

    .line 1429
    .end local v0    # "objectId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 4
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 945
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 946
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 947
    .local v0, "fetched":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    if-nez v0, :cond_0

    .line 948
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "An object cannot be updated if it wasn\'t fetched."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 952
    :goto_0
    return-object v1

    .line 951
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    new-instance v1, Lcom/parse/OfflineStore$26;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$26;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 951
    .end local v0    # "fetched":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "oldObjectId"    # Ljava/lang/String;
    .param p3, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1455
    if-eqz p2, :cond_2

    .line 1456
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1488
    :goto_0
    return-void

    .line 1463
    :cond_0
    instance-of v3, p1, Lcom/parse/ParseInstallation;

    if-eqz v3, :cond_1

    if-nez p3, :cond_1

    .line 1465
    iget-object v4, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1466
    :try_start_0
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/parse/WeakValueHashMap;->remove(Ljava/lang/Object;)V

    .line 1467
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1470
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "objectIds cannot be changed in offline mode."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1474
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1475
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1477
    .local v1, "classNameAndNewObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1479
    :try_start_1
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v3, v1}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 1480
    .local v2, "existing":Lcom/parse/ParseObject;
    if-eqz v2, :cond_3

    if-eq v2, p1, :cond_3

    .line 1481
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Attempted to change an objectId to one that\'s already known to the Offline Store."

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1487
    .end local v2    # "existing":Lcom/parse/ParseObject;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    .line 1486
    .restart local v2    # "existing":Lcom/parse/ParseObject;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v3, v1, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1487
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0
.end method
