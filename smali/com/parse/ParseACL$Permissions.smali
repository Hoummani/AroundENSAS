.class Lcom/parse/ParseACL$Permissions;
.super Ljava/lang/Object;
.source "ParseACL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseACL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Permissions"
.end annotation


# static fields
.field private static final READ_PERMISSION:Ljava/lang/String; = "read"

.field private static final WRITE_PERMISSION:Ljava/lang/String; = "write"


# instance fields
.field private final readPermission:Z

.field private final writePermission:Z


# direct methods
.method constructor <init>(Lcom/parse/ParseACL$Permissions;)V
    .locals 1
    .param p1, "permissions"    # Lcom/parse/ParseACL$Permissions;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-boolean v0, p1, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    iput-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    .line 49
    iget-boolean v0, p1, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    iput-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    .line 50
    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0
    .param p1, "readPermission"    # Z
    .param p2, "write"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    .line 44
    iput-boolean p2, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    .line 45
    return-void
.end method

.method static createPermissionsFromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseACL$Permissions;
    .locals 4
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x0

    .line 82
    const-string v2, "read"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, "read":Z
    const-string v2, "write"

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .local v1, "write":Z
    new-instance v2, Lcom/parse/ParseACL$Permissions;

    invoke-direct {v2, v0, v1}, Lcom/parse/ParseACL$Permissions;-><init>(ZZ)V

    return-object v2
.end method

.method static createPermissionsFromParcel(Landroid/os/Parcel;)Lcom/parse/ParseACL$Permissions;
    .locals 5
    .param p0, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 88
    new-instance v3, Lcom/parse/ParseACL$Permissions;

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-direct {v3, v0, v1}, Lcom/parse/ParseACL$Permissions;-><init>(ZZ)V

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method getReadPermission()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    return v0
.end method

.method getWritePermission()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 53
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    iget-boolean v2, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    :cond_0
    iget-boolean v2, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    if-eqz v2, :cond_1

    .line 60
    const-string v2, "write"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_1
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method toParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->readPermission:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 70
    iget-boolean v0, p0, Lcom/parse/ParseACL$Permissions;->writePermission:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 71
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0

    :cond_1
    move v1, v2

    .line 70
    goto :goto_1
.end method
