.class public final synthetic Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;"
    method = "lambda$request$9"
    proto = "([ZILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;[ZILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iput-object p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$1:[Z

    iput p3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$2:I

    iput-object p4, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$3:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iget-object v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$1:[Z

    iget v2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$2:I

    iget-object v3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;->f$3:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;

    invoke-virtual {v0, v1, v2, v3}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->lambda$request$9$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController([ZILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V

    return-void
.end method

