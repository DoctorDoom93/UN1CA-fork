.class public final synthetic Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;"
    method = "lambda$details$8"
    proto = "(Ljava/io/File;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;Ljava/io/File;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$0;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iput-object p2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$0;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$0;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$0;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1, p1, p2}, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;->lambda$details$8$io-mesalabs-unica-movecertificate-MoveCertificateActivity(Ljava/io/File;Landroid/content/DialogInterface;I)V

    return-void
.end method

