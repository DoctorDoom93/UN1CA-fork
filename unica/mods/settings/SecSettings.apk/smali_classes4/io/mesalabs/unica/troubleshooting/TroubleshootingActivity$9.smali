.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$onActivityResult$31"
    proto = "(Landroid/net/Uri;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$onActivityResult$31$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

