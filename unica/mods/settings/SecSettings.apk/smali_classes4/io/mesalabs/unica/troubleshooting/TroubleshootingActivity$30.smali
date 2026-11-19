.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$draw$14"
    proto = "(Landroid/widget/TextView;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Landroid/widget/TextView;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/widget/TextView;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;->f$1:Landroid/widget/TextView;

    iput p3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;->f$1:Landroid/widget/TextView;

    iget v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;->f$2:I

    invoke-virtual {v0, v1, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$draw$14$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/widget/TextView;I)V

    return-void
.end method

