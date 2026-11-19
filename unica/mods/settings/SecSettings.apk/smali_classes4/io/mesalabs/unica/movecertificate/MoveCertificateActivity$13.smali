.class public final synthetic Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$13;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;"
    method = "lambda$onActivityResult$10"
    proto = "(Ljava/security/cert/X509Certificate;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

.field public final synthetic f$1:Ljava/security/cert/X509Certificate;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;Ljava/security/cert/X509Certificate;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$13;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iput-object p2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$13;->f$1:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$13;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$13;->f$1:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1, p1, p2}, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;->lambda$onActivityResult$10$io-mesalabs-unica-movecertificate-MoveCertificateActivity(Ljava/security/cert/X509Certificate;Landroid/content/DialogInterface;I)V

    return-void
.end method

