.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseObject$State;
    }
.end annotation


# static fields
.field private static final AUTO_CLASS_NAME:Ljava/lang/String; = "_Automatic"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PIN:Ljava/lang/String; = "_default"

.field private static final KEY_ACL:Ljava/lang/String; = "ACL"

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final KEY_COMPLETE:Ljava/lang/String; = "__complete"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "createdAt"

.field static final KEY_IS_DELETING_EVENTUALLY:Ljava/lang/String; = "__isDeletingEventually"

.field private static final KEY_IS_DELETING_EVENTUALLY_OLD:Ljava/lang/String; = "isDeletingEventually"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final KEY_OPERATIONS:Ljava/lang/String; = "__operations"

.field private static final KEY_SELECTED_KEYS:Ljava/lang/String; = "__selectedKeys"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updatedAt"

.field private static final NEW_OFFLINE_OBJECT_ID_PLACEHOLDER:Ljava/lang/String; = "*** Offline Object ***"

.field private static final TAG:Ljava/lang/String; = "ParseObject"

.field static final VERSION_NAME:Ljava/lang/String; = "1.16.7"

.field private static final isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field isDeleted:Z

.field isDeleting:Z

.field isDeletingEventually:I

.field private ldsEnabledWhenParceling:Z

.field localId:Ljava/lang/String;

.field final mutex:Ljava/lang/Object;

.field final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private state:Lcom/parse/ParseObject$State;

.field final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 394
    new-instance v0, Lcom/parse/ParseObject$1;

    invoke-direct {v0}, Lcom/parse/ParseObject$1;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    .line 4317
    new-instance v0, Lcom/parse/ParseObject$52;

    invoke-direct {v0}, Lcom/parse/ParseObject$52;-><init>()V

    sput-object v0, Lcom/parse/ParseObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 416
    const-string v0, "_Automatic"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    .line 377
    new-instance v3, Lcom/parse/TaskQueue;

    invoke-direct {v3}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    .line 386
    new-instance v3, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v3}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 435
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    .local v1, "objectIdForPointer":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 438
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must specify a Parse class name when creating a new ParseObject."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 441
    :cond_0
    const-string v3, "_Automatic"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 442
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 446
    :cond_1
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/parse/ParseObjectSubclassingController;->isSubclassValid(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 447
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "You must create this type of ParseObject using ParseObject.create() or the proper subclass."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 451
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 452
    iget-object v3, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v4, Lcom/parse/ParseOperationSet;

    invoke-direct {v4}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 453
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 455
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    .line 457
    .local v0, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    if-nez v1, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/parse/ParseObject;->setDefaultValues()V

    .line 459
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 467
    :goto_0
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v3

    iput-object v3, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 469
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 470
    .local v2, "store":Lcom/parse/OfflineStore;
    if-eqz v2, :cond_3

    .line 471
    invoke-virtual {v2, p0}, Lcom/parse/OfflineStore;->registerNewObject(Lcom/parse/ParseObject;)V

    .line 473
    :cond_3
    return-void

    .line 461
    .end local v2    # "store":Lcom/parse/OfflineStore;
    :cond_4
    const-string v3, "*** Offline Object ***"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 462
    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    .line 464
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/parse/ParseObject;)Lcom/parse/ParseObject$State;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseObject;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseObject;->deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1500(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;
    .param p3, "x3"    # Ljava/util/Set;
    .param p4, "x4"    # Ljava/util/Set;

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/parse/ParseObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/parse/ParseUser;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lbolts/Task;

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/parse/ParseObjectController;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    return-object v0
.end method

.method private applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V
    .locals 6
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2916
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2917
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 2918
    .local v3, "operation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2919
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-interface {v3, v2, v0}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2920
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2921
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2923
    :cond_0
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2926
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v2    # "oldValue":Ljava/lang/Object;
    .end local v3    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_1
    return-void
.end method

.method private canBeSerialized()Z
    .locals 4

    .prologue
    .line 2471
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2472
    :try_start_0
    new-instance v0, Lbolts/Capture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2478
    .local v0, "result":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/parse/ParseObject$38;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$38;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;)V

    const/4 v3, 0x0

    .line 2498
    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$38;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2500
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2501
    .end local v0    # "result":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3596
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3597
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ParseObject has no data for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Call fetchIfNeeded() to get the data."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3600
    :cond_0
    return-void
.end method

.method private checkKeyIsMutable(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3140
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isKeyMutable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot modify `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` property of an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3142
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3144
    :cond_0
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2462
    .local p1, "dirtyChildren":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseFile;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    .line 2465
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p1, "dirtyChildren":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/parse/ParseFile;>;"
    .local p3, "alreadySeen":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    .local p4, "alreadySeenNew":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$37;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/parse/ParseObject$37;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v1, 0x1

    .line 2453
    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$37;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2454
    return-void
.end method

.method private collectFetchedObjects()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 895
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 896
    .local v0, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$4;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$4;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;)V

    .line 909
    .local v1, "traverser":Lcom/parse/ParseTraverser;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 910
    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->newInstance(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static createFromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseObject;
    .locals 11
    .param p0, "source"    # Landroid/os/Parcel;
    .param p1, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    const/4 v6, 0x1

    .line 4330
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4331
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-ne v9, v6, :cond_3

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4334
    .local v4, "objectId":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v4}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v3

    .line 4335
    .local v3, "object":Lcom/parse/ParseObject;
    instance-of v9, p1, Lcom/parse/ParseObjectParcelDecoder;

    if-eqz v9, :cond_0

    move-object v9, p1

    .line 4336
    check-cast v9, Lcom/parse/ParseObjectParcelDecoder;

    invoke-virtual {v9, v3}, Lcom/parse/ParseObjectParcelDecoder;->addKnownObject(Lcom/parse/ParseObject;)V

    .line 4338
    :cond_0
    invoke-static {p0, p1}, Lcom/parse/ParseObject$State;->createFromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseObject$State;

    move-result-object v8

    .line 4339
    .local v8, "state":Lcom/parse/ParseObject$State;
    invoke-virtual {v3, v8}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 4340
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-ne v9, v6, :cond_1

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v3, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 4341
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-ne v9, v6, :cond_2

    iput-boolean v6, v3, Lcom/parse/ParseObject;->isDeleted:Z

    .line 4344
    :cond_2
    iget-boolean v9, v3, Lcom/parse/ParseObject;->ldsEnabledWhenParceling:Z

    if-nez v9, :cond_4

    .line 4345
    .local v6, "restoreOperations":Z
    :goto_1
    invoke-static {p0, p1}, Lcom/parse/ParseOperationSet;->fromParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)Lcom/parse/ParseOperationSet;

    move-result-object v7

    .line 4346
    .local v7, "set":Lcom/parse/ParseOperationSet;
    if-eqz v6, :cond_5

    .line 4347
    invoke-virtual {v7}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4348
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v7, v2}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseFieldOperation;

    .line 4349
    .local v5, "op":Lcom/parse/ParseFieldOperation;
    invoke-virtual {v3, v2, v5}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_2

    .line 4331
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "object":Lcom/parse/ParseObject;
    .end local v4    # "objectId":Ljava/lang/String;
    .end local v5    # "op":Lcom/parse/ParseFieldOperation;
    .end local v6    # "restoreOperations":Z
    .end local v7    # "set":Lcom/parse/ParseOperationSet;
    .end local v8    # "state":Lcom/parse/ParseObject$State;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 4344
    .restart local v3    # "object":Lcom/parse/ParseObject;
    .restart local v4    # "objectId":Ljava/lang/String;
    .restart local v8    # "state":Lcom/parse/ParseObject$State;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 4352
    .restart local v6    # "restoreOperations":Z
    .restart local v7    # "set":Lcom/parse/ParseOperationSet;
    :cond_5
    const-class v9, Lcom/parse/ParseObject;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 4353
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v3, v0}, Lcom/parse/ParseObject;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 4354
    return-object v3
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 561
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 6
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 514
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 516
    .local v2, "store":Lcom/parse/OfflineStore;
    if-nez p1, :cond_1

    .line 517
    :try_start_0
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    const-string v4, "*** Offline Object ***"

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 521
    :goto_0
    const/4 v1, 0x0

    .line 522
    .local v1, "object":Lcom/parse/ParseObject;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {v2, p0, p1}, Lcom/parse/OfflineStore;->getObject(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 526
    :cond_0
    if-nez v1, :cond_2

    .line 527
    invoke-static {p0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 528
    invoke-virtual {v1}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 529
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "A ParseObject subclass default constructor must not make changes to the object that cause it to be dirty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .end local v1    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    sget-object v4, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v3

    .line 519
    :cond_1
    :try_start_2
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 540
    :catch_1
    move-exception v0

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create instance of subclass."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "object":Lcom/parse/ParseObject;
    :cond_2
    sget-object v3, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 536
    return-object v1
.end method

.method private currentOperations()Lcom/parse/ParseOperationSet;
    .locals 2

    .prologue
    .line 2907
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2908
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    monitor-exit v1

    return-object v0

    .line 2909
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private currentSaveEventuallyCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 3
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .param p2, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 1341
    .local v2, "state":Lcom/parse/ParseObject$State;
    invoke-virtual {p0, v2, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1343
    .local v1, "objectJSON":Lorg/json/JSONObject;
    invoke-static {v2, v1, p3}, Lcom/parse/ParseRESTObjectCommand;->saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1347
    .local v0, "command":Lcom/parse/ParseRESTObjectCommand;
    return-object v0
.end method

.method private static deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 19
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2510
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2511
    .local v8, "objects":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseObject;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2512
    .local v4, "files":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseFile;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v8, v4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 2517
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 2518
    .local v13, "users":Ljava/util/Set;, "Ljava/util/Set<Lcom/parse/ParseUser;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/parse/ParseObject;

    .line 2519
    .local v7, "o":Lcom/parse/ParseObject;
    instance-of v0, v7, Lcom/parse/ParseUser;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v12, v7

    .line 2520
    check-cast v12, Lcom/parse/ParseUser;

    .line 2521
    .local v12, "user":Lcom/parse/ParseUser;
    invoke-virtual {v12}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2522
    check-cast v7, Lcom/parse/ParseUser;

    .end local v7    # "o":Lcom/parse/ParseObject;
    invoke-interface {v13, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2526
    .end local v12    # "user":Lcom/parse/ParseUser;
    :cond_1
    invoke-interface {v8, v13}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 2529
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2530
    .local v5, "filesComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2531
    .local v11, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFile;

    .line 2532
    .local v3, "file":Lcom/parse/ParseFile;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v3, v0, v1, v2}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2534
    .end local v3    # "file":Lcom/parse/ParseFile;
    :cond_2
    invoke-static {v11}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v16

    new-instance v17, Lcom/parse/ParseObject$39;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/parse/ParseObject$39;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v16 .. v17}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    .line 2543
    .local v6, "filesTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 2544
    .local v14, "usersComplete":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2545
    .restart local v11    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseUser;

    .line 2546
    .restart local v12    # "user":Lcom/parse/ParseUser;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2548
    .end local v12    # "user":Lcom/parse/ParseUser;
    :cond_3
    invoke-static {v11}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v16

    new-instance v17, Lcom/parse/ParseObject$40;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Lcom/parse/ParseObject$40;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual/range {v16 .. v17}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v15

    .line 2556
    .local v15, "usersTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v10, Lbolts/Capture;

    invoke-direct {v10, v8}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2557
    .local v10, "remaining":Lbolts/Capture;, "Lbolts/Capture<Ljava/util/Set<Lcom/parse/ParseObject;>;>;"
    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v16

    new-instance v17, Lcom/parse/ParseObject$41;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Lcom/parse/ParseObject$41;-><init>(Lbolts/Capture;)V

    new-instance v18, Lcom/parse/ParseObject$42;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v5, v14, v1}, Lcom/parse/ParseObject$42;-><init>(Lbolts/Capture;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v18}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    .line 2599
    .local v9, "objectsTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [Lbolts/Task;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v6, v16, v17

    const/16 v17, 0x1

    aput-object v15, v16, v17

    const/16 v17, 0x2

    aput-object v9, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v16

    return-object v16
.end method

.method public static deleteAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2335
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2336
    return-void
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2266
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2267
    const/4 v5, 0x0

    invoke-static {v5}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    .line 2282
    :goto_0
    return-object v5

    .line 2271
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 2272
    .local v3, "objectCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2273
    .local v4, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2274
    .local v1, "idSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 2275
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 2276
    .local v2, "obj":Lcom/parse/ParseObject;
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2277
    invoke-virtual {v2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2278
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2274
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2282
    .end local v2    # "obj":Lcom/parse/ParseObject;
    :cond_2
    new-instance v5, Lcom/parse/ParseObject$34;

    invoke-direct {v5, v4, p1}, Lcom/parse/ParseObject$34;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    goto :goto_0
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
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

    .prologue
    .line 2292
    .local p0, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$35;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$35;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2361
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$36;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$36;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2348
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2349
    return-void
.end method

.method private deleteAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .prologue
    .line 2156
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 2158
    new-instance v0, Lcom/parse/ParseObject$31;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$31;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$30;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$30;-><init>(Lcom/parse/ParseObject;)V

    .line 2167
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$29;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$29;-><init>(Lcom/parse/ParseObject;)V

    .line 2172
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 2158
    return-object v0
.end method

.method static enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<TT;>;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 586
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/parse/ParseObject;>;"
    .local p1, "taskStart":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<TT;>;>;"
    new-instance v6, Lbolts/TaskCompletionSource;

    invoke-direct {v6}, Lbolts/TaskCompletionSource;-><init>()V

    .line 593
    .local v6, "readyToStart":Lbolts/TaskCompletionSource;, "Lbolts/TaskCompletionSource<Ljava/lang/Void;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v4, "locks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/locks/Lock;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 595
    .local v5, "obj":Lcom/parse/ParseObject;
    iget-object v8, v5, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    invoke-virtual {v8}, Lcom/parse/TaskQueue;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 597
    .end local v5    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v3, Lcom/parse/LockSet;

    invoke-direct {v3, v4}, Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V

    .line 599
    .local v3, "lock":Lcom/parse/LockSet;
    invoke-virtual {v3}, Lcom/parse/LockSet;->lock()V

    .line 606
    :try_start_0
    invoke-virtual {v6}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v7

    invoke-interface {p1, v7}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    .local v2, "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 615
    .local v0, "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseObject;

    .line 616
    .restart local v5    # "obj":Lcom/parse/ParseObject;
    iget-object v8, v5, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v9, Lcom/parse/ParseObject$2;

    invoke-direct {v9, v0, v2}, Lcom/parse/ParseObject$2;-><init>(Ljava/util/List;Lbolts/Task;)V

    invoke-virtual {v8, v9}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 635
    .end local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .end local v2    # "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .end local v5    # "obj":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Lcom/parse/LockSet;->unlock()V

    throw v7

    .line 607
    :catch_0
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 609
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 626
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .restart local v2    # "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_1
    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v7

    new-instance v8, Lcom/parse/ParseObject$3;

    invoke-direct {v8, v6}, Lcom/parse/ParseObject$3;-><init>(Lbolts/TaskCompletionSource;)V

    invoke-virtual {v7, v8}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 635
    invoke-virtual {v3}, Lcom/parse/LockSet;->unlock()V

    .line 633
    return-object v2
.end method

.method private enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1777
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1778
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should only be used to enqueue saveEventually operation sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$15;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$15;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2887
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;ZLbolts/Task;)Lbolts/Task;
    .locals 7
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "onlyIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Z",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2801
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 2802
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    .line 2831
    :goto_0
    return-object v5

    .line 2805
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2806
    .local v3, "objectIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2807
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 2808
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2812
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2813
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "All objects should have the same class"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2815
    :cond_3
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2817
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 2818
    .local v2, "objectId":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2819
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2820
    :cond_4
    if-nez p2, :cond_1

    .line 2821
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "All objects must exist on the server"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2825
    .end local v1    # "object":Lcom/parse/ParseObject;, "TT;"
    .end local v2    # "objectId":Ljava/lang/String;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 2826
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v5

    goto :goto_0

    .line 2829
    :cond_6
    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v5

    const-string v6, "objectId"

    .line 2830
    invoke-virtual {v5, v6, v3}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    move-result-object v4

    .line 2831
    .local v4, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    new-instance v5, Lcom/parse/ParseObject$48;

    invoke-direct {v5, v4, p1}, Lcom/parse/ParseObject$48;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p3, v5}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/ParseObject$47;

    invoke-direct {v6, p0, p2}, Lcom/parse/ParseObject$47;-><init>(Ljava/util/List;Z)V

    .line 2836
    invoke-virtual {v5, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    goto :goto_0
.end method

.method private static fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;
    .locals 2
    .param p1, "onlyIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2779
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$46;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$46;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2761
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2747
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2774
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2775
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2874
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2900
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2901
    return-void
.end method

.method static from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;
    .locals 4
    .param p0, "state"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseObject$State;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 649
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v3, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 652
    move-object v0, p0

    .line 656
    .local v0, "newState":Lcom/parse/ParseObject$State;
    :goto_0
    invoke-virtual {v1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    .line 657
    monitor-exit v3

    .line 658
    return-object v1

    .line 654
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :cond_0
    invoke-virtual {v1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .restart local v0    # "newState":Lcom/parse/ParseObject$State;
    goto :goto_0

    .line 657
    .end local v0    # "newState":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 6
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "defaultClassName"    # Ljava/lang/String;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 699
    const-string v5, "className"

    invoke-virtual {p0, v5, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 709
    :goto_0
    return-object v3

    .line 703
    :cond_0
    const-string v5, "objectId"

    invoke-virtual {p0, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, "objectId":Ljava/lang/String;
    const-string v5, "__selectedKeys"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v1, 0x1

    .line 706
    .local v1, "isComplete":Z
    :goto_1
    invoke-static {v0, v4}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v3

    .line 707
    .local v3, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v3}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    invoke-virtual {v3, v5, p0, p2, v1}, Lcom/parse/ParseObject;->mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 708
    .local v2, "newState":Lcom/parse/ParseObject$State;
    invoke-virtual {v3, v2}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V

    goto :goto_0

    .line 704
    .end local v1    # "isComplete":Z
    .end local v2    # "newState":Lcom/parse/ParseObject$State;
    .end local v3    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Lcom/parse/ParseDecoder;Ljava/util/Set;)Lcom/parse/ParseObject;
    .locals 3
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "defaultClassName"    # Ljava/lang/String;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseDecoder;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 676
    .local p3, "selectedKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 677
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 679
    .local v1, "keys":Lorg/json/JSONArray;
    :try_start_0
    const-string v2, "__selectedKeys"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    .end local v1    # "keys":Lorg/json/JSONArray;
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object v2

    return-object v2

    .line 680
    .restart local v1    # "keys":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static fromJSONPayload(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 730
    const-string v3, "className"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 738
    :cond_0
    :goto_0
    return-object v1

    .line 734
    :cond_1
    const-string v3, "objectId"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 736
    .local v2, "objectId":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 737
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseObject;->build(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto :goto_0
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 6
    .param p1, "mayCopy"    # Z

    .prologue
    .line 3484
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3485
    :try_start_0
    const-string v3, "ACL"

    invoke-direct {p0, v3}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3486
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3487
    .local v1, "acl":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 3488
    const/4 v2, 0x0

    monitor-exit v4

    .line 3498
    .end local v1    # "acl":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3490
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lcom/parse/ParseACL;

    if-nez v3, :cond_1

    .line 3491
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "only ACLs can be stored in the ACL key"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3499
    .end local v1    # "acl":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3493
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3494
    new-instance v2, Lcom/parse/ParseACL;

    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    invoke-direct {v2, v1}, Lcom/parse/ParseACL;-><init>(Lcom/parse/ParseACL;)V

    .line 3495
    .local v2, "copy":Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    monitor-exit v4

    goto :goto_0

    .line 3498
    .end local v2    # "copy":Lcom/parse/ParseACL;
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_0
.end method

.method private static getLocalIdManager()Lcom/parse/LocalIdManager;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    return-object v0
.end method

.method private static getObjectController()Lcom/parse/ParseObjectController;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private hasDirtyChildren()Z
    .locals 4

    .prologue
    .line 1212
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1216
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v0, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1218
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1219
    .end local v0    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "oldObjectId"    # Ljava/lang/String;
    .param p2, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1318
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1320
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1321
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 1322
    invoke-virtual {v0, p0, p1, p2}, Lcom/parse/OfflineStore;->updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1326
    invoke-static {}, Lcom/parse/ParseObject;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    invoke-virtual {v1, v3, p2}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1329
    :cond_1
    monitor-exit v2

    .line 1330
    return-void

    .line 1329
    .end local v0    # "store":Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static pinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3796
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3797
    return-void
.end method

.method public static pinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3853
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3854
    return-void
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
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
    .line 3711
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "includeAllChildren"    # Z
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
    .line 3716
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3717
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3721
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 3724
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 3725
    .local v0, "object":Lcom/parse/ParseObject;
    new-instance v3, Lcom/parse/ParseObject$49;

    invoke-direct {v3, v0}, Lcom/parse/ParseObject$49;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 3745
    goto :goto_0

    .line 3747
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_1
    new-instance v2, Lcom/parse/ParseObject$51;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseObject$51;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$50;

    invoke-direct {v3, p0, p1}, Lcom/parse/ParseObject$50;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 3755
    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 3747
    return-object v2
.end method

.method public static pinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3835
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3690
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3691
    return-void
.end method

.method public static pinAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3816
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3817
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 6

    .prologue
    .line 2932
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2933
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2934
    iget-object v2, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2935
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v5, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v5, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2940
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2937
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    .line 2938
    .local v1, "operations":Lcom/parse/ParseOperationSet;
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v1, v4}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    goto :goto_1

    .line 2940
    .end local v1    # "operations":Lcom/parse/ParseOperationSet;
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2941
    return-void
.end method

.method static registerParseSubclasses()V
    .locals 1

    .prologue
    .line 3645
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3646
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3647
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3648
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3650
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3651
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3652
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->registerSubclass(Ljava/lang/Class;)V

    .line 574
    return-void
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2662
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2663
    return-void
.end method

.method private static saveAllAsync(Ljava/util/List;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
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

    .prologue
    .line 2604
    .local p0, "uniqueObjects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$43;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$43;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2688
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$45;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$45;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$44;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$44;-><init>(Ljava/util/List;)V

    .line 2728
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 2688
    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2675
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2676
    return-void
.end method

.method private setState(Lcom/parse/ParseObject$State;Z)V
    .locals 4
    .param p1, "newState"    # Lcom/parse/ParseObject$State;
    .param p2, "notifyIfObjectIdChanges"    # Z

    .prologue
    .line 765
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 766
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "oldObjectId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "newObjectId":Ljava/lang/String;
    iput-object p1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 771
    if-eqz p2, :cond_0

    invoke-static {v1, v0}, Lcom/parse/ParseTextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 772
    invoke-direct {p0, v1, v0}, Lcom/parse/ParseObject;->notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 776
    monitor-exit v3

    .line 777
    return-void

    .line 776
    .end local v0    # "newObjectId":Ljava/lang/String;
    .end local v1    # "oldObjectId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unpinAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4043
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4044
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4006
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4007
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3911
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3912
    return-void
.end method

.method public static unpinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3957
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 3958
    return-void
.end method

.method public static unpinAllInBackground()Lbolts/Task;
    .locals 1
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
    .line 4031
    const-string v0, "_default"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
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
    .line 3985
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3986
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3989
    :cond_0
    if-nez p0, :cond_1

    .line 3990
    const-string p0, "_default"

    .line 3992
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
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
    .line 3887
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3888
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3891
    :cond_0
    if-nez p0, :cond_1

    .line 3892
    const-string p0, "_default"

    .line 3894
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/parse/OfflineStore;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3942
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 4019
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4020
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3971
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3972
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3870
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3871
    return-void
.end method

.method public static unpinAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3927
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3928
    return-void
.end method

.method static unregisterParseSubclasses()V
    .locals 1

    .prologue
    .line 3655
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3656
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3657
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3658
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3660
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3661
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->unregisterSubclass(Ljava/lang/Class;)V

    .line 3662
    return-void
.end method

.method static unregisterSubclass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/ParseObject;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseObjectSubclassingController;->unregisterSubclass(Ljava/lang/Class;)V

    .line 578
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3054
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3055
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3067
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 3068
    .local v0, "operation":Lcom/parse/ParseAddOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3069
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3095
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    .line 3096
    .local v0, "operation":Lcom/parse/ParseAddUniqueOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3097
    return-void
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 3081
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 3082
    return-void
.end method

.method build(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 927
    :try_start_0
    new-instance v7, Lcom/parse/ParseObject$State$Builder;

    iget-object v8, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-direct {v7, v8}, Lcom/parse/ParseObject$State$Builder;-><init>(Lcom/parse/ParseObject$State;)V

    const/4 v8, 0x1

    .line 928
    invoke-virtual {v7, v8}, Lcom/parse/ParseObject$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State$Builder;

    .line 930
    .local v0, "builder":Lcom/parse/ParseObject$State$Builder;
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->clear()Lcom/parse/ParseObject$State$Init;

    .line 932
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 933
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 934
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 938
    .local v3, "key":Ljava/lang/String;
    const-string v7, "className"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 941
    const-string v7, "objectId"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 942
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 943
    .local v5, "newObjectId":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/parse/ParseObject$State$Builder;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 966
    .end local v0    # "builder":Lcom/parse/ParseObject$State$Builder;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "newObjectId":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 967
    .local v2, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 946
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v0    # "builder":Lcom/parse/ParseObject$State$Builder;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :try_start_1
    const-string v7, "createdAt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 947
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/parse/ParseObject$State$Builder;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 950
    :cond_2
    const-string v7, "updatedAt"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 951
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v7

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/parse/ParseObject$State$Builder;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    .line 955
    :cond_3
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 956
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {p2, v6}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 957
    .local v1, "decodedObject":Ljava/lang/Object;
    instance-of v7, v1, Lcom/parse/ParseFieldOperation;

    if-eqz v7, :cond_4

    .line 958
    check-cast v1, Lcom/parse/ParseFieldOperation;

    .end local v1    # "decodedObject":Ljava/lang/Object;
    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 961
    .restart local v1    # "decodedObject":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p0, v3, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 965
    .end local v1    # "decodedObject":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->build()Lcom/parse/ParseObject$State;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3158
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3159
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 5
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 833
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 834
    :try_start_0
    iget-object v2, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    .line 835
    .local v1, "operations":Lcom/parse/ParseOperationSet;
    invoke-virtual {v1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 836
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 838
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "operations":Lcom/parse/ParseOperationSet;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    return-void
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2247
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 2248
    return-void
.end method

.method deleteAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2184
    invoke-static {}, Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/parse/ParseObjectController;->deleteAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteEventually()Lbolts/Task;
    .locals 7
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
    .line 1867
    iget-object v6, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 1868
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1869
    iget v5, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1871
    const/4 v2, 0x0

    .line 1872
    .local v2, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1873
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v2

    .line 1877
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 1881
    .local v4, "sessionToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    .line 1880
    invoke-static {v5, v4}, Lcom/parse/ParseRESTObjectCommand;->deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1882
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1884
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v5

    invoke-virtual {v5, v0, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v3

    .line 1885
    .local v3, "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1888
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1890
    invoke-virtual {v3}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    .line 1900
    .local v1, "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object v1

    .line 1885
    .end local v0    # "command":Lcom/parse/ParseRESTCommand;
    .end local v1    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    .end local v4    # "sessionToken":Ljava/lang/String;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1892
    .restart local v0    # "command":Lcom/parse/ParseRESTCommand;
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    .restart local v4    # "sessionToken":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/parse/ParseObject$17;

    invoke-direct {v5, p0}, Lcom/parse/ParseObject$17;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0
.end method

.method public final deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1847
    return-void
.end method

.method public final deleteInBackground()Lbolts/Task;
    .locals 2
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
    .line 2226
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$33;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$33;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 2258
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2259
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 4255
    const/4 v0, 0x0

    return v0
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2033
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2039
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseObject$26;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseObject$26;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$25;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$25;-><init>(Lcom/parse/ParseObject;)V

    .line 2051
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$24;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$24;-><init>(Lcom/parse/ParseObject;)V

    .line 2057
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 2039
    return-object v0
.end method

.method public fetchFromLocalDatastore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4077
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4078
    return-void
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4053
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4054
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4057
    :cond_0
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastoreInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4066
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 4067
    return-void
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2135
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public final fetchIfNeededInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2105
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2106
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 2108
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$28;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$28;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public final fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2147
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2148
    return-void
.end method

.method public final fetchInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2072
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$27;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$27;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2094
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2095
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3577
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 3578
    :try_start_0
    const-string v2, "ACL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3579
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    monitor-exit v3

    .line 3591
    :goto_0
    return-object v1

    .line 3582
    :cond_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3583
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3587
    .local v1, "value":Ljava/lang/Object;
    instance-of v2, v1, Lcom/parse/ParseRelation;

    if-eqz v2, :cond_1

    .line 3588
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v2, v0

    invoke-virtual {v2, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3591
    :cond_1
    monitor-exit v3

    goto :goto_0

    .line 3592
    .end local v1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 3480
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3359
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3360
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3361
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3362
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3363
    const/4 v1, 0x0

    monitor-exit v2

    .line 3365
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 3366
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3190
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3191
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3192
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3193
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-nez v1, :cond_0

    .line 3194
    const/4 v0, 0x0

    monitor-exit v2

    .line 3197
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [B

    monitor-exit v2

    goto :goto_0

    .line 3198
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 783
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 784
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v0

    .line 811
    .local v0, "createdAt":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3377
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3378
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3379
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3380
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 3381
    const/4 v0, 0x0

    monitor-exit v2

    .line 3383
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/Date;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3384
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3329
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3330
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3331
    const-wide/16 v2, 0x0

    .line 3333
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3314
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3315
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3316
    const/4 v1, 0x0

    .line 3318
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3227
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3228
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3229
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3231
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 3232
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerOrLocalIdEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3235
    :cond_0
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    .line 3236
    const/4 v0, 0x0

    monitor-exit v2

    .line 3238
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3239
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3290
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3291
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3292
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3294
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3295
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/PointerOrLocalIdEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3298
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 3299
    const/4 v0, 0x0

    monitor-exit v2

    .line 3302
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3303
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3251
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3252
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3253
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/List;

    if-nez v3, :cond_0

    .line 3254
    const/4 v1, 0x0

    monitor-exit v4

    .line 3258
    :goto_0
    return-object v1

    .line 3257
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 3258
    .local v1, "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v4

    goto :goto_0

    .line 3259
    .end local v1    # "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3344
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3345
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3346
    const-wide/16 v2, 0x0

    .line 3348
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 3271
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3272
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 3273
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/Map;

    if-nez v3, :cond_0

    .line 3274
    const/4 v1, 0x0

    monitor-exit v4

    .line 3278
    :goto_0
    return-object v1

    .line 3277
    :cond_0
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 3278
    .local v1, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    monitor-exit v4

    goto :goto_0

    .line 3279
    .end local v1    # "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3209
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3210
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3211
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3212
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    .line 3213
    const/4 v0, 0x0

    monitor-exit v2

    .line 3215
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3216
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1277
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOrCreateLocalId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1306
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1313
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1310
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/parse/ParseObject;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3433
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3434
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 3435
    const/4 v0, 0x0

    .line 3437
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseFile;

    goto :goto_0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3448
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3449
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3450
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3451
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-nez v1, :cond_0

    .line 3452
    const/4 v0, 0x0

    monitor-exit v2

    .line 3454
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3455
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3398
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3399
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 3400
    const/4 v0, 0x0

    .line 3402
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParsePolygon(Ljava/lang/String;)Lcom/parse/ParsePolygon;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3466
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3467
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3468
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3469
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParsePolygon;

    if-nez v1, :cond_0

    .line 3470
    const/4 v0, 0x0

    monitor-exit v2

    .line 3472
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParsePolygon;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3473
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3416
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3417
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 3418
    const/4 v0, 0x0

    .line 3420
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3544
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3546
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3547
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/parse/ParseRelation;

    if-eqz v4, :cond_0

    .line 3549
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v1, v0

    .line 3550
    .local v1, "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3551
    monitor-exit v5

    move-object v2, v1

    .line 3563
    .end local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local v2, "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    :goto_0
    return-object v2

    .line 3553
    .end local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseRelation;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3562
    .restart local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3563
    monitor-exit v5

    move-object v2, v1

    .restart local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    goto :goto_0

    .line 3565
    .end local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getState()Lcom/parse/ParseObject$State;
    .locals 2

    .prologue
    .line 748
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 749
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    monitor-exit v1

    return-object v0

    .line 750
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3172
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3173
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3174
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3175
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3176
    const/4 v0, 0x0

    monitor-exit v2

    .line 3178
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3179
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 4

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v0

    .line 797
    .local v0, "updatedAt":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method handleDeleteEventuallyResultAsync()Lbolts/Task;
    .locals 3
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
    .line 1909
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1910
    :try_start_0
    iget v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1911
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1912
    invoke-virtual {p0}, Lcom/parse/ParseObject;->handleDeleteResultAsync()Lbolts/Task;

    move-result-object v0

    .line 1914
    .local v0, "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parse/ParseObject$18;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$18;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 1911
    .end local v0    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method handleDeleteResultAsync()Lbolts/Task;
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
    .line 2193
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 2195
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2196
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/parse/ParseObject;->isDeleted:Z

    .line 2197
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2199
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 2200
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 2201
    new-instance v2, Lcom/parse/ParseObject$32;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$32;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 2216
    :cond_0
    return-object v1

    .line 2197
    .end local v0    # "store":Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;
    .locals 4
    .param p1, "result"    # Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1930
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 1936
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1937
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_0

    .line 1938
    new-instance v2, Lcom/parse/ParseObject$20;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$20;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$19;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$19;-><init>(Lcom/parse/ParseObject;)V

    .line 1943
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1956
    :cond_0
    new-instance v2, Lcom/parse/ParseObject$21;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseObject$21;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1974
    if-eqz v0, :cond_1

    .line 1975
    new-instance v2, Lcom/parse/ParseObject$23;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$23;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$22;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$22;-><init>(Lcom/parse/ParseObject;)V

    .line 1980
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .line 1993
    :cond_1
    return-object v1
.end method

.method handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1805
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 1806
    .local v1, "success":Z
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 1808
    .local v0, "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v2, Lcom/parse/ParseObject$16;

    invoke-direct {v2, p0, v1}, Lcom/parse/ParseObject$16;-><init>(Lcom/parse/ParseObject;Z)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1805
    .end local v0    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v1    # "success":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 9
    .param p1, "result"    # Lcom/parse/ParseObject$State;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1419
    const/4 v6, 0x0

    invoke-static {v6}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1421
    .local v4, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1422
    .local v3, "success":Z
    :goto_0
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 1425
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 1426
    invoke-virtual {v8, p2}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 1427
    .local v1, "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 1428
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 1430
    if-nez v3, :cond_1

    .line 1432
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 1433
    .local v0, "nextOperation":Lcom/parse/ParseOperationSet;
    invoke-virtual {v0, p2}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1434
    monitor-exit v7

    move-object v5, v4

    .line 1491
    .end local v0    # "nextOperation":Lcom/parse/ParseOperationSet;
    .end local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .local v5, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_1
    return-object v5

    .line 1421
    .end local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .end local v3    # "success":Z
    .end local v5    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1436
    .restart local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .restart local v3    # "success":Z
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    invoke-static {}, Lcom/parse/Parse;->getLocalDatastore()Lcom/parse/OfflineStore;

    move-result-object v2

    .line 1443
    .local v2, "store":Lcom/parse/OfflineStore;
    if-eqz v2, :cond_2

    .line 1444
    new-instance v6, Lcom/parse/ParseObject$5;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1453
    :cond_2
    new-instance v6, Lcom/parse/ParseObject$6;

    invoke-direct {v6, p0, p1, p2}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1474
    if-eqz v2, :cond_3

    .line 1475
    new-instance v6, Lcom/parse/ParseObject$7;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .line 1483
    :cond_3
    new-instance v6, Lcom/parse/ParseObject$8;

    invoke-direct {v6, p0}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    move-object v5, v4

    .line 1491
    .end local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v5    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_1

    .line 1436
    .end local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    .end local v2    # "store":Lcom/parse/OfflineStore;
    .end local v5    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .restart local v4    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 6
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    const/4 v2, 0x0

    .line 1399
    .local v2, "newState":Lcom/parse/ParseObject$State;
    if-eqz p1, :cond_0

    .line 1400
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1401
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v1

    .line 1402
    .local v1, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v0, v1}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    .line 1403
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    invoke-static {}, Lcom/parse/ParseObjectCoder;->get()Lcom/parse/ParseObjectCoder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    move-result-object v5

    invoke-virtual {v3, v5, p1, v0}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    const/4 v5, 0x0

    .line 1404
    invoke-virtual {v3, v5}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    .line 1405
    invoke-virtual {v3}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v2

    .line 1406
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1409
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    .end local v1    # "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v3

    return-object v3

    .line 1406
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3019
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasChanges()Z
    .locals 2

    .prologue
    .line 1239
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1240
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasOutstandingOperations()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1249
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1251
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 3603
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3604
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3605
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3606
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 3604
    return v0

    .line 3606
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3607
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3029
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 3030
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 3041
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 3042
    .local v0, "operation":Lcom/parse/ParseIncrementOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3043
    return-void
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 3516
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3517
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 3518
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDataAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3529
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3531
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State;->availableKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 1229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1263
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1264
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 2
    .param p1, "considerChildren"    # Z

    .prologue
    .line 1233
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1234
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseObject;->isDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3147
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method markAllFieldsDirty()V
    .locals 4

    .prologue
    .line 2944
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2945
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2946
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v3, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/parse/ParseObject;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2948
    .end local v0    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2949
    return-void
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 842
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 844
    if-ne p0, p1, :cond_0

    .line 845
    :try_start_0
    monitor-exit v2

    .line 857
    :goto_0
    return-void

    .line 848
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    .line 855
    .local v0, "copy":Lcom/parse/ParseObject$State;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;Z)V

    .line 856
    monitor-exit v2

    goto :goto_0

    .end local v0    # "copy":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;
    .locals 19
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .param p4, "completeData"    # Z

    .prologue
    .line 982
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v3

    .line 983
    .local v3, "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    if-eqz p4, :cond_0

    .line 984
    invoke-virtual {v3}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    .line 986
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v17

    if-nez v17, :cond_1

    if-eqz p4, :cond_3

    :cond_1
    const/16 v17, 0x1

    :goto_0
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    .line 988
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 989
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 990
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 995
    .local v7, "key":Ljava/lang/String;
    const-string v17, "__type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, "className"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 998
    const-string v17, "objectId"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 999
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1000
    .local v11, "newObjectId":Ljava/lang/String;
    invoke-virtual {v3, v11}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1049
    .end local v3    # "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v11    # "newObjectId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1050
    .local v5, "e":Lorg/json/JSONException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 986
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v3    # "builder":Lcom/parse/ParseObject$State$Init;, "Lcom/parse/ParseObject$State$Init<*>;"
    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    .line 1003
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    :try_start_1
    const-string v17, "createdAt"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1004
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v17

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/parse/ParseObject$State$Init;->createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 1007
    :cond_5
    const-string v17, "updatedAt"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1008
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v17

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/parse/ParseObject$State$Init;->updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    .line 1011
    :cond_6
    const-string v17, "ACL"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1012
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v2

    .line 1013
    .local v2, "acl":Lcom/parse/ParseACL;
    const-string v17, "ACL"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto/16 :goto_1

    .line 1016
    .end local v2    # "acl":Lcom/parse/ParseACL;
    :cond_7
    const-string v17, "__selectedKeys"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1017
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 1018
    .local v13, "safeKeys":Lorg/json/JSONArray;
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_2

    .line 1019
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 1020
    .local v15, "set":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_9

    .line 1022
    invoke-virtual {v13, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1023
    .local v12, "safeKey":Ljava/lang/String;
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "\\."

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v12, v17, v18

    .line 1024
    :cond_8
    invoke-interface {v15, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1020
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1026
    .end local v12    # "safeKey":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3, v15}, Lcom/parse/ParseObject$State$Init;->availableKeys(Ljava/util/Collection;)Lcom/parse/ParseObject$State$Init;

    goto/16 :goto_1

    .line 1031
    .end local v6    # "i":I
    .end local v13    # "safeKeys":Lorg/json/JSONArray;
    .end local v15    # "set":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 1032
    .local v16, "value":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v0, v0, Lorg/json/JSONObject;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    const-string v17, "__selectedKeys"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 1034
    const-string v17, "__selectedKeys"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1035
    .local v14, "selectedKeys":Lorg/json/JSONArray;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 1036
    .local v10, "nestedKeys":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_c

    .line 1037
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1038
    .local v9, "nestedKey":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1036
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1040
    .end local v9    # "nestedKey":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_d

    .line 1041
    move-object/from16 v0, v16

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v17, v0

    const-string v18, "__selectedKeys"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1044
    .end local v6    # "i":I
    .end local v10    # "nestedKeys":Lorg/json/JSONArray;
    .end local v14    # "selectedKeys":Lorg/json/JSONArray;
    :cond_d
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1045
    .local v4, "decodedObject":Ljava/lang/Object;
    invoke-virtual {v3, v7, v4}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto/16 :goto_1

    .line 1048
    .end local v4    # "decodedObject":Ljava/lang/Object;
    .end local v7    # "key":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_e
    invoke-virtual {v3}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    return-object v17
.end method

.method mergeREST(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 24
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p2, "json"    # Lorg/json/JSONObject;
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 1133
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    .local v16, "saveEventuallyOperationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseOperationSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 1137
    :try_start_0
    const-string v17, "__complete"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1138
    .local v7, "isComplete":Z
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const-string v20, "__isDeletingEventually"

    aput-object v20, v17, v19

    const/16 v19, 0x1

    const-string v20, "isDeletingEventually"

    aput-object v20, v17, v19

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/parse/ParseJSONUtils;->getInt(Lorg/json/JSONObject;Ljava/util/List;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1142
    const-string v17, "__operations"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 1144
    .local v14, "operations":Lorg/json/JSONArray;
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v11

    .line 1145
    .local v11, "newerOperations":Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->clear()V

    .line 1149
    const/4 v4, 0x0

    .line 1150
    .local v4, "current":Lcom/parse/ParseOperationSet;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v6, v0, :cond_3

    .line 1151
    invoke-virtual {v14, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1152
    .local v13, "operationSetJSON":Lorg/json/JSONObject;
    move-object/from16 v0, p3

    invoke-static {v13, v0}, Lcom/parse/ParseOperationSet;->fromRest(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseOperationSet;

    move-result-object v12

    .line 1154
    .local v12, "operationSet":Lcom/parse/ParseOperationSet;
    invoke-virtual {v12}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1155
    if-eqz v4, :cond_0

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1157
    const/4 v4, 0x0

    .line 1159
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1150
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1164
    :cond_1
    if-eqz v4, :cond_2

    .line 1165
    invoke-virtual {v12, v4}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1167
    :cond_2
    move-object v4, v12

    goto :goto_1

    .line 1169
    .end local v12    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v13    # "operationSetJSON":Lorg/json/JSONObject;
    :cond_3
    if-eqz v4, :cond_4

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 1179
    const/4 v9, 0x0

    .line 1180
    .local v9, "mergeServerData":Z
    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v17, v20, v22

    if-gez v17, :cond_7

    .line 1181
    const/4 v9, 0x1

    .line 1189
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 1191
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const-string v20, "__complete"

    aput-object v20, v17, v19

    const/16 v19, 0x1

    const-string v20, "__isDeletingEventually"

    aput-object v20, v17, v19

    const/16 v19, 0x2

    const-string v20, "isDeletingEventually"

    aput-object v20, v17, v19

    const/16 v19, 0x3

    const-string v20, "__operations"

    aput-object v20, v17, v19

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/parse/ParseJSONUtils;->create(Lorg/json/JSONObject;Ljava/util/Collection;)Lorg/json/JSONObject;

    move-result-object v8

    .line 1195
    .local v8, "mergeJSON":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v8, v2, v7}, Lcom/parse/ParseObject;->mergeFromServer(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)Lcom/parse/ParseObject$State;

    move-result-object v10

    .line 1196
    .local v10, "newState":Lcom/parse/ParseObject$State;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1201
    .end local v8    # "mergeJSON":Lorg/json/JSONObject;
    .end local v10    # "newState":Lcom/parse/ParseObject$State;
    :cond_6
    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseOperationSet;

    .line 1205
    .restart local v12    # "operationSet":Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    goto :goto_3

    .line 1182
    .end local v12    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_7
    :try_start_2
    const-string v17, "updatedAt"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1183
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v17

    const-string v19, "updatedAt"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/parse/ParseDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 1184
    .local v15, "otherUpdatedAt":Ljava/util/Date;
    new-instance v17, Ljava/util/Date;

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v20

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v17

    if-gez v17, :cond_5

    .line 1185
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1198
    .end local v4    # "current":Lcom/parse/ParseOperationSet;
    .end local v6    # "i":I
    .end local v7    # "isComplete":Z
    .end local v9    # "mergeServerData":Z
    .end local v11    # "newerOperations":Lcom/parse/ParseOperationSet;
    .end local v14    # "operations":Lorg/json/JSONArray;
    .end local v15    # "otherUpdatedAt":Ljava/util/Date;
    :catch_0
    move-exception v5

    .line 1199
    .local v5, "e":Lorg/json/JSONException;
    :try_start_3
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 1201
    .end local v5    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v17

    .line 1207
    .restart local v4    # "current":Lcom/parse/ParseOperationSet;
    .restart local v6    # "i":I
    .restart local v7    # "isComplete":Z
    .restart local v9    # "mergeServerData":Z
    .restart local v11    # "newerOperations":Lcom/parse/ParseOperationSet;
    .restart local v14    # "operations":Lorg/json/JSONArray;
    :cond_8
    return-void
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 3636
    const/4 v0, 0x1

    return v0
.end method

.method newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 744
    new-instance v0, Lcom/parse/ParseObject$State$Builder;

    invoke-direct {v0, p1}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 4375
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 4365
    return-void
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 2956
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 2957
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2958
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {p2, v3, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2959
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2960
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 2966
    .local v2, "oldOperation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 2967
    .local v0, "newOperation":Lcom/parse/ParseFieldOperation;
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2968
    monitor-exit v5

    .line 2969
    return-void

    .line 2962
    .end local v0    # "newOperation":Lcom/parse/ParseFieldOperation;
    .end local v2    # "oldOperation":Lcom/parse/ParseFieldOperation;
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2968
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method performPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2988
    if-nez p1, :cond_0

    .line 2989
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2992
    :cond_0
    if-nez p2, :cond_1

    .line 2993
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "value may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2996
    :cond_1
    instance-of v1, p2, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 2997
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    .line 2998
    .local v0, "decoder":Lcom/parse/ParseDecoder;
    check-cast p2, Lorg/json/JSONObject;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    .line 3004
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    :cond_2
    :goto_0
    invoke-static {p2}, Lcom/parse/ParseEncoder;->isValidType(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3005
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid type for value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2999
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Lorg/json/JSONArray;

    if-eqz v1, :cond_2

    .line 3000
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    .line 3001
    .restart local v0    # "decoder":Lcom/parse/ParseDecoder;
    check-cast p2, Lorg/json/JSONArray;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p2

    .local p2, "value":Ljava/util/List;
    goto :goto_0

    .line 3008
    .end local v0    # "decoder":Lcom/parse/ParseDecoder;
    .end local p2    # "value":Ljava/util/List;
    :cond_4
    new-instance v1, Lcom/parse/ParseSetOperation;

    invoke-direct {v1, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3009
    return-void
.end method

.method performRemove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3112
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3113
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3115
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 3116
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3118
    :cond_0
    monitor-exit v2

    .line 3119
    return-void

    .line 3118
    .end local v0    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4183
    return-void
.end method

.method public pin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4130
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4131
    return-void
.end method

.method public pinInBackground()Lbolts/Task;
    .locals 3
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
    .line 4165
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Ljava/lang/String;)Lbolts/Task;
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
    .line 4110
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method pinInBackground(Ljava/lang/String;Z)Lbolts/Task;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "includeAllChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4114
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 4148
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4149
    return-void
.end method

.method public pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 4094
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4095
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2982
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 2984
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2985
    return-void
.end method

.method public final refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2007
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 2008
    return-void
.end method

.method public final refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/RefreshCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2021
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2022
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3611
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3612
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback2;)V

    .line 3613
    monitor-exit v1

    .line 3614
    return-void

    .line 3613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3106
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->performRemove(Ljava/lang/String;)V

    .line 3109
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3133
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 3135
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 3136
    .local v0, "operation":Lcom/parse/ParseRemoveOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 3137
    return-void
.end method

.method public revert()V
    .locals 2

    .prologue
    .line 879
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 880
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->clear()V

    .line 882
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 884
    :cond_0
    monitor-exit v1

    .line 885
    return-void

    .line 884
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public revert(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 866
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 867
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isDirty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 871
    :cond_0
    monitor-exit v1

    .line 872
    return-void

    .line 871
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1514
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 1515
    return-void
.end method

.method saveAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "client"    # Lcom/parse/ParseHttpClient;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1635
    .line 1636
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    invoke-direct {p0, p2, v1, p3}, Lcom/parse/ParseObject;->currentSaveEventuallyCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1637
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0, p1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method saveAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
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
    .line 1569
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$11;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .prologue
    .line 1578
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1579
    const/4 v2, 0x0

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1601
    :goto_0
    return-object v2

    .line 1583
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1584
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 1585
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSave()V

    .line 1586
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1587
    .local v0, "operations":Lcom/parse/ParseOperationSet;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1590
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1598
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-static {v2, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    .line 1599
    .local v1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1602
    invoke-static {p2}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v2

    .line 1601
    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$13;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V

    .line 1603
    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$12;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    .line 1610
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 1587
    .end local v0    # "operations":Lcom/parse/ParseOperationSet;
    .end local v1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1599
    .restart local v0    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public final saveEventually()Lbolts/Task;
    .locals 14
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
    const/4 v12, 0x0

    .line 1691
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1692
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parse/ParseEventuallyQueue;->fakeObjectUpdate()V

    .line 1693
    invoke-static {v12}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1770
    :goto_0
    return-object v4

    .line 1700
    :cond_0
    iget-object v12, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v12

    .line 1701
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateSaveEventually()V
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1713
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .local v10, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v11, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-static {v11, v10, v13}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1716
    const/4 v5, 0x0

    .line 1717
    .local v5, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1718
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v5

    .line 1721
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v7

    .line 1722
    .local v7, "operationSet":Lcom/parse/ParseOperationSet;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 1725
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 1729
    .local v9, "sessionToken":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncoder;->get()Lcom/parse/PointerOrLocalIdEncoder;

    move-result-object v11

    invoke-direct {p0, v7, v11, v9}, Lcom/parse/ParseObject;->currentSaveEventuallyCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v1

    .line 1733
    .local v1, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v1, v5}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v7}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/parse/ParseRESTCommand;->setOperationSetUUID(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->retainLocalIds()V

    .line 1741
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1742
    .local v6, "object":Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;
    :try_end_3
    .catch Lcom/parse/ParseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1744
    .end local v1    # "command":Lcom/parse/ParseRESTCommand;
    .end local v6    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v3

    .line 1745
    .local v3, "exception":Lcom/parse/ParseException;
    :try_start_4
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v13, "Unable to saveEventually."

    invoke-direct {v11, v13, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1747
    .end local v3    # "exception":Lcom/parse/ParseException;
    .end local v5    # "localId":Ljava/lang/String;
    .end local v7    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v9    # "sessionToken":Ljava/lang/String;
    .end local v10    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v11

    .line 1704
    :catch_1
    move-exception v2

    .line 1705
    .local v2, "e":Lcom/parse/ParseException;
    :try_start_5
    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v4

    monitor-exit v12

    goto :goto_0

    .line 1747
    .end local v2    # "e":Lcom/parse/ParseException;
    .restart local v1    # "command":Lcom/parse/ParseRESTCommand;
    .restart local v5    # "localId":Ljava/lang/String;
    .restart local v7    # "operationSet":Lcom/parse/ParseOperationSet;
    .restart local v9    # "sessionToken":Ljava/lang/String;
    .restart local v10    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_2
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1750
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1751
    .local v0, "cache":Lcom/parse/ParseEventuallyQueue;
    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseRESTCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v8

    .line 1752
    .local v8, "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-direct {p0, v7}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    .line 1755
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->releaseLocalIds()V

    .line 1758
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1760
    invoke-virtual {v8}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v4

    .local v4, "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto/16 :goto_0

    .line 1762
    .end local v4    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    new-instance v11, Lcom/parse/ParseObject$14;

    invoke-direct {v11, p0, v7}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v8, v11}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .restart local v4    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto/16 :goto_0
.end method

.method public final saveEventually(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1672
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1673
    return-void
.end method

.method public final saveInBackground()Lbolts/Task;
    .locals 2
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
    .line 1524
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$10;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;)V

    .line 1559
    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1524
    return-object v0
.end method

.method public final saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1648
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1649
    return-void
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/parse/ParseACL;

    .prologue
    .line 3506
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3507
    return-void
.end method

.method setDefaultValues()V
    .locals 1

    .prologue
    .line 3626
    invoke-virtual {p0}, Lcom/parse/ParseObject;->needsDefaultACL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3627
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 3629
    :cond_0
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 3
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1287
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1288
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "oldObjectId":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/parse/ParseTextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    monitor-exit v2

    .line 1297
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    .line 1295
    invoke-direct {p0, v0, p1}, Lcom/parse/ParseObject;->notifyObjectIdChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    monitor-exit v2

    goto :goto_0

    .end local v0    # "oldObjectId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setState(Lcom/parse/ParseObject$State;)V
    .locals 2
    .param p1, "newState"    # Lcom/parse/ParseObject$State;

    .prologue
    .line 759
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 760
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/parse/ParseObject;->setState(Lcom/parse/ParseObject$State;Z)V

    .line 761
    monitor-exit v1

    .line 762
    return-void

    .line 761
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSave()Lcom/parse/ParseOperationSet;
    .locals 4

    .prologue
    .line 1495
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1496
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1497
    .local v0, "currentOperations":Lcom/parse/ParseOperationSet;
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-direct {v3}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1498
    monitor-exit v2

    return-object v0

    .line 1499
    .end local v0    # "currentOperations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p2, "operations"    # Lcom/parse/ParseOperationSet;
    .param p3, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1367
    .local p1, "state":Lcom/parse/ParseObject$State;, "TT;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1371
    .local v2, "objectJSON":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p2}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1372
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    .line 1373
    .local v3, "operation":Lcom/parse/ParseFieldOperation;
    invoke-virtual {p3, v3}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1381
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "operation":Lcom/parse/ParseFieldOperation;
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "could not serialize object to JSON"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1378
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1379
    const-string v4, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1385
    :cond_1
    return-object v2
.end method

.method toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "encoder"    # Lcom/parse/ParseEncoder;

    .prologue
    .line 1064
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 1067
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v5

    .line 1070
    .local v5, "state":Lcom/parse/ParseObject$State;
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 1071
    .local v3, "operationSetQueueSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1072
    .local v2, "operationSetQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 1073
    iget-object v6, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v6, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseOperationSet;

    .line 1074
    .local v4, "original":Lcom/parse/ParseOperationSet;
    new-instance v0, Lcom/parse/ParseOperationSet;

    invoke-direct {v0, v4}, Lcom/parse/ParseOperationSet;-><init>(Lcom/parse/ParseOperationSet;)V

    .line 1075
    .local v0, "copy":Lcom/parse/ParseOperationSet;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1077
    .end local v0    # "copy":Lcom/parse/ParseOperationSet;
    .end local v4    # "original":Lcom/parse/ParseOperationSet;
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    invoke-virtual {p0, v5, v2, p1}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v6

    return-object v6

    .line 1077
    .end local v1    # "i":I
    .end local v2    # "operationSetQueueCopy":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    .end local v3    # "operationSetQueueSize":I
    .end local v5    # "state":Lcom/parse/ParseObject$State;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 12
    .param p1, "state"    # Lcom/parse/ParseObject$State;
    .param p3, "objectEncoder"    # Lcom/parse/ParseEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 1084
    .local p2, "operationSetQueue":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1088
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v7, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1089
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1090
    const-string v7, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1092
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 1093
    const-string v7, "createdAt"

    .line 1094
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1093
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1096
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_2

    .line 1097
    const-string v7, "updatedAt"

    .line 1098
    invoke-static {}, Lcom/parse/ParseDateFormat;->getInstance()Lcom/parse/ParseDateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Lcom/parse/ParseDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1097
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1100
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1101
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1102
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {p3, v6}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v3, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1120
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 1121
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "could not serialize object to JSON"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1108
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    const-string v7, "__complete"

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1109
    const-string v7, "__isDeletingEventually"

    iget v8, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1110
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->availableKeys()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 1111
    .local v0, "availableKeys":Lorg/json/JSONArray;
    const-string v7, "__selectedKeys"

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1114
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1115
    .local v5, "operations":Lorg/json/JSONArray;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseOperationSet;

    .line 1116
    .local v4, "operationSet":Lcom/parse/ParseOperationSet;
    invoke-virtual {v4, p3}, Lcom/parse/ParseOperationSet;->toRest(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v5, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1118
    .end local v4    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_4
    const-string v7, "__operations"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1124
    return-object v2
.end method

.method public unpin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4249
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4250
    return-void
.end method

.method public unpin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 4214
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 4215
    return-void
.end method

.method public unpinInBackground()Lbolts/Task;
    .locals 3
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
    .line 4239
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
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
    .line 4205
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 4227
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4228
    return-void
.end method

.method public unpinInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 4194
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 4195
    return-void
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3617
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3618
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback2;)V

    .line 3619
    monitor-exit v1

    .line 3620
    return-void

    .line 3619
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateBeforeSave()V
    .locals 0

    .prologue
    .line 1827
    return-void
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 2153
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 1504
    return-void
.end method

.method validateSaveEventually()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1653
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4260
    new-instance v0, Lcom/parse/ParseObjectParcelEncoder;

    invoke-direct {v0, p0}, Lcom/parse/ParseObjectParcelEncoder;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 4261
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 4264
    iget-object v10, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v10

    .line 4266
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v9

    iput-boolean v9, p0, Lcom/parse/ParseObject;->ldsEnabledWhenParceling:Z

    .line 4267
    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasOutstandingOperations()Z

    move-result v5

    .line 4268
    .local v5, "saving":Z
    iget-boolean v9, p0, Lcom/parse/ParseObject;->isDeleting:Z

    if-nez v9, :cond_0

    iget v9, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    if-lez v9, :cond_5

    :cond_0
    move v2, v7

    .line 4269
    .local v2, "deleting":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 4270
    const-string v9, "ParseObject"

    const-string v11, "About to parcel a ParseObject while a save / saveEventually operation is going on. If recovered from LDS, the unparceled object will be internally updated when these tasks end. If not, it will act as if these tasks have failed. This means that the subsequent call to save() will update again the same keys, and this is dangerous for certain operations, like increment(). To avoid inconsistencies, wait for operations to end before parceling."

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    :cond_1
    if-eqz v2, :cond_2

    .line 4278
    const-string v9, "ParseObject"

    const-string v11, "About to parcel a ParseObject while a delete / deleteEventually operation is going on. If recovered from LDS, the unparceled object will be internally updated when these tasks end. If not, it will assume it\'s not deleted, and might incorrectly return false for isDirty(). To avoid inconsistencies, wait for operations to end before parceling."

    invoke-static {v9, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 4287
    .local v3, "objectId":Ljava/lang/String;
    if-eqz v3, :cond_6

    move v9, v7

    :goto_1
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 4288
    if-eqz v3, :cond_3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4290
    :cond_3
    iget-object v9, p0, Lcom/parse/ParseObject;->state:Lcom/parse/ParseObject$State;

    invoke-virtual {v9, p1, p2}, Lcom/parse/ParseObject$State;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 4291
    iget-object v9, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v9, :cond_7

    move v9, v7

    :goto_2
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeByte(B)V

    .line 4292
    iget-object v9, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4293
    :cond_4
    iget-boolean v9, p0, Lcom/parse/ParseObject;->isDeleted:Z

    if-eqz v9, :cond_8

    :goto_3
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeByte(B)V

    .line 4296
    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasOutstandingOperations()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4299
    new-instance v6, Lcom/parse/ParseOperationSet;

    invoke-direct {v6}, Lcom/parse/ParseOperationSet;-><init>()V

    .line 4300
    .local v6, "set":Lcom/parse/ParseOperationSet;
    iget-object v7, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseOperationSet;

    .line 4301
    .local v4, "operationSet":Lcom/parse/ParseOperationSet;
    new-instance v1, Lcom/parse/ParseOperationSet;

    invoke-direct {v1, v4}, Lcom/parse/ParseOperationSet;-><init>(Lcom/parse/ParseOperationSet;)V

    .line 4302
    .local v1, "copy":Lcom/parse/ParseOperationSet;
    invoke-virtual {v1, v6}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 4303
    move-object v6, v1

    .line 4304
    goto :goto_4

    .end local v1    # "copy":Lcom/parse/ParseOperationSet;
    .end local v2    # "deleting":Z
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v4    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v6    # "set":Lcom/parse/ParseOperationSet;
    :cond_5
    move v2, v8

    .line 4268
    goto :goto_0

    .restart local v2    # "deleting":Z
    .restart local v3    # "objectId":Ljava/lang/String;
    :cond_6
    move v9, v8

    .line 4287
    goto :goto_1

    :cond_7
    move v9, v8

    .line 4291
    goto :goto_2

    :cond_8
    move v7, v8

    .line 4293
    goto :goto_3

    .line 4306
    :cond_9
    iget-object v7, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseOperationSet;

    .line 4308
    .restart local v6    # "set":Lcom/parse/ParseOperationSet;
    :cond_a
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 4309
    invoke-virtual {v6, p1, p2}, Lcom/parse/ParseOperationSet;->toParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 4311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4312
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 4313
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4314
    monitor-exit v10

    .line 4315
    return-void

    .line 4314
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "deleting":Z
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v5    # "saving":Z
    .end local v6    # "set":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method
