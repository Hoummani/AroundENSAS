.class public Lcom/parse/ParseACL;
.super Ljava/lang/Object;
.source "ParseACL.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseACL$UserResolutionListener;,
        Lcom/parse/ParseACL$Permissions;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parse/ParseACL;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_ROLE_PREFIX:Ljava/lang/String; = "role:"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "*"

.field private static final UNRESOLVED_KEY:Ljava/lang/String; = "*unresolved"

.field private static final UNRESOLVED_USER_JSON_KEY:Ljava/lang/String; = "unresolvedUser"


# instance fields
.field private final permissionsById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseACL$Permissions;",
            ">;"
        }
    .end annotation
.end field

.field private shared:Z

.field private unresolvedUser:Lcom/parse/ParseUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 586
    new-instance v0, Lcom/parse/ParseACL$1;

    invoke-direct {v0}, Lcom/parse/ParseACL$1;-><init>()V

    sput-object v0, Lcom/parse/ParseACL;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Lcom/parse/ParseParcelDecoder;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;
    .param p2, "decoder"    # Lcom/parse/ParseParcelDecoder;

    .prologue
    const/4 v5, 0x1

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v5, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/parse/ParseACL;->shared:Z

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 601
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 602
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseACL$Permissions;->createPermissionsFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseACL$Permissions;

    move-result-object v2

    .line 604
    .local v2, "permissions":Lcom/parse/ParseACL$Permissions;
    iget-object v4, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 599
    .end local v0    # "i":I
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "permissions":Lcom/parse/ParseACL$Permissions;
    .end local v3    # "size":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 606
    .restart local v0    # "i":I
    .restart local v3    # "size":I
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v5, :cond_2

    .line 607
    invoke-virtual {p2, p1}, Lcom/parse/ParseParcelDecoder;->decode(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseUser;

    iput-object v4, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 608
    iget-object v4, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    new-instance v5, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v5, p0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {v4, v5}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 610
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseACL;)V
    .locals 5
    .param p1, "acl"    # Lcom/parse/ParseACL;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    .line 143
    iget-object v1, p1, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    new-instance v4, Lcom/parse/ParseACL$Permissions;

    iget-object v1, p1, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseACL$Permissions;

    invoke-direct {v4, v1}, Lcom/parse/ParseACL$Permissions;-><init>(Lcom/parse/ParseACL$Permissions;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 146
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    iget-object v1, p1, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    iput-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 147
    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    new-instance v2, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v2, p0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {v1, v2}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 150
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseUser;)V
    .locals 1
    .param p1, "owner"    # Lcom/parse/ParseUser;

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-direct {p0}, Lcom/parse/ParseACL;-><init>()V

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 218
    return-void
.end method

.method static createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 185
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0}, Lcom/parse/ParseACL;-><init>()V

    .line 187
    .local v0, "acl":Lcom/parse/ParseACL;
    invoke-static {p0}, Lcom/parse/ParseJSONUtils;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "key":Ljava/lang/String;
    const-string v5, "unresolvedUser"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 191
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 195
    .local v4, "unresolvedUser":Lorg/json/JSONObject;
    invoke-virtual {p1, v4}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/parse/ParseUser;

    iput-object v5, v0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    goto :goto_0

    .line 192
    .end local v4    # "unresolvedUser":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 198
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/parse/ParseACL$Permissions;->createPermissionsFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL$Permissions;

    move-result-object v3

    .line 199
    .local v3, "permissions":Lcom/parse/ParseACL$Permissions;
    iget-object v5, v0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 200
    .end local v3    # "permissions":Lcom/parse/ParseACL$Permissions;
    :catch_1
    move-exception v1

    .line 201
    .restart local v1    # "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not decode ACL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 205
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method static getDefaultACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACLController()Lcom/parse/ParseDefaultACLController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseDefaultACLController;->get()Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultACLController()Lcom/parse/ParseDefaultACLController;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getDefaultACLController()Lcom/parse/ParseDefaultACLController;

    move-result-object v0

    return-object v0
.end method

.method private isUnresolvedUser(Lcom/parse/ParseUser;)Z
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseUser;

    .prologue
    const/4 v0, 0x0

    .line 361
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-nez v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq p1, v1, :cond_2

    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    invoke-virtual {v2}, Lcom/parse/ParseUser;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private prepareUnresolvedUser(Lcom/parse/ParseUser;)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 352
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->isUnresolvedUser(Lcom/parse/ParseUser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    const-string v1, "*unresolved"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    iput-object p1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 355
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    new-instance v1, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v1, p0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 357
    :cond_0
    return-void
.end method

.method public static setDefaultACL(Lcom/parse/ParseACL;Z)V
    .locals 1
    .param p0, "acl"    # Lcom/parse/ParseACL;
    .param p1, "withAccessForCurrentUser"    # Z

    .prologue
    .line 112
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACLController()Lcom/parse/ParseDefaultACLController;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/parse/ParseDefaultACLController;->set(Lcom/parse/ParseACL;Z)V

    .line 113
    return-void
.end method

.method private setPermissionsIfNonEmpty(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "readPermission"    # Z
    .param p3, "writePermission"    # Z

    .prologue
    .line 241
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 242
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    new-instance v1, Lcom/parse/ParseACL$Permissions;

    invoke-direct {v1, p2, p3}, Lcom/parse/ParseACL$Permissions;-><init>(ZZ)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 341
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 342
    return-void
.end method

.method private setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 346
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 347
    return-void
.end method

.method private static validateRoleState(Lcom/parse/ParseRole;)V
    .locals 2
    .param p0, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 469
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Roles must be saved to the server before they can be used in an ACL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_1
    return-void
.end method


# virtual methods
.method copy()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 153
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0, p0}, Lcom/parse/ParseACL;-><init>(Lcom/parse/ParseACL;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 562
    const/4 v0, 0x0

    return v0
.end method

.method getPermissionsById()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseACL$Permissions;",
            ">;"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    return-object v0
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .prologue
    .line 260
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .prologue
    .line 274
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->isUnresolvedUser(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    .line 381
    :goto_0
    return v0

    .line 375
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x0

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 379
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot getReadAccess for null userId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseACL$Permissions;

    .line 298
    .local v0, "permissions":Lcom/parse/ParseACL$Permissions;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parse/ParseACL$Permissions;->getReadPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoleReadAccess(Lcom/parse/ParseRole;)Z
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 486
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 487
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getRoleReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Lcom/parse/ParseRole;)Z
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 515
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 516
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getRoleWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method getUnresolvedUser()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getWriteAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 404
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->isUnresolvedUser(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    .line 413
    :goto_0
    return v0

    .line 407
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 411
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 318
    if-nez p1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot getWriteAccess for null userId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseACL$Permissions;

    .line 322
    .local v0, "permissions":Lcom/parse/ParseACL$Permissions;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/parse/ParseACL$Permissions;->getWritePermission()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasUnresolvedUser()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShared()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/parse/ParseACL;->shared:Z

    return v0
.end method

.method resolveUser(Lcom/parse/ParseUser;)V
    .locals 4
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->isUnresolvedUser(Lcom/parse/ParseUser;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    const-string v1, "*unresolved"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    const-string v3, "*unresolved"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    const-string v1, "*unresolved"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 253
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 254
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 267
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 268
    return-void
.end method

.method public setReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 329
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 330
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V

    .line 337
    :goto_0
    return-void

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot setReadAccess for null userId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    .line 285
    .local v0, "writePermission":Z
    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseACL;->setPermissionsIfNonEmpty(Ljava/lang/String;ZZ)V

    .line 286
    return-void
.end method

.method public setRoleReadAccess(Lcom/parse/ParseRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 500
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 501
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setRoleReadAccess(Ljava/lang/String;Z)V

    .line 502
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 440
    return-void
.end method

.method public setRoleWriteAccess(Lcom/parse/ParseRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 529
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 530
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setRoleWriteAccess(Ljava/lang/String;Z)V

    .line 531
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 466
    return-void
.end method

.method setShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/parse/ParseACL;->shared:Z

    .line 162
    return-void
.end method

.method public setWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 389
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 305
    if-nez p1, :cond_0

    .line 306
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cannot setWriteAccess for null userId"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    .line 309
    .local v0, "readPermission":Z
    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseACL;->setPermissionsIfNonEmpty(Ljava/lang/String;ZZ)V

    .line 310
    return-void
.end method

.method toJSONObject(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 6
    .param p1, "objectEncoder"    # Lcom/parse/ParseEncoder;

    .prologue
    .line 166
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v3, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, "id":Ljava/lang/String;
    iget-object v4, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseACL$Permissions;

    invoke-virtual {v4}, Lcom/parse/ParseACL$Permissions;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 175
    .end local v2    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    invoke-virtual {p1, v4}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 173
    .local v1, "encoded":Ljava/lang/Object;
    const-string v4, "unresolvedUser"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    .end local v1    # "encoded":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 567
    new-instance v0, Lcom/parse/ParseObjectParcelEncoder;

    invoke-direct {v0}, Lcom/parse/ParseObjectParcelEncoder;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V

    .line 568
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;Lcom/parse/ParseParcelEncoder;)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "encoder"    # Lcom/parse/ParseParcelEncoder;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 571
    iget-boolean v3, p0, Lcom/parse/ParseACL;->shared:Z

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 572
    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 574
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 575
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v6, p0, Lcom/parse/ParseACL;->permissionsById:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseACL$Permissions;

    .line 577
    .local v2, "permissions":Lcom/parse/ParseACL$Permissions;
    invoke-virtual {v2, p1}, Lcom/parse/ParseACL$Permissions;->toParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "permissions":Lcom/parse/ParseACL$Permissions;
    :cond_0
    move v3, v5

    .line 571
    goto :goto_0

    .line 579
    .restart local v1    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 580
    iget-object v3, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v3, :cond_2

    .line 582
    iget-object v3, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    invoke-virtual {p2, v3, p1}, Lcom/parse/ParseParcelEncoder;->encode(Ljava/lang/Object;Landroid/os/Parcel;)V

    .line 584
    :cond_2
    return-void

    :cond_3
    move v4, v5

    .line 579
    goto :goto_2
.end method
