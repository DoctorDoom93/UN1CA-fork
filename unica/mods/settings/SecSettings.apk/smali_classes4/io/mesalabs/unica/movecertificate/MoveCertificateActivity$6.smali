.class public final synthetic Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;"
    method = "lambda$draw$5"
    proto = "(Ljava/io/File;Ljava/security/cert/X509Certificate;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/security/cert/X509Certificate;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iput-object p2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;->f$1:Ljava/io/File;

    iput-object p3, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;->f$2:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;->f$1:Ljava/io/File;

    iget-object v2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$6;->f$2:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1, v2}, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;->lambda$draw$5$io-mesalabs-unica-movecertificate-MoveCertificateActivity(Ljava/io/File;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

