.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$ui$13"
    proto = "(ILjava/lang/Runnable;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;ILjava/lang/Runnable;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iput p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;->f$1:I

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iget v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;->f$1:I

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$ui$13$io-mesalabs-unica-troubleshooting-AskAiChat(ILjava/lang/Runnable;)V

    return-void
.end method

