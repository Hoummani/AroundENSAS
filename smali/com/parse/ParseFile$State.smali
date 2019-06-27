.class Lcom/parse/ParseFile$State;
.super Ljava/lang/Object;
.source "ParseFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFile$State$Builder;
    }
.end annotation


# instance fields
.field private final contentType:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/parse/ParseFile$State$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/parse/ParseFile$State$Builder;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1}, Lcom/parse/ParseFile$State$Builder;->access$100(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/parse/ParseFile$State$Builder;->access$100(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/parse/ParseFile$State;->name:Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/parse/ParseFile$State$Builder;->access$200(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile$State;->contentType:Ljava/lang/String;

    .line 117
    invoke-static {p1}, Lcom/parse/ParseFile$State$Builder;->access$300(Lcom/parse/ParseFile$State$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile$State;->url:Ljava/lang/String;

    .line 118
    return-void

    .line 115
    :cond_0
    const-string v0, "file"

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/parse/ParseFile$State$Builder;Lcom/parse/ParseFile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ParseFile$State$Builder;
    .param p2, "x1"    # Lcom/parse/ParseFile$1;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/parse/ParseFile$State;-><init>(Lcom/parse/ParseFile$State$Builder;)V

    return-void
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/parse/ParseFile$State;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parse/ParseFile$State;->name:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/parse/ParseFile$State;->url:Ljava/lang/String;

    return-object v0
.end method
