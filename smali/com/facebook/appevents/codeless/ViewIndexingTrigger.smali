.class public Lcom/facebook/appevents/codeless/ViewIndexingTrigger;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;
    }
.end annotation


# static fields
.field private static final SHAKE_THRESHOLD_GRAVITY:D = 2.299999952316284


# instance fields
.field private mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 66
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 45
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    if-eqz v13, :cond_0

    .line 46
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x0

    aget v10, v13, v14

    .line 47
    .local v10, "x":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x1

    aget v11, v13, v14

    .line 48
    .local v11, "y":F
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v14, 0x2

    aget v12, v13, v14

    .line 50
    .local v12, "z":F
    const v13, 0x411ce80a

    div-float v13, v10, v13

    float-to-double v4, v13

    .line 51
    .local v4, "gX":D
    const v13, 0x411ce80a

    div-float v13, v11, v13

    float-to-double v6, v13

    .line 52
    .local v6, "gY":D
    const v13, 0x411ce80a

    div-float v13, v12, v13

    float-to-double v8, v13

    .line 55
    .local v8, "gZ":D
    mul-double v14, v4, v4

    mul-double v16, v6, v6

    add-double v14, v14, v16

    mul-double v16, v8, v8

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 57
    .local v2, "gForce":D
    const-wide v14, 0x4002666660000000L    # 2.299999952316284

    cmpl-double v13, v2, v14

    if-lez v13, :cond_0

    .line 58
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    invoke-interface {v13}, Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;->onShake()V

    .line 61
    .end local v2    # "gForce":D
    .end local v4    # "gX":D
    .end local v6    # "gY":D
    .end local v8    # "gZ":D
    .end local v10    # "x":F
    .end local v11    # "y":F
    .end local v12    # "z":F
    :cond_0
    return-void
.end method

.method public setOnShakeListener(Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexingTrigger;->mListener:Lcom/facebook/appevents/codeless/ViewIndexingTrigger$OnShakeListener;

    .line 37
    return-void
.end method
