.class Lcom/facebook/login/LoginManager$4;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/LoginManager;->retrieveLoginStatusImpl(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/login/LoginManager;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$logger:Lcom/facebook/login/LoginLogger;

.field final synthetic val$loggerRef:Ljava/lang/String;

.field final synthetic val$responseCallback:Lcom/facebook/LoginStatusCallback;


# direct methods
.method constructor <init>(Lcom/facebook/login/LoginManager;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/login/LoginManager;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/facebook/login/LoginManager$4;->this$0:Lcom/facebook/login/LoginManager;

    iput-object p2, p0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    iput-object p4, p0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    iput-object p5, p0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 740
    if-eqz p1, :cond_4

    .line 742
    const-string v4, "com.facebook.platform.status.ERROR_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 743
    .local v13, "errorType":Ljava/lang/String;
    const-string v4, "com.facebook.platform.status.ERROR_DESCRIPTION"

    .line 744
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 745
    .local v12, "errorDescription":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 746
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-static {v13, v12, v4, v7, v8}, Lcom/facebook/login/LoginManager;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/login/LoginLogger;Lcom/facebook/LoginStatusCallback;)V

    .line 807
    .end local v12    # "errorDescription":Ljava/lang/String;
    .end local v13    # "errorType":Ljava/lang/String;
    :goto_0
    return-void

    .line 753
    .restart local v12    # "errorDescription":Ljava/lang/String;
    .restart local v13    # "errorType":Ljava/lang/String;
    :cond_0
    const-string v4, "com.facebook.platform.extra.ACCESS_TOKEN"

    .line 754
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 755
    .local v3, "token":Ljava/lang/String;
    const-string v4, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

    new-instance v7, Ljava/util/Date;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p1

    invoke-static {v0, v4, v7}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 759
    .local v9, "expires":Ljava/util/Date;
    const-string v4, "com.facebook.platform.extra.PERMISSIONS"

    .line 760
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 761
    .local v6, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "signed request"

    .line 762
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 763
    .local v15, "signedRequest":Ljava/lang/String;
    const-string v4, "com.facebook.platform.extra.EXTRA_DATA_ACCESS_EXPIRATION_TIME"

    new-instance v7, Ljava/util/Date;

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p1

    invoke-static {v0, v4, v7}, Lcom/facebook/internal/Utility;->getBundleLongAsDate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v11

    .line 767
    .local v11, "dataAccessExpirationTime":Ljava/util/Date;
    const/4 v5, 0x0

    .line 768
    .local v5, "userId":Ljava/lang/String;
    invoke-static {v15}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 770
    invoke-static {v15}, Lcom/facebook/login/LoginMethodHandler;->getUserIDFromSignedRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 773
    :cond_1
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v6, :cond_3

    .line 775
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 776
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 777
    new-instance v2, Lcom/facebook/AccessToken;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$applicationId:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 787
    .local v2, "accessToken":Lcom/facebook/AccessToken;
    invoke-static {v2}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    .line 789
    invoke-static/range {p1 .. p1}, Lcom/facebook/login/LoginManager;->access$200(Landroid/os/Bundle;)Lcom/facebook/Profile;

    move-result-object v14

    .line 790
    .local v14, "profile":Lcom/facebook/Profile;
    if-eqz v14, :cond_2

    .line 791
    invoke-static {v14}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 796
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/facebook/login/LoginLogger;->logLoginStatusSuccess(Ljava/lang/String;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v4, v2}, Lcom/facebook/LoginStatusCallback;->onCompleted(Lcom/facebook/AccessToken;)V

    goto/16 :goto_0

    .line 793
    :cond_2
    invoke-static {}, Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V

    goto :goto_1

    .line 799
    .end local v2    # "accessToken":Lcom/facebook/AccessToken;
    .end local v14    # "profile":Lcom/facebook/Profile;
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 800
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v4}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto/16 :goto_0

    .line 804
    .end local v3    # "token":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    .end local v6    # "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "expires":Ljava/util/Date;
    .end local v11    # "dataAccessExpirationTime":Ljava/util/Date;
    .end local v12    # "errorDescription":Ljava/lang/String;
    .end local v13    # "errorType":Ljava/lang/String;
    .end local v15    # "signedRequest":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$logger:Lcom/facebook/login/LoginLogger;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/login/LoginManager$4;->val$loggerRef:Ljava/lang/String;

    invoke-virtual {v4, v7}, Lcom/facebook/login/LoginLogger;->logLoginStatusFailure(Ljava/lang/String;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/login/LoginManager$4;->val$responseCallback:Lcom/facebook/LoginStatusCallback;

    invoke-interface {v4}, Lcom/facebook/LoginStatusCallback;->onFailure()V

    goto/16 :goto_0
.end method
