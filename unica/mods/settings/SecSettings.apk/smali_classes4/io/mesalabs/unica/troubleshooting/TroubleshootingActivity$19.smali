.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$run$19"
    proto = "(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;->f$1:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;->f$1:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$run$19$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    return-void
.end method

