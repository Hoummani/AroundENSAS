.class Lorg/apache/cordova/inappbrowser/InAppBrowser$6;
.super Ljava/lang/Object;
.source "InAppBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/inappbrowser/InAppBrowser;->showWebPage(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

.field final synthetic val$thatWebView:Lorg/apache/cordova/CordovaWebView;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Ljava/lang/String;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/inappbrowser/InAppBrowser;

    .prologue
    .line 636
    iput-object p1, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iput-object p2, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createCloseButton(I)Landroid/view/View;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0xa

    const/4 v8, 0x0

    const/16 v9, 0x10

    .line 653
    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v6, v6, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 655
    .local v1, "activityRes":Landroid/content/res/Resources;
    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eq v6, v7, :cond_1

    .line 657
    new-instance v2, Landroid/widget/TextView;

    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v6, v6, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 658
    .local v2, "close":Landroid/widget/TextView;
    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 660
    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 661
    :cond_0
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 662
    invoke-direct {p0, v10}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v6

    invoke-direct {p0, v10}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v7

    invoke-virtual {v2, v6, v8, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 663
    move-object v0, v2

    .line 678
    .end local v2    # "close":Landroid/widget/TextView;
    .local v0, "_close":Landroid/view/View;
    :goto_0
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 679
    .local v4, "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 680
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_4

    .line 683
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 687
    :goto_1
    const-string v6, "Close Button"

    invoke-virtual {v0, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setId(I)V

    .line 689
    new-instance v6, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$1;

    invoke-direct {v6, p0}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$1;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    return-object v0

    .line 666
    .end local v0    # "_close":Landroid/view/View;
    .end local v4    # "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    new-instance v2, Landroid/widget/ImageButton;

    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v6, v6, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v6}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 667
    .local v2, "close":Landroid/widget/ImageButton;
    const-string v6, "ic_action_remove"

    const-string v7, "drawable"

    iget-object v8, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v8, v8, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v8}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 668
    .local v5, "closeResId":I
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 669
    .local v3, "closeIcon":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    invoke-static {v6}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 670
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 671
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 672
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_3

    .line 673
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getAdjustViewBounds()Z

    .line 675
    :cond_3
    move-object v0, v2

    .restart local v0    # "_close":Landroid/view/View;
    goto :goto_0

    .line 685
    .end local v2    # "close":Landroid/widget/ImageButton;
    .end local v3    # "closeIcon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "closeResId":I
    .restart local v4    # "closeLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {v0, v11}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private dpToPixels(I)I
    .locals 4
    .param p1, "dipValue"    # I

    .prologue
    .line 643
    const/4 v1, 0x1

    int-to-float v2, p1

    iget-object v3, p0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    iget-object v3, v3, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 645
    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 643
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    .line 648
    .local v0, "value":I
    return v0
.end method


# virtual methods
.method public run()V
    .locals 36
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    if-eqz v32, :cond_0

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->dismiss()V

    .line 707
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    new-instance v33, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v34

    const v35, 0x1030006

    invoke-direct/range {v33 .. v35}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;-><init>(Landroid/content/Context;I)V

    invoke-static/range {v32 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$002(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->getWindow()Landroid/view/Window;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    const v33, 0x1030002

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->requestWindowFeature(I)Z

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->setCancelable(Z)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->setInAppBroswer(Lorg/apache/cordova/inappbrowser/InAppBrowser;)V

    .line 714
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 715
    .local v26, "main":Landroid/widget/LinearLayout;
    const/16 v32, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 718
    new-instance v30, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 720
    .local v30, "toolbar":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)I

    move-result v32

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 721
    new-instance v32, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v33, -0x1

    const/16 v34, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v34

    invoke-direct/range {v32 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    const/16 v32, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v32

    const/16 v33, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    const/16 v34, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v34

    const/16 v35, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v35

    move-object/from16 v0, v30

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 723
    const/16 v32, 0x3

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 724
    const/16 v32, 0x30

    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 727
    new-instance v6, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 728
    .local v6, "actionButtonContainer":Landroid/widget/RelativeLayout;
    new-instance v32, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v33, -0x2

    const/16 v34, -0x2

    invoke-direct/range {v32 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 730
    const/16 v32, 0x10

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 731
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 734
    new-instance v10, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-direct {v10, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 735
    .local v10, "back":Landroid/widget/ImageButton;
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v32, -0x2

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 736
    .local v12, "backLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 737
    invoke-virtual {v10, v12}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    const-string v32, "Back Button"

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 739
    const/16 v32, 0x2

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setId(I)V

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 741
    .local v7, "activityRes":Landroid/content/res/Resources;
    const-string v32, "ic_action_previous_item"

    const-string v33, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 742
    .local v13, "backResId":I
    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 743
    .local v11, "backIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 744
    :cond_1
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x10

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_11

    .line 745
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 748
    :goto_0
    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    sget-object v32, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 750
    const/16 v32, 0x0

    const/16 v33, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    const/16 v34, 0x0

    const/16 v35, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v35

    move/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v34

    move/from16 v3, v35

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 751
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x10

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_2

    .line 752
    invoke-virtual {v10}, Landroid/widget/ImageButton;->getAdjustViewBounds()Z

    .line 754
    :cond_2
    new-instance v32, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$2;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 761
    new-instance v21, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 762
    .local v21, "forward":Landroid/widget/ImageButton;
    new-instance v22, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v32, -0x2

    const/16 v33, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 763
    .local v22, "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0x1

    const/16 v33, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 764
    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 765
    const-string v32, "Forward Button"

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 766
    const/16 v32, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v32

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 767
    const-string v32, "ic_action_next_item"

    const-string v33, "drawable"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v24

    .line 768
    .local v24, "fwdResId":I
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 769
    .local v23, "fwdIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v32

    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    .line 770
    :cond_3
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x10

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_12

    .line 771
    const/16 v32, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 774
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 775
    sget-object v32, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 776
    const/16 v32, 0x0

    const/16 v33, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    const/16 v34, 0x0

    const/16 v35, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v35

    move-object/from16 v0, v21

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;->setPadding(IIII)V

    .line 777
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x10

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_4

    .line 778
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageButton;->getAdjustViewBounds()Z

    .line 780
    :cond_4
    new-instance v32, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$3;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$3;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 787
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    new-instance v33, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static/range {v32 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$902(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 788
    new-instance v29, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 789
    .local v29, "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0x1

    const/16 v33, 0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 790
    const/16 v32, 0x0

    const/16 v33, 0x5

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    const/16 v33, 0x4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setId(I)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$url:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    const/16 v33, 0x10

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setInputType(I)V

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    const/16 v33, 0x2

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setInputType(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    new-instance v33, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$4;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;)V

    invoke-virtual/range {v32 .. v33}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 811
    const/16 v32, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->createCloseButton(I)Landroid/view/View;

    move-result-object v15

    .line 812
    .local v15, "close":Landroid/view/View;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 815
    new-instance v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 817
    .local v18, "footer":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_13

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 822
    .local v5, "_footerColor":I
    :goto_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 823
    new-instance v20, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v32, -0x1

    const/16 v33, 0x2c

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 824
    .local v20, "footerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v32, 0xc

    const/16 v33, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 825
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Ljava/lang/String;

    move-result-object v32

    const-string v33, ""

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_5

    const/16 v32, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v32

    const/16 v33, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v33

    const/16 v34, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v34

    const/16 v35, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->dpToPixels(I)I

    move-result v35

    move-object/from16 v0, v18

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 827
    :cond_5
    const/16 v32, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setHorizontalGravity(I)V

    .line 828
    const/16 v32, 0x50

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVerticalGravity(I)V

    .line 830
    const/16 v32, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->createCloseButton(I)Landroid/view/View;

    move-result-object v19

    .line 831
    .local v19, "footerClose":Landroid/view/View;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    new-instance v33, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v34, v0

    invoke-interface/range {v34 .. v34}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v34

    invoke-direct/range {v33 .. v34}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-static/range {v32 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$102(Lorg/apache/cordova/inappbrowser/InAppBrowser;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v34, -0x1

    const/16 v35, -0x1

    invoke-direct/range {v33 .. v35}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    const/16 v33, 0x6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebView;->setId(I)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    new-instance v33, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$6$5;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser$6;Lorg/apache/cordova/CordovaWebView;)V

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 881
    new-instance v14, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$thatWebView:Lorg/apache/cordova/CordovaWebView;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v14, v0, v1, v2}, Lorg/apache/cordova/inappbrowser/InAppBrowser$InAppBrowserClient;-><init>(Lorg/apache/cordova/inappbrowser/InAppBrowser;Lorg/apache/cordova/CordovaWebView;Landroid/widget/EditText;)V

    .line 882
    .local v14, "client":Landroid/webkit/WebViewClient;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v28

    .line 884
    .local v28, "settings":Landroid/webkit/WebSettings;
    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 885
    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 887
    sget-object v32, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 889
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x11

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 893
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1600(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v32

    const-string v33, "OverrideUserAgent"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 894
    .local v27, "overrideUserAgent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1700(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v32

    const-string v33, "AppendUserAgent"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 896
    .local v9, "appendUserAgent":Ljava/lang/String;
    if-eqz v27, :cond_7

    .line 897
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 899
    :cond_7
    if-eqz v9, :cond_8

    .line 900
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 904
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 905
    .local v8, "appSettings":Landroid/os/Bundle;
    if-nez v8, :cond_14

    const/16 v17, 0x1

    .line 906
    .local v17, "enableDatabase":Z
    :goto_3
    if-eqz v17, :cond_9

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v32

    const-string v33, "inAppBrowserDB"

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 908
    .local v16, "databasePath":Ljava/lang/String;
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 909
    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 911
    .end local v16    # "databasePath":Ljava/lang/String;
    :cond_9
    const/16 v32, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1800(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-eqz v32, :cond_15

    .line 914
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 920
    :cond_a
    :goto_4
    sget v32, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v33, 0x15

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_b

    .line 921
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v33

    const/16 v34, 0x1

    invoke-virtual/range {v32 .. v34}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 924
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->val$url:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    const/16 v33, 0x6

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebView;->setId(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v32

    const/16 v33, 0x1

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/WebView;->requestFocus()Z

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    .line 932
    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 933
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-nez v32, :cond_c

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 937
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2200(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-nez v32, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/widget/EditText;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 940
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2300(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-eqz v32, :cond_e

    .line 942
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 946
    :cond_e
    new-instance v31, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 947
    .local v31, "webViewLayout":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$100(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Landroid/webkit/WebView;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 948
    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2400(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 952
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 955
    :cond_f
    new-instance v25, Landroid/view/WindowManager$LayoutParams;

    invoke-direct/range {v25 .. v25}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 956
    .local v25, "lp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->getWindow()Landroid/view/Window;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 957
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 958
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->setContentView(Landroid/view/View;)V

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->show()V

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->getWindow()Landroid/view/Window;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$2500(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$000(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowserDialog;->hide()V

    .line 968
    :cond_10
    return-void

    .line 747
    .end local v5    # "_footerColor":I
    .end local v8    # "appSettings":Landroid/os/Bundle;
    .end local v9    # "appendUserAgent":Ljava/lang/String;
    .end local v14    # "client":Landroid/webkit/WebViewClient;
    .end local v15    # "close":Landroid/view/View;
    .end local v17    # "enableDatabase":Z
    .end local v18    # "footer":Landroid/widget/RelativeLayout;
    .end local v19    # "footerClose":Landroid/view/View;
    .end local v20    # "footerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v21    # "forward":Landroid/widget/ImageButton;
    .end local v22    # "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v23    # "fwdIcon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "fwdResId":I
    .end local v25    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "overrideUserAgent":Ljava/lang/String;
    .end local v28    # "settings":Landroid/webkit/WebSettings;
    .end local v29    # "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v31    # "webViewLayout":Landroid/widget/RelativeLayout;
    :cond_11
    const/16 v32, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 773
    .restart local v21    # "forward":Landroid/widget/ImageButton;
    .restart local v22    # "forwardLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v23    # "fwdIcon":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "fwdResId":I
    :cond_12
    const/16 v32, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 820
    .restart local v15    # "close":Landroid/view/View;
    .restart local v18    # "footer":Landroid/widget/RelativeLayout;
    .restart local v29    # "textLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    const v5, -0x333334

    .restart local v5    # "_footerColor":I
    goto/16 :goto_2

    .line 905
    .restart local v8    # "appSettings":Landroid/os/Bundle;
    .restart local v9    # "appendUserAgent":Ljava/lang/String;
    .restart local v14    # "client":Landroid/webkit/WebViewClient;
    .restart local v19    # "footerClose":Landroid/view/View;
    .restart local v20    # "footerLayout":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v27    # "overrideUserAgent":Ljava/lang/String;
    .restart local v28    # "settings":Landroid/webkit/WebSettings;
    :cond_14
    const-string v32, "InAppBrowserStorageEnabled"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    goto/16 :goto_3

    .line 915
    .restart local v17    # "enableDatabase":Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/cordova/inappbrowser/InAppBrowser$6;->this$0:Lorg/apache/cordova/inappbrowser/InAppBrowser;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lorg/apache/cordova/inappbrowser/InAppBrowser;->access$1900(Lorg/apache/cordova/inappbrowser/InAppBrowser;)Z

    move-result v32

    if-eqz v32, :cond_a

    .line 916
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    goto/16 :goto_4
.end method
