.class Lcom/parse/ParseDateFormat;
.super Ljava/lang/Object;
.source "ParseDateFormat.java"


# static fields
.field private static final INSTANCE:Lcom/parse/ParseDateFormat;

.field private static final TAG:Ljava/lang/String; = "ParseDateFormat"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/parse/ParseDateFormat;

    invoke-direct {v0}, Lcom/parse/ParseDateFormat;-><init>()V

    sput-object v0, Lcom/parse/ParseDateFormat;->INSTANCE:Lcom/parse/ParseDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/parse/ParseDateFormat;->lock:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 35
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 36
    iput-object v0, p0, Lcom/parse/ParseDateFormat;->dateFormat:Ljava/text/DateFormat;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/parse/ParseDateFormat;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/parse/ParseDateFormat;->INSTANCE:Lcom/parse/ParseDateFormat;

    return-object v0
.end method


# virtual methods
.method format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/parse/ParseDateFormat;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-object v2, p0, Lcom/parse/ParseDateFormat;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 42
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v2

    .line 46
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/text/ParseException;
    const-string v1, "ParseDateFormat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
