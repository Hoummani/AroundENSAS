.class Lcom/parse/ParseObjectSubclassingController;
.super Ljava/lang/Object;
.source "ParseObjectSubclassingController.java"


# instance fields
.field private final mutex:Ljava/lang/Object;

.field private final registeredSubclasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObjectSubclassingController;->mutex:Ljava/lang/Object;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObjectSubclassingController;->registeredSubclasses:Ljava/util/Map;

    return-void
.end method

.method private static getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 120
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/parse/ParseObject;>;"
    if-nez v0, :cond_0

    .line 121
    new-instance v2, Ljava/lang/NoSuchMethodException;

    invoke-direct {v2}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v2

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    .line 124
    .local v1, "modifiers":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.parse"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 125
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 126
    :cond_1
    return-object v0

    .line 128
    :cond_2
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2}, Ljava/lang/IllegalAccessException;-><init>()V

    throw v2
.end method


# virtual methods
.method getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 21
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    const-class v1, Lcom/parse/ParseClassName;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseClassName;

    .line 22
    .local v0, "info":Lcom/parse/ParseClassName;
    if-nez v0, :cond_0

    .line 23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ParseClassName annotation provided on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    invoke-interface {v0}, Lcom/parse/ParseClassName;->value()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method isSubclassValid(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 29
    const/4 v1, 0x0

    .line 31
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/parse/ParseObject;>;"
    iget-object v5, p0, Lcom/parse/ParseObjectSubclassingController;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 32
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObjectSubclassingController;->registeredSubclasses:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v1, v0

    .line 33
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-nez v1, :cond_1

    const-class v2, Lcom/parse/ParseObject;

    if-ne p2, v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    .line 33
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    move v2, v4

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method newInstance(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/parse/ParseObject;>;"
    iget-object v4, p0, Lcom/parse/ParseObjectSubclassingController;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseObjectSubclassingController;->registeredSubclasses:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v1, v0

    .line 105
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    :goto_0
    return-object v3

    .line 105
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 109
    :cond_0
    :try_start_3
    new-instance v3, Lcom/parse/ParseObject;

    invoke-direct {v3, p1}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 113
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Failed to create instance of subclass."

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method registerSubclass(Ljava/lang/Class;)V
    .locals 9
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
    .line 41
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    const-class v5, Lcom/parse/ParseObject;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 42
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Cannot register a type that is not a subclass of ParseObject"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "className":Ljava/lang/String;
    const/4 v4, 0x0

    .line 48
    .local v4, "previousConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/parse/ParseObject;>;"
    iget-object v6, p0, Lcom/parse/ParseObjectSubclassingController;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 49
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseObjectSubclassingController;->registeredSubclasses:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v4, v0

    .line 50
    if-eqz v4, :cond_3

    .line 51
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    .line 52
    .local v3, "previousClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 54
    monitor-exit v6

    .line 90
    .end local v3    # "previousClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    :cond_1
    :goto_0
    return-void

    .line 55
    .restart local v3    # "previousClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    :cond_2
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    .line 69
    .end local v3    # "previousClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/parse/ParseObjectSubclassingController;->registeredSubclasses:Ljava/util/Map;

    invoke-static {p1}, Lcom/parse/ParseObjectSubclassingController;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-eqz v4, :cond_1

    .line 84
    const-class v5, Lcom/parse/ParseUser;

    invoke-virtual {p0, v5}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 85
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserController()Lcom/parse/ParseCurrentUserController;

    move-result-object v5

    invoke-interface {v5}, Lcom/parse/ParseCurrentUserController;->clearFromMemory()V

    goto :goto_0

    .line 60
    .restart local v3    # "previousClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    :cond_4
    :try_start_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Tried to register both "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 61
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " as the ParseObject subclass of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Cannot determine the right class to use because neither inherits from the other."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 79
    .end local v3    # "previousClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 70
    :catch_0
    move-exception v2

    .line 71
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    :try_start_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot register a type that does not implement the default constructor!"

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    .end local v2    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    .line 75
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Default constructor for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not accessible."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :cond_5
    const-class v5, Lcom/parse/ParseInstallation;

    invoke-virtual {p0, v5}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallationController()Lcom/parse/ParseCurrentInstallationController;

    move-result-object v5

    invoke-interface {v5}, Lcom/parse/ParseCurrentInstallationController;->clearFromMemory()V

    goto/16 :goto_0
.end method

.method unregisterSubclass(Ljava/lang/Class;)V
    .locals 3
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
    .line 93
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObjectSubclassingController;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObjectSubclassingController;->registeredSubclasses:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v2

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
