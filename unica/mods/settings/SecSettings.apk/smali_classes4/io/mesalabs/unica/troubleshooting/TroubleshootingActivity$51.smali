.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$confirmModule$25"
    proto = "(ZLorg/json/JSONObject;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;ZLorg/json/JSONObject;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-boolean p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;->f$1:Z

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;->f$2:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-boolean v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;->f$1:Z

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;->f$2:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$confirmModule$25$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(ZLorg/json/JSONObject;Landroid/content/DialogInterface;I)V

    return-void
.end method

