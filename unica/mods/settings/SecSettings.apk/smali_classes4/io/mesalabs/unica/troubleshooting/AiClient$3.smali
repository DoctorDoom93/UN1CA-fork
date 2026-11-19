.class public final synthetic Lio/mesalabs/unica/troubleshooting/AiClient$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AiClient;"
    method = "lambda$new$0"
    proto = "(Landroid/content/Context;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AiClient;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AiClient;Landroid/content/Context;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$3;->f$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AiClient$3;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient$3;->f$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$3;->f$1:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/AiClient;->lambda$new$0$io-mesalabs-unica-troubleshooting-AiClient(Landroid/content/Context;)V

    return-void
.end method

