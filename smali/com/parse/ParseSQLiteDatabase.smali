.class Lcom/parse/ParseSQLiteDatabase;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"


# static fields
.field private static final dbExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field private current:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLock:Ljava/lang/Object;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private openFlags:I

.field private final tcs:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 39
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseSQLiteDatabase;->taskQueue:Lcom/parse/TaskQueue;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    .line 54
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->tcs:Lbolts/TaskCompletionSource;

    .line 64
    iput p1, p0, Lcom/parse/ParseSQLiteDatabase;->openFlags:I

    .line 66
    sget-object v0, Lcom/parse/ParseSQLiteDatabase;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$2;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/ParseSQLiteDatabase;Lbolts/Task;)Lbolts/Task;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseSQLiteDatabase;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parse/ParseSQLiteDatabase;)Lbolts/TaskCompletionSource;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->tcs:Lbolts/TaskCompletionSource;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseSQLiteDatabase;
    .param p1, "x1"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parse/ParseSQLiteDatabase;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 23
    iget v0, p0, Lcom/parse/ParseSQLiteDatabase;->openFlags:I

    return v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static openDatabaseAsync(Landroid/database/sqlite/SQLiteOpenHelper;I)Lbolts/Task;
    .locals 3
    .param p0, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            "I)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {v0, p1}, Lcom/parse/ParseSQLiteDatabase;-><init>(I)V

    .line 43
    .local v0, "db":Lcom/parse/ParseSQLiteDatabase;
    invoke-virtual {v0, p0}, Lcom/parse/ParseSQLiteDatabase;->open(Landroid/database/sqlite/SQLiteOpenHelper;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$1;

    invoke-direct {v2, v0}, Lcom/parse/ParseSQLiteDatabase$1;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public beginTransactionAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$7;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$7;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 142
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$8;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$8;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$13;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$13;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 216
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$14;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$14;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$24;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/parse/ParseSQLiteDatabase$24;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v4, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 344
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 345
    new-instance v1, Lcom/parse/ParseSQLiteDatabase$25;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$25;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 345
    return-object v1

    .line 352
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endTransactionAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$11;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$11;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 189
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$12;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$12;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lbolts/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$20;

    invoke-direct {v3, p0, p1, p2}, Lcom/parse/ParseSQLiteDatabase$20;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object v4, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 297
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 298
    new-instance v1, Lcom/parse/ParseSQLiteDatabase$21;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$21;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 298
    return-object v1

    .line 305
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)Lbolts/Task;
    .locals 5
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "conflictAlgorithm"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$18;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/parse/ParseSQLiteDatabase$18;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;I)V

    sget-object v4, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 274
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Long;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 275
    new-instance v1, Lcom/parse/ParseSQLiteDatabase$19;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$19;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 275
    return-object v1

    .line 282
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOpenAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$4;

    invoke-direct {v3, p0}, Lcom/parse/ParseSQLiteDatabase$4;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 98
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 99
    monitor-exit v2

    return-object v0

    .line 100
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReadOnlyAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$3;

    invoke-direct {v3, p0}, Lcom/parse/ParseSQLiteDatabase$3;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 85
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 86
    monitor-exit v2

    return-object v0

    .line 87
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method open(Landroid/database/sqlite/SQLiteOpenHelper;)Lbolts/Task;
    .locals 4
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$6;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseSQLiteDatabase$6;-><init>(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteOpenHelper;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$5;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$5;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 118
    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 125
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "select"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v7, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v7

    .line 234
    :try_start_0
    iget-object v8, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v0, Lcom/parse/ParseSQLiteDatabase$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteDatabase$16;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v8, v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$15;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$15;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 239
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v6

    .line 250
    .local v6, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {v6}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 251
    new-instance v0, Lcom/parse/ParseSQLiteDatabase$17;

    invoke-direct {v0, p0}, Lcom/parse/ParseSQLiteDatabase$17;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v6, v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 258
    .end local v6    # "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
    .locals 5
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v2

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$27;

    invoke-direct {v3, p0, p1, p2}, Lcom/parse/ParseSQLiteDatabase$27;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v4, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseSQLiteDatabase$26;

    invoke-direct {v3, p0}, Lcom/parse/ParseSQLiteDatabase$26;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v4, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    .line 367
    invoke-virtual {v1, v3, v4}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 377
    .local v0, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 378
    new-instance v1, Lcom/parse/ParseSQLiteDatabase$28;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$28;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 385
    .end local v0    # "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setTransactionSuccessfulAsync()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$9;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$9;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 165
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$10;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
    .locals 9
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    iget-object v7, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v7

    .line 315
    :try_start_0
    iget-object v8, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    new-instance v0, Lcom/parse/ParseSQLiteDatabase$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteDatabase$22;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v8, v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v6

    .line 321
    .local v6, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;

    .line 322
    new-instance v0, Lcom/parse/ParseSQLiteDatabase$23;

    invoke-direct {v0, p0}, Lcom/parse/ParseSQLiteDatabase$23;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v6, v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    monitor-exit v7

    return-object v0

    .line 329
    .end local v6    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
