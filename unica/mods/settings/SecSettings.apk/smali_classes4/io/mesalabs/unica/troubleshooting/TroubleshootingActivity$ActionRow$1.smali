.class Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "TroubleshootingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

.field final synthetic val$this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;


# direct methods
.method constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$1;->this$1:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow$1;->val$this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 92
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class p1, Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

