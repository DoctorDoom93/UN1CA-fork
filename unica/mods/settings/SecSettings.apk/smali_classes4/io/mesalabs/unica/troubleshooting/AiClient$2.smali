.class Lio/mesalabs/unica/troubleshooting/AiClient$2;
.super Ljava/lang/Object;
.source "AiClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method constructor <init>(Lio/mesalabs/unica/troubleshooting/AiClient;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$2;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 3

    .line 19
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$2;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    const-string v0, "AI service binding died"

    # invokes: Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$400(Lio/mesalabs/unica/troubleshooting/AiClient;Ljava/lang/String;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 3

    .line 20
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$2;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    const-string v0, "AI backend unavailable"

    # invokes: Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$400(Lio/mesalabs/unica/troubleshooting/AiClient;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 17
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$2;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Lio/mesalabs/unica/troubleshooting/AiClient;->remote:Landroid/os/Messenger;
    invoke-static {p1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$202(Lio/mesalabs/unica/troubleshooting/AiClient;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$2;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    # getter for: Lio/mesalabs/unica/troubleshooting/AiClient;->connected:Ljava/util/concurrent/CompletableFuture;
    invoke-static {p1}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$300(Lio/mesalabs/unica/troubleshooting/AiClient;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 18
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$2;->this$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    const-string v0, "AI service disconnected"

    # invokes: Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V
    invoke-static {p1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->access$400(Lio/mesalabs/unica/troubleshooting/AiClient;Ljava/lang/String;)V

    return-void
.end method

