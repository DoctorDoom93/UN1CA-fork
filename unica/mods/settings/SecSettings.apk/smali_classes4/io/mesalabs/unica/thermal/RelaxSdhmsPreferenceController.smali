.class public final Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "RelaxSdhmsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;
    }
.end annotation


# static fields
.field private static final PACKAGE:Ljava/lang/String; = "com.sec.android.sdhms"

.field private static final RECEIVER:Landroid/content/ComponentName;


# instance fields
.field private busy:Z

.field private checked:Z

.field private final context:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

.field private generation:I

.field private final handler:Landroid/os/Handler;

.field private known:Z

.field private preference:Landroidx/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 35
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.sdhms"

    const-string v2, "io.mesalabs.unica.thermal.RelaxPolicyReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->RECEIVER:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)I
    .registers 1

    .line 32
    iget p0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    return p0
.end method

.method static synthetic access$100(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)Landroid/os/Handler;
    .registers 1

    .line 32
    iget-object p0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method private apply(Z)V
    .registers 5

    .line 127
    iget v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    .line 128
    iput-boolean v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    .line 129
    const-string v1, "unica_relax_sdhms_applying"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    .line 130
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-instance v2, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;

    invoke-direct {v2, p0, v0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$6;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;IZ)V

    invoke-direct {p0, v1, v0, v2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->request(Ljava/lang/Boolean;ILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V

    .line 137
    return-void
.end method

.method private fail(I)V
    .registers 4

    .line 161
    new-instance v0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$4;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$4;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->request(Ljava/lang/Boolean;ILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V

    .line 167
    return-void
.end method

.method static synthetic lambda$setChecked$0(Landroid/content/DialogInterface;I)V
    .registers 2

    .line 97
    return-void
.end method

.method private poll(ZIIZJ)V
    .registers 16

    .line 140
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;

    new-instance v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;

    move-object v2, p0

    move v4, p1

    move v3, p2

    move v6, p3

    move v5, p4

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$2;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;IZZIJ)V

    const-wide/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method

.method private refresh(I)V
    .registers 4

    .line 107
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_5

    return-void

    .line 108
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    .line 109
    const-string v0, "unica_relax_sdhms_checking"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    .line 110
    new-instance v0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$0;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$0;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->request(Ljava/lang/Boolean;ILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V

    .line 124
    return-void
.end method

.method private render(Ljava/lang/String;Z)V
    .registers 5

    .line 206
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_5

    return-void

    .line 207
    :cond_5
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    iget-boolean v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 208
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p2}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    .line 209
    iget-object p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    invoke-direct {p0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method private request(Ljava/lang/Boolean;ILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V
    .registers 20

    .line 171
    move-object/from16 v1, p0

    move/from16 v3, p2

    move-object/from16 v5, p3

    new-instance v0, Landroid/content/Intent;

    const-string v2, "io.mesalabs.unica.thermal.POLICY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->RECEIVER:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    .line 172
    if-eqz p1, :cond_1e

    const-string v0, "enabled"

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 173
    :cond_1e
    const/4 v12, 0x1

    new-array v2, v12, [Z

    const/4 v13, 0x0

    aput-boolean v13, v2, v13

    .line 174
    new-instance v4, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;

    invoke-direct {v4, v1, v2, v3, v5}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$5;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;[ZILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V

    .line 180
    iget-object v0, v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;

    const-wide/16 v7, 0xfa0

    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    :try_start_30
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/BroadcastOptions;->setShareIdentityEnabled(Z)Landroid/app/BroadcastOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 183
    iget-object v8, v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    new-instance v0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;

    invoke-direct/range {v0 .. v5}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$1;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;[ZILjava/lang/Runnable;Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_43} :catch_5b

    move-object v15, v2

    move v2, v3

    move-object v14, v5

    move-object v3, v8

    :try_start_47
    iget-object v8, v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_49} :catch_59

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    move/from16 p1, v12

    move-object v12, v4

    move-object v4, v6

    move-object v6, v7

    move-object v7, v0

    :try_start_53
    invoke-virtual/range {v3 .. v11}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_56
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_56} :catch_57

    .line 199
    goto :goto_75

    .line 193
    :catch_57
    move-exception v0

    goto :goto_62

    :catch_59
    move-exception v0

    goto :goto_5f

    :catch_5b
    move-exception v0

    move-object v15, v2

    move v2, v3

    move-object v14, v5

    :goto_5f
    move/from16 p1, v12

    move-object v12, v4

    .line 194
    :goto_62
    iget-object v0, v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 195
    aget-boolean v0, v15, v13

    if-nez v0, :cond_75

    iget v0, v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    if-ne v2, v0, :cond_75

    .line 196
    aput-boolean p1, v15, v13

    .line 197
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;->done(Landroid/os/Bundle;)V

    .line 200
    :cond_75
    :goto_75
    return-void
.end method

.method private text(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 203
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "com.android.settings"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 60
    const-string v0, "unica_relax_sdhms"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    .line 61
    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->preference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setPersistent(Z)V

    .line 62
    :cond_17
    const-string p1, "unica_relax_sdhms_checking"

    invoke-direct {p0, p1, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 6

    .line 50
    const-string v0, "dm3q"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_14

    goto :goto_3a

    .line 52
    :cond_14
    :try_start_14
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v2, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->RECEIVER:Landroid/content/ComponentName;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 54
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sec.android.sdhms"

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_32} :catch_38

    if-nez v0, :cond_36

    .line 54
    move v1, v3

    goto :goto_37

    :cond_36
    nop

    .line 53
    :goto_37
    return v1

    .line 55
    :catch_38
    move-exception v0

    return v1

    .line 50
    :cond_3a
    :goto_3a
    return v1
.end method

.method public getSliceHighlightMenuRes()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 65
    iget-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    return v0
.end method

.method synthetic lambda$apply$5$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(IZLandroid/os/Bundle;)V
    .registers 12

    .line 131
    if-nez p3, :cond_6

    invoke-direct {p0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->fail(I)V

    return-void

    .line 132
    :cond_6
    const-string v0, "pid"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x61a8

    add-long v6, v0, v2

    .line 134
    const-string v0, "restarting"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 135
    move-object v1, p0

    move v3, p1

    move v2, p2

    invoke-direct/range {v1 .. v7}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->poll(ZIIZJ)V

    .line 136
    return-void
.end method

.method synthetic lambda$fail$8$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(Landroid/os/Bundle;)V
    .registers 4

    .line 162
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    iput-boolean v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->known:Z

    .line 163
    if-eqz p1, :cond_12

    const-string v1, "marker"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    .line 164
    :cond_12
    iput-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    .line 165
    const-string p1, "unica_relax_sdhms_failed"

    iget-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->known:Z

    invoke-direct {p0, p1, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    .line 166
    return-void
.end method

.method synthetic lambda$poll$6$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(ZZIJILandroid/os/Bundle;)V
    .registers 15

    .line 143
    if-eqz p7, :cond_3f

    const-string v0, "ready"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "restarting"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 144
    const-string v0, "marker"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_3f

    .line 145
    const-string v0, "loaded"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, p1, :cond_3f

    if-eqz p2, :cond_2c

    .line 146
    const-string v0, "pid"

    invoke-virtual {p7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p7

    if-eq p7, p3, :cond_3f

    .line 147
    :cond_2c
    iput-boolean p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    .line 148
    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->known:Z

    .line 149
    const/4 p3, 0x0

    iput-boolean p3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    .line 150
    if-eqz p1, :cond_39

    const-string p1, "unica_relax_sdhms_on"

    goto :goto_3b

    :cond_39
    const-string p1, "unica_relax_sdhms_off"

    :goto_3b
    invoke-direct {p0, p1, p2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    goto :goto_55

    .line 151
    :cond_3f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long p7, v0, p4

    if-gez p7, :cond_51

    .line 152
    move-object v0, p0

    move v1, p1

    move v4, p2

    move v3, p3

    move-wide v5, p4

    move v2, p6

    invoke-direct/range {v0 .. v6}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->poll(ZIIZJ)V

    goto :goto_55

    .line 153
    :cond_51
    move v2, p6

    invoke-direct {p0, v2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->fail(I)V

    .line 154
    :goto_55
    return-void
.end method

.method synthetic lambda$poll$7$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(IZZIJ)V
    .registers 16

    .line 141
    iget v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    if-eq p1, v0, :cond_5

    return-void

    .line 142
    :cond_5
    new-instance v1, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;

    move-object v2, p0

    move v8, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$3;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;ZZIJI)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, v8, v1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->request(Ljava/lang/Boolean;ILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V

    .line 155
    return-void
.end method

.method synthetic lambda$refresh$4$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(Landroid/os/Bundle;)V
    .registers 6

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    .line 112
    if-nez p1, :cond_d

    .line 113
    iput-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->known:Z

    .line 114
    const-string p1, "unica_relax_sdhms_unavailable"

    invoke-direct {p0, p1, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    .line 115
    return-void

    .line 117
    :cond_d
    const-string v1, "marker"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    .line 118
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->known:Z

    .line 119
    const-string v2, "ready"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    const-string v2, "restarting"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-boolean v2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    .line 120
    const-string v3, "loaded"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne v2, p1, :cond_34

    move v0, v1

    goto :goto_35

    :cond_34
    nop

    .line 121
    :goto_35
    if-eqz v0, :cond_41

    iget-boolean p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    if-eqz p1, :cond_3e

    const-string p1, "unica_relax_sdhms_on"

    goto :goto_43

    :cond_3e
    const-string p1, "unica_relax_sdhms_off"

    goto :goto_43

    .line 122
    :cond_41
    const-string p1, "unica_relax_sdhms_pending"

    :goto_43
    nop

    .line 121
    invoke-direct {p0, p1, v1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->render(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method

.method synthetic lambda$request$9$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController([ZILio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;)V
    .registers 6

    .line 175
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    if-nez v1, :cond_10

    iget v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    if-ne p2, v1, :cond_10

    .line 176
    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    .line 177
    const/4 p1, 0x0

    invoke-interface {p3, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$Callback;->done(Landroid/os/Bundle;)V

    .line 179
    :cond_10
    return-void
.end method

.method synthetic lambda$setChecked$1$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 98
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->apply(Z)V

    return-void
.end method

.method synthetic lambda$setChecked$2$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(Landroid/content/DialogInterface;)V
    .registers 2

    .line 100
    const/4 p1, 0x0

    iput-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$setChecked$3$io-mesalabs-unica-thermal-RelaxSdhmsPreferenceController(ILandroid/content/DialogInterface;)V
    .registers 4

    .line 101
    iget-object p2, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 72
    invoke-virtual {p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_f

    iget v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    invoke-direct {p0, v0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->refresh(I)V

    .line 73
    :cond_f
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 75
    iget v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    .line 77
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 79
    :cond_18
    iput-object v1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    .line 80
    return-void
.end method

.method public setChecked(Z)Z
    .registers 7

    .line 83
    iget-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->known:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a1

    iget-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    if-nez v0, :cond_a1

    iget-boolean v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->checked:Z

    if-eq p1, v0, :cond_a1

    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_13

    goto/16 :goto_a1

    .line 84
    :cond_13
    if-nez p1, :cond_19

    .line 85
    invoke-direct {p0, v1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->apply(Z)V

    .line 86
    return v1

    .line 88
    :cond_19
    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    move p1, v1

    .line 90
    :goto_2e
    if-eqz p1, :cond_33

    const-string p1, "#FF8A80"

    goto :goto_35

    :cond_33
    const-string p1, "#B3261E"

    :goto_35
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    .line 91
    new-instance v0, Landroid/text/SpannableString;

    const-string v2, "unica_relax_sdhms_warning"

    invoke-direct {p0, v2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 94
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    const-string v3, "unica_relax_sdhms_warning_title"

    invoke-direct {p0, v3}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$7;

    invoke-direct {v2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$7;-><init>()V

    .line 97
    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 98
    const-string v2, "unica_relax_sdhms_enable"

    invoke-direct {p0, v2}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$8;

    invoke-direct {v3, p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$8;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    .line 100
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    new-instance v2, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$9;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$9;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    iget-object v0, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    new-instance v2, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;

    invoke-direct {v2, p0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController$10;-><init>(Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;I)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 102
    iget-object p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 103
    return v1

    .line 83
    :cond_a1
    :goto_a1
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 69
    iget-boolean p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->busy:Z

    if-nez p1, :cond_16

    invoke-virtual {p0}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->getAvailabilityStatus()I

    move-result p1

    if-nez p1, :cond_16

    iget p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->generation:I

    invoke-direct {p0, p1}, Lio/mesalabs/unica/thermal/RelaxSdhmsPreferenceController;->refresh(I)V

    .line 70
    :cond_16
    return-void
.end method

