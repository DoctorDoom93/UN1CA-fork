.class public final synthetic Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;"
    method = "lambda$draw$6"
    proto = "(Ljava/io/File;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$7;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iput-object p2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$7;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$7;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$7;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;->lambda$draw$6$io-mesalabs-unica-movecertificate-MoveCertificateActivity(Ljava/io/File;)V

    return-void
.end method

