.class public Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;
.super Ljava/lang/Object;
.source "SensitiveUserDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCreditCard(Landroid/widget/TextView;)Z
    .locals 12
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 79
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\\s"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "ccNumber":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 81
    .local v4, "length":I
    const/16 v9, 0xc

    if-lt v4, v9, :cond_0

    const/16 v9, 0x13

    if-le v4, v9, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v8

    .line 84
    :cond_1
    const/4 v6, 0x0

    .line 85
    .local v6, "sum":I
    const/4 v0, 0x0

    .line 86
    .local v0, "alternate":Z
    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 88
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 89
    .local v2, "digit":C
    const/16 v9, 0x30

    if-lt v2, v9, :cond_0

    const/16 v9, 0x39

    if-gt v2, v9, :cond_0

    .line 92
    add-int/lit8 v5, v2, -0x30

    .line 93
    .local v5, "n":I
    if-eqz v0, :cond_2

    .line 95
    mul-int/lit8 v5, v5, 0x2

    .line 96
    const/16 v9, 0x9

    if-le v5, v9, :cond_2

    .line 98
    rem-int/lit8 v9, v5, 0xa

    add-int/lit8 v5, v9, 0x1

    .line 101
    :cond_2
    add-int/2addr v6, v5

    .line 102
    if-nez v0, :cond_3

    move v0, v7

    .line 86
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    move v0, v8

    .line 102
    goto :goto_2

    .line 104
    .end local v2    # "digit":C
    .end local v5    # "n":I
    :cond_4
    rem-int/lit8 v9, v6, 0xa

    if-nez v9, :cond_5

    :goto_3
    move v8, v7

    goto :goto_0

    :cond_5
    move v7, v8

    goto :goto_3
.end method

.method private static isEmail(Landroid/widget/TextView;)Z
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 53
    .local v0, "inputType":I
    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 60
    :goto_0
    return v2

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/facebook/appevents/codeless/internal/ViewHierarchy;->getTextOfView(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 58
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 60
    :cond_2
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private static isPassword(Landroid/widget/TextView;)Z
    .locals 3
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 44
    .local v0, "inputType":I
    const/16 v2, 0x80

    if-ne v0, v2, :cond_0

    .line 45
    const/4 v2, 0x1

    .line 48
    :goto_0
    return v2

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    .line 48
    .local v1, "method":Landroid/text/method/TransformationMethod;
    instance-of v2, v1, Landroid/text/method/PasswordTransformationMethod;

    goto :goto_0
.end method

.method private static isPersonName(Landroid/widget/TextView;)Z
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 65
    .local v0, "inputType":I
    const/16 v1, 0x60

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPhoneNumber(Landroid/widget/TextView;)Z
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 75
    .local v0, "inputType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPostalAddress(Landroid/widget/TextView;)Z
    .locals 2
    .param p0, "view"    # Landroid/widget/TextView;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    .line 70
    .local v0, "inputType":I
    const/16 v1, 0x70

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSensitiveUserData(Landroid/view/View;)Z
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 33
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v0, p0

    .line 34
    check-cast v0, Landroid/widget/TextView;

    .line 35
    .local v0, "textView":Landroid/widget/TextView;
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPassword(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isCreditCard(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPersonName(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPostalAddress(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isPhoneNumber(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    invoke-static {v0}, Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;->isEmail(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 39
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_1
    return v1
.end method
