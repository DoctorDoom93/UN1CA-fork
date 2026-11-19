.class final Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;
.super Landroid/widget/LinearLayout;
.source "TroubleshootingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionRow"
.end annotation


# instance fields
.field final synthetic this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;


# direct methods
.method constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setOrientation(I)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setGravity(I)V

    const/16 v2, 0x50

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setMinimumHeight(I)V

    const/16 v2, 0x18

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v2

    const/16 v3, 0x12

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v4

    const/16 v5, 0x14

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v6

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v3

    invoke-virtual {p0, v2, v4, v6, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setPaddingRelative(IIII)V

    .line 87
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->label(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, p2, v5, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$100(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "sans-serif-medium"

    invoke-static {v5, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_67

    const/16 v4, 0xf

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->label(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, p3, v4, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$100(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->highlightDuplicate(Ljava/lang/String;)Ljava/lang/CharSequence;
    invoke-static {p1, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$200(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x5

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v5

    invoke-virtual {v4, v0, v5, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    :cond_67
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v2, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_83

    const-string v4, "\u2039"

    goto :goto_85

    :cond_83
    const-string v4, "\u203a"

    :goto_85
    const/16 v5, 0x1a

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->label(Ljava/lang/String;IZ)Landroid/widget/TextView;
    invoke-static {p1, v4, v5, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$100(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I
    invoke-static {p1, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I

    move-result v1

    invoke-virtual {v4, v1, v0, v0, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    const/4 v0, 0x2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    invoke-virtual {p0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->addView(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_af

    const-string p3, ""

    goto :goto_c2

    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_c2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setFocusable(Z)V

    .line 91
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const p3, 0x101042c

    const/high16 v0, 0x18000000

    # invokes: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->themed(II)I
    invoke-static {p1, p3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$300(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;II)I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p2, p3, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$0;

    invoke-direct {p2, p4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$0;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance p2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$1;

    invoke-direct {p2, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$1;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    invoke-virtual {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 93
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 2

    .line 94
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    if-eqz p1, :cond_8

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_8
    const p1, 0x3ee66666    # 0.45f

    :goto_b
    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setAlpha(F)V

    return-void
.end method

