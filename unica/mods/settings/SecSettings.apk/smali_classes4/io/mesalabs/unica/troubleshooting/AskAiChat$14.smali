.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$run$16"
    proto = "(Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

.field public final synthetic f$1:Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;->f$1:Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;

    iput p3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;->f$1:Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;

    iget v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;->f$2:I

    invoke-virtual {v0, v1, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$run$16$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;I)V

    return-void
.end method

