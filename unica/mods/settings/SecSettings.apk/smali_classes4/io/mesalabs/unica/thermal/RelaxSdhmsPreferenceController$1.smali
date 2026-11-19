.class Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "RelaxSdhmsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->request(Ljava/lang/Boolean;ILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

.field final synthetic val$callback:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;

.field final synthetic val$delivered:[Z

.field final synthetic val$timeout:Ljava/lang/Runnable;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;[ZILjava/lang/Runnable;Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 183
    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->this$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    iput-object p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$delivered:[Z

    iput p3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$token:I

    iput-object p4, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$timeout:Ljava/lang/Runnable;

    iput-object p5, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$callback:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 185
    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$delivered:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-nez p1, :cond_40

    iget p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$token:I

    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->this$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    # getter for: Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I
    invoke-static {v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->access$000(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)I

    move-result v0

    if-eq p1, v0, :cond_12

    goto :goto_40

    .line 186
    :cond_12
    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$delivered:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, p2

    .line 187
    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->this$0:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;

    # getter for: Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->access$100(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$timeout:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    invoke-virtual {p0, p2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 189
    iget-object p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->val$callback:Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;

    .line 190
    nop

    .line 189
    invoke-virtual {p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3b

    if-eqz p1, :cond_3b

    .line 190
    const-string v1, "protocol"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 p1, 0x0

    .line 189
    :goto_3c
    invoke-interface {p2, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;->done(Landroid/os/Bundle;)V

    .line 191
    return-void

    .line 185
    :cond_40
    :goto_40
    return-void
.end method

