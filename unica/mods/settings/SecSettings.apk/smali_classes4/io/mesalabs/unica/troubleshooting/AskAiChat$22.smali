.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$22;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$refresh$17"
    proto = "(Landroid/os/Bundle;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

.field public final synthetic f$1:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Landroid/os/Bundle;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$22;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$22;->f$1:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$22;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$22;->f$1:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$refresh$17$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/os/Bundle;)V

    return-void
.end method

