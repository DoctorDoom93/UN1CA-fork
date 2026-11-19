.class Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;
.super Ljava/lang/Object;
.source "TroubleshootingActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field final synthetic val$scrollY:I


# direct methods
.method constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;->this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;->val$scrollY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 183
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;->this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    # getter for: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$400(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;->this$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    # getter for: Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;
    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->access$400(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)Landroid/widget/ScrollView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;->val$scrollY:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    return-void
.end method

