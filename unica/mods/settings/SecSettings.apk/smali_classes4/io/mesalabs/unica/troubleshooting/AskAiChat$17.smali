.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$refresh$18"
    proto = "(Lio/mesalabs/unica/troubleshooting/AiClient;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

.field public final synthetic f$1:Lio/mesalabs/unica/troubleshooting/AiClient;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/AiClient;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$17;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$17;->f$1:Lio/mesalabs/unica/troubleshooting/AiClient;

    return-void
.end method


# virtual methods
.method public final run(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$17;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$17;->f$1:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-virtual {v0, v1, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$refresh$18$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/AiClient;I)V

    return-void
.end method

