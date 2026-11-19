.class public final synthetic Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;"
    method = "lambda$apply$5"
    proto = "(IZLandroid/os/Bundle;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;IZ)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iput p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;->f$1:I

    iput-boolean p3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;->f$2:Z

    return-void
.end method


# virtual methods
.method public final done(Landroid/os/Bundle;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iget v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;->f$1:I

    iget-boolean v2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;->f$2:Z

    invoke-virtual {v0, v1, v2, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->lambda$apply$5$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(IZLandroid/os/Bundle;)V

    return-void
.end method

