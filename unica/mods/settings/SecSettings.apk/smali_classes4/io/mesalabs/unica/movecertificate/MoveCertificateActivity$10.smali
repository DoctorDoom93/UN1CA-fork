.class public final synthetic Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;"
    method = "lambda$onActivityResult$13"
    proto = "(Landroid/content/Intent;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;Landroid/content/Intent;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$10;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iput-object p2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$10;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$10;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$10;->f$1:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;->lambda$onActivityResult$13$io-mesalabs-unica-movecertificate-MoveCertificateActivity(Landroid/content/Intent;)V

    return-void
.end method

