.class public final synthetic Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;"
    method = "lambda$poll$7"
    proto = "(IZZIJ)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z

.field public final synthetic f$4:I

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;IZZIJ)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iput p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$1:I

    iput-boolean p3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$2:Z

    iput-boolean p4, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$3:Z

    iput p5, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$4:I

    iput-wide p6, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iget v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$1:I

    iget-boolean v2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$2:Z

    iget-boolean v3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$3:Z

    iget v4, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$4:I

    iget-wide v5, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->lambda$poll$7$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(IZZIJ)V

    return-void
.end method

