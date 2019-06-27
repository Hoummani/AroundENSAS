.class Lcom/parse/ParseDefaultACLController;
.super Ljava/lang/Object;
.source "ParseDefaultACLController.java"


# instance fields
.field defaultACL:Lcom/parse/ParseACL;

.field defaultACLUsesCurrentUser:Z

.field defaultACLWithCurrentUser:Lcom/parse/ParseACL;

.field lastCurrentUser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/parse/ParseACL;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 49
    iget-boolean v3, p0, Lcom/parse/ParseDefaultACLController;->defaultACLUsesCurrentUser:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    if-eqz v3, :cond_2

    .line 50
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 51
    .local v0, "currentUser":Lcom/parse/ParseUser;
    if-eqz v0, :cond_2

    .line 53
    iget-object v3, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseUser;

    move-object v1, v3

    .line 54
    .local v1, "last":Lcom/parse/ParseUser;
    :goto_0
    if-eq v1, v0, :cond_0

    .line 55
    iget-object v3, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    invoke-virtual {v3}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 56
    .local v2, "newDefaultACLWithCurrentUser":Lcom/parse/ParseACL;
    invoke-virtual {v2, v4}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 57
    invoke-virtual {v2, v0, v4}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 58
    invoke-virtual {v2, v0, v4}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 59
    iput-object v2, p0, Lcom/parse/ParseDefaultACLController;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 60
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 62
    .end local v2    # "newDefaultACLWithCurrentUser":Lcom/parse/ParseACL;
    :cond_0
    iget-object v3, p0, Lcom/parse/ParseDefaultACLController;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 65
    .end local v0    # "currentUser":Lcom/parse/ParseUser;
    .end local v1    # "last":Lcom/parse/ParseUser;
    :goto_1
    return-object v3

    .line 53
    .restart local v0    # "currentUser":Lcom/parse/ParseUser;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 65
    .end local v0    # "currentUser":Lcom/parse/ParseUser;
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_1
.end method

.method public set(Lcom/parse/ParseACL;Z)V
    .locals 2
    .param p1, "acl"    # Lcom/parse/ParseACL;
    .param p2, "withAccessForCurrentUser"    # Z

    .prologue
    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/parse/ParseDefaultACLController;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 37
    iput-object v1, p0, Lcom/parse/ParseDefaultACLController;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 38
    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v0

    .line 40
    .local v0, "newDefaultACL":Lcom/parse/ParseACL;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 41
    iput-object v0, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    .line 42
    iput-boolean p2, p0, Lcom/parse/ParseDefaultACLController;->defaultACLUsesCurrentUser:Z

    .line 46
    .end local v0    # "newDefaultACL":Lcom/parse/ParseACL;
    :goto_0
    return-void

    .line 44
    :cond_0
    iput-object v1, p0, Lcom/parse/ParseDefaultACLController;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_0
.end method
