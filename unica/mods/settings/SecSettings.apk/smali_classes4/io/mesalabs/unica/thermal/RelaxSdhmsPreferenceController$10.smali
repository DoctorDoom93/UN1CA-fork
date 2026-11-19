.class public final synthetic Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;"
    method = "lambda$setChecked$3"
    proto = "(ILandroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iput p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;->f$1:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iget v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;->f$1:I

    invoke-virtual {v0, v1, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->lambda$setChecked$3$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(ILandroid/content/DialogInterface;)V

    return-void
.end method

