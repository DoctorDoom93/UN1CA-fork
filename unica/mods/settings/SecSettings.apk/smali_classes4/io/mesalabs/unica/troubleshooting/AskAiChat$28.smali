.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$collapsible$10"
    proto = "(Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/widget/Button;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/Button;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$28;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$28;->f$1:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$28;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$28;->f$1:Landroid/widget/Button;

    invoke-static {v0, v1, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$collapsible$10(Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;)V

    return-void
.end method

