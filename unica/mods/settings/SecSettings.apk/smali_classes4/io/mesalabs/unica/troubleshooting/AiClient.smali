.class final Lio/mesalabs/unica/troubleshooting/AiClient;
.super Ljava/lang/Object;
.source "AiClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private bound:Z

.field private final callback:Landroid/os/Messenger;

.field private closed:Z

.field private final connected:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final connection:Landroid/content/ServiceConnection;

.field private final context:Landroid/content/Context;

.field private volatile expected:I

.field private final main:Landroid/os/Handler;

.field private volatile pending:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private remote:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->main:Landroid/os/Handler;

    .line 12
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connected:Ljava/util/concurrent/CompletableFuture;

    .line 13
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AiClient$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/mesalabs/unica/troubleshooting/AiClient$1;-><init>(Lio/mesalabs/unica/troubleshooting/AiClient;Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->callback:Landroid/os/Messenger;

    .line 16
    new-instance v0, Lio/mesalabs/unica/troubleshooting/AiClient$2;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/AiClient$2;-><init>(Lio/mesalabs/unica/troubleshooting/AiClient;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connection:Landroid/content/ServiceConnection;

    .line 22
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->context:Landroid/content/Context;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->main:Landroid/os/Handler;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AiClient$3;

    invoke-direct {v1, p0, p1}, Lio/mesalabs/unica/troubleshooting/AiClient$3;-><init>(Lio/mesalabs/unica/troubleshooting/AiClient;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method static synthetic access$000(Lio/mesalabs/unica/troubleshooting/AiClient;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic access$100(Lio/mesalabs/unica/troubleshooting/AiClient;)I
    .registers 1

    .line 9
    iget p0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->expected:I

    return p0
.end method

.method static synthetic access$202(Lio/mesalabs/unica/troubleshooting/AiClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    .line 9
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->remote:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$300(Lio/mesalabs/unica/troubleshooting/AiClient;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    .line 9
    iget-object p0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connected:Ljava/util/concurrent/CompletableFuture;

    return-object p0
.end method

.method static synthetic access$400(Lio/mesalabs/unica/troubleshooting/AiClient;Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V

    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .registers 3

    .line 31
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connected:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_13
    return-void
.end method


# virtual methods
.method analyze(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "task"

    const-string v2, "diagnostic"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string p1, "online"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "online_consent"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/32 v1, 0xafc8

    add-long/2addr p1, v1

    const-string v1, "deadline"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 47
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->request(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "content"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4a

    return-object p1

    :cond_4a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No analysis returned"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method chat(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "task"

    const-string v2, "diagnostic_chat"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "input"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "destination"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string p1, "online"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "online_consent"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/32 v1, 0xafc8

    add-long/2addr p1, v1

    const-string v1, "deadline"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->request(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "content"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4a

    return-object p1

    :cond_4a
    new-instance p1, Ljava/io/IOException;

    const-string p2, "No answer returned"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .registers 3

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->closed:Z

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->main:Landroid/os/Handler;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AiClient$0;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/AiClient$0;-><init>(Lio/mesalabs/unica/troubleshooting/AiClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    return-void
.end method

.method config()Landroid/os/Bundle;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->request(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 41
    const-string v1, "destination"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9a-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 42
    return-object v0

    .line 41
    :cond_1b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "AI diagnostic protocol unavailable. Install the updated ROM backend."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic lambda$close$1$io-mesalabs-unica-troubleshooting-AiClient()V
    .registers 3

    .line 55
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->remote:Landroid/os/Messenger;

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_6
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->callback:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->remote:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception v0

    .line 56
    :cond_15
    :goto_15
    const-string v0, "Analysis cancelled"

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->bound:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->bound:Z

    .line 57
    :cond_28
    return-void
.end method

.method synthetic lambda$new$0$io-mesalabs-unica-troubleshooting-AiClient(Landroid/content/Context;)V
    .registers 6

    .line 23
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->closed:Z

    if-eqz v0, :cond_5

    return-void

    .line 25
    :cond_5
    :try_start_5
    const-string v0, "com.samsung.android.aioskernelservice"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 26
    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_36

    .line 27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "io.mesalabs.rezoss.nudge.LocalInferenceService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->bound:Z

    .line 28
    iget-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->bound:Z

    if-nez p1, :cond_35

    const-string p1, "AI diagnostic service is not installed"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V

    .line 29
    :cond_35
    goto :goto_46

    .line 26
    :cond_36
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "AI service signature mismatch"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_3e

    .line 29
    :catch_3e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AiClient;->fail(Ljava/lang/String;)V

    .line 30
    :goto_46
    return-void
.end method

.method declared-synchronized request(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_1
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->connected:Ljava/util/concurrent/CompletableFuture;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->closed:Z

    if-nez v0, :cond_51

    .line 34
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;

    iput p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->expected:I

    .line 35
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->callback:Landroid/os/Messenger;

    iput-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->remote:Landroid/os/Messenger;

    invoke-virtual {p2, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_59

    .line 36
    :try_start_28
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string p2, "status"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_49

    const-string v0, "generated"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    goto :goto_49

    :cond_43
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_4d

    .line 37
    :cond_49
    :goto_49
    :try_start_49
    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;
    :try_end_4b
    .catchall {:try_start_49 .. :try_end_4b} :catchall_59

    .line 36
    monitor-exit p0

    return-object p1

    .line 37
    :catchall_4d
    move-exception p1

    :try_start_4e
    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient;->pending:Ljava/util/concurrent/CompletableFuture;

    throw p1

    .line 33
    :cond_51
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Analysis cancelled"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :catchall_59
    move-exception p1

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_59

    throw p1
.end method

