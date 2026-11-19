.class public final synthetic Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;"
    method = "lambda$setChecked$2"
    proto = "(Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$9;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$9;->f$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    invoke-virtual {v0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->lambda$setChecked$2$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(Landroid/content/DialogInterface;)V

    return-void
.end method

