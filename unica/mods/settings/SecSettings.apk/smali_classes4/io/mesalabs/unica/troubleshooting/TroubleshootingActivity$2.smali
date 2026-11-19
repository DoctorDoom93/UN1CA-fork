.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$confirmModule$22"
    proto = "(Lorg/json/JSONObject;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;->f$1:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;->f$1:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$confirmModule$22$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;)V

    return-void
.end method

