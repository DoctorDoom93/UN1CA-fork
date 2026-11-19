.class public final synthetic Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;"
    method = "lambda$preview$43"
    proto = "(Landroid/widget/EditText;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$12;->f$0:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$12;->f$0:Landroid/widget/EditText;

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lambda$preview$43(Landroid/widget/EditText;)V

    return-void
.end method

