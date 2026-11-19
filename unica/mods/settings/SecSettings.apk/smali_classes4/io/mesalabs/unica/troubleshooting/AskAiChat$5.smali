.class public final synthetic Lio/mesalabs/unica/troubleshooting/AskAiChat$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AskAiChat;"
    method = "pasteLog"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$5;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat$5;->f$0:Lio/mesalabs/unica/troubleshooting/AskAiChat;

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->$r8$lambda$TyDAlRNXUcHt-5kvsy6bmlcpvf4(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    return-void
.end method

