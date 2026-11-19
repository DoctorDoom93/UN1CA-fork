.class public final synthetic Lio/mesalabs/unica/troubleshooting/AiClient$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/AiClient;"
    method = "lambda$close$1"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/AiClient;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/AiClient;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AiClient$0;->f$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AiClient$0;->f$0:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-virtual {v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->lambda$close$1$io-mesalabs-unica-troubleshooting-AiClient()V

    return-void
.end method

