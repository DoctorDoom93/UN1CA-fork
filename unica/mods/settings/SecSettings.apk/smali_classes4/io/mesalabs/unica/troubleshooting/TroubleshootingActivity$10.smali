.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$onActivityResult$33"
    proto = "(Landroid/net/Uri;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/net/Uri;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$onActivityResult$33$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/net/Uri;)V

    return-void
.end method

