.class public final synthetic Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;"
    method = "lambda$poll$6"
    proto = "(ZZIJILandroid/os/Bundle;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z

.field public final synthetic f$3:I

.field public final synthetic f$4:J

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;ZZIJI)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iput-boolean p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$1:Z

    iput-boolean p3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$2:Z

    iput p4, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$3:I

    iput-wide p5, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$4:J

    iput p7, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$5:I

    return-void
.end method


# virtual methods
.method public final done(Landroid/os/Bundle;)V
    .registers 10

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iget-boolean v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$1:Z

    iget-boolean v2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$2:Z

    iget v3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$3:I

    iget-wide v4, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$4:J

    iget v6, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;->f$5:I

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->lambda$poll$6$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(ZZIJILandroid/os/Bundle;)V

    return-void
.end method

