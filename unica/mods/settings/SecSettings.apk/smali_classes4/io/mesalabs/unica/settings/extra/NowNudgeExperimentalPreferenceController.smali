.class public Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NowNudgeExperimentalPreferenceController.java"


# instance fields
.field private backendPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


.method private updateBackendVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->backendPreference:Landroidx/preference/Preference;

    if-eqz v0, :backend_not_bound

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :backend_not_bound
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "unica_ai_backend"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->backendPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->updateBackendVisibility(Z)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->updateBackendVisibility(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "unica_now_nudge_experimental"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    invoke-direct {p0, p1}, Lio/mesalabs/unica/settings/extra/NowNudgeExperimentalPreferenceController;->updateBackendVisibility(Z)V

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "unica_now_nudge_experimental"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_disable

    const-string v0, "sss_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "now_nudge_setting"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "now_nudge_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "ai_info_confirmed"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "content_capture_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_return

    :cond_disable
    const-string v0, "now_nudge_setting"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "now_nudge_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_return
    const/4 p0, 0x1

    return p0
.end method
