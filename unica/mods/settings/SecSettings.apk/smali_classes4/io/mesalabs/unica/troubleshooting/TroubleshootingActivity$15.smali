.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$checkSetup$36"
    proto = "(Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$checkSetup$36$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/String;)V

    return-void
.end method

