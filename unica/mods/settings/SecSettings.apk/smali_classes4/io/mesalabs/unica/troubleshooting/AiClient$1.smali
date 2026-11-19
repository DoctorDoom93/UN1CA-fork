.class Lio/mesalabs/unica/troubleshooting/AiClient$1;
.super Landroid/os/Handler;
.source "AiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/troubleshooting/AiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/mesalabs/unica/troubleshooting/AiClient;


# direct methods
.method constructor <init>(Lio/mesalabs/unica/troubleshooting/AiClient;Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 13
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$1;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 14
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient$1;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    # getter for: Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;
    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$000(Lio/mesalabs/unica/troubleshooting/AiClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$1;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    # getter for: Lio/mesalabs/unica/troubleshooting/AiClient;->expected:I
    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$100(Lio/mesalabs/unica/troubleshooting/AiClient;)I

    move-result v1

    if-eq v0, v1, :cond_1e

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_1e
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient$1;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    # getter for: Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;
    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$000(Lio/mesalabs/unica/troubleshooting/AiClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method

