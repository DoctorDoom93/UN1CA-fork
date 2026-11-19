.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$button$0"
    proto = "(Ljava/lang/Runnable;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$15;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$15;->f$0:Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$button$0(Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

