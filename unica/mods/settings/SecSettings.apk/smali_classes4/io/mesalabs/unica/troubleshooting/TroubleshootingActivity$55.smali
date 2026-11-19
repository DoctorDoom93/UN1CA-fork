.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$55;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$onCreate$4"
    proto = "(Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$55;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$55;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    invoke-virtual {v0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$onCreate$4$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/content/DialogInterface;)V

    return-void
.end method

