.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$show$12"
    proto = "(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

.field public final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Landroid/app/AlertDialog;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$13;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$13;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$13;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$13;->f$1:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$show$12$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

