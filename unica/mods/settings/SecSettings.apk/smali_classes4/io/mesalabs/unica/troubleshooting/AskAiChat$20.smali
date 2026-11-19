.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$20;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "lambda$send$23"
    proto = "(Lio/mesalabs/unica/troubleshooting/AiClient;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

.field public final synthetic f$1:Lio/mesalabs/unica/troubleshooting/AiClient;

.field public final synthetic f$2:Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/AiClient;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$1:Lio/mesalabs/unica/troubleshooting/AiClient;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$2:Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;

    iput-object p4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$3:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run(I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$1:Lio/mesalabs/unica/troubleshooting/AiClient;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$2:Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;->f$3:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->lambda$send$23$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/AiClient;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;I)V

    return-void
.end method

