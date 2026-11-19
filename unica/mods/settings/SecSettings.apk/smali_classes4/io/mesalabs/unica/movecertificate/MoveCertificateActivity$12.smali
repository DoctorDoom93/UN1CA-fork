.class public final synthetic Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;"
    method = "lambda$onActivityResult$12"
    proto = "(Ljava/lang/Exception;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

.field public final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;Ljava/lang/Exception;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$12;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iput-object p2, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$12;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$12;->f$0:Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity$12;->f$1:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/movecertificate/MoveCertificateActivity;->lambda$onActivityResult$12$io-mesalabs-unica-movecertificate-MoveCertificateActivity(Ljava/lang/Exception;)V

    return-void
.end method

