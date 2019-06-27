.class Lcom/parse/Numbers;
.super Ljava/lang/Object;
.source "Numbers.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    .line 20
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    .line 22
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 23
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 24
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 25
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 27
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 29
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    .line 31
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static compare(Ljava/lang/Number;Ljava/lang/Number;)I
    .locals 8
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    const-wide/16 v6, 0x0

    .line 62
    instance-of v2, p0, Ljava/lang/Double;

    if-nez v2, :cond_0

    instance-of v2, p1, Ljava/lang/Double;

    if-eqz v2, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->signum(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 74
    :goto_0
    return v2

    .line 64
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p1, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 65
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    goto :goto_0

    .line 66
    :cond_3
    instance-of v2, p0, Ljava/lang/Long;

    if-nez v2, :cond_4

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 67
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 68
    .local v0, "diff":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_5

    const/4 v2, -0x1

    goto :goto_0

    :cond_5
    cmp-long v2, v0, v6

    if-lez v2, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 69
    .end local v0    # "diff":J
    :cond_7
    instance-of v2, p0, Ljava/lang/Integer;

    if-nez v2, :cond_8

    instance-of v2, p1, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 70
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 71
    :cond_9
    instance-of v2, p0, Ljava/lang/Short;

    if-nez v2, :cond_a

    instance-of v2, p1, Ljava/lang/Short;

    if-eqz v2, :cond_b

    .line 72
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 73
    :cond_b
    instance-of v2, p0, Ljava/lang/Byte;

    if-nez v2, :cond_c

    instance-of v2, p1, Ljava/lang/Byte;

    if-eqz v2, :cond_d

    .line 74
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 76
    :cond_d
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown number type."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static subtract(Ljava/lang/Number;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 4
    .param p0, "first"    # Ljava/lang/Number;
    .param p1, "second"    # Ljava/lang/Number;

    .prologue
    .line 41
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 43
    :cond_1
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 44
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_3
    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 46
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_5
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 48
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_7
    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_9

    .line 50
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_9
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_a

    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_b

    .line 52
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown number type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
