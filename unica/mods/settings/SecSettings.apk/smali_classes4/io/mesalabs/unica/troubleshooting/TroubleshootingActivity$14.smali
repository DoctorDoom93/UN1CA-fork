.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$preview$44"
    proto = "(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/AlertDialog;Landroid/view/View;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$3:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;->f$3:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1, v2, v3, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$preview$44$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

