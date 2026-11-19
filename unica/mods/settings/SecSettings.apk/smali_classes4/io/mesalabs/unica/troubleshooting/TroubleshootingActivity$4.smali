.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$scan$20"
    proto = "(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

.field public final synthetic f$1:Lorg/json/JSONObject;

.field public final synthetic f$2:Lorg/json/JSONArray;

.field public final synthetic f$3:Lorg/json/JSONObject;

.field public final synthetic f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$1:Lorg/json/JSONObject;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$2:Lorg/json/JSONArray;

    iput-object p4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$3:Lorg/json/JSONObject;

    iput-object p5, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$0:Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$1:Lorg/json/JSONObject;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$2:Lorg/json/JSONArray;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$3:Lorg/json/JSONObject;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;->f$4:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$scan$20$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

