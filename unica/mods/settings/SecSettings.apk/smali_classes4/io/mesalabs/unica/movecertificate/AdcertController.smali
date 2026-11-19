.class public final Lio/mesalabs/unica/movecertificate/AdcertController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AdcertController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field private static final FLAG:Ljava/io/File;

.field private static final ROOT:Ljava/io/File;

.field private static final USER:Ljava/io/File;


# instance fields
.field private final context:Landroid/content/Context;

.field private preference:Landroidx/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 21
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/unica_movecert"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->ROOT:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lio/mesalabs/unica/movecertificate/AdcertController;->ROOT:Ljava/io/File;

    const-string v2, "request/adcert_enabled"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->FLAG:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/user/0/cacerts-added"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->USER:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->context:Landroid/content/Context;

    return-void
.end method

.method private configured()Z
    .registers 5

    .line 41
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lio/mesalabs/unica/movecertificate/AdcertController;->FLAG:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_21

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_17

    const/16 v3, 0x31

    if-ne v2, v3, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    move v2, v0

    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_21

    return v2

    :catchall_17
    move-exception v2

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_20

    :catchall_1c
    move-exception v1

    :try_start_1d
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_20
    throw v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_21} :catch_21

    :catch_21
    move-exception v1

    return v0
.end method

.method private disableMissing()V
    .registers 4

    .line 42
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->configured()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    sget-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->FLAG:Ljava/io/File;

    const-string v1, "0\n"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lio/mesalabs/unica/movecertificate/Certificates;->atomic(Ljava/io/File;[B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_14

    goto :goto_15

    :catch_14
    move-exception v0

    :cond_15
    :goto_15
    return-void
.end method

.method static synthetic lambda$personal$0(Ljava/io/File;)Z
    .registers 2

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0f4ed297\\.[0-9]{1,5}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method static synthetic lambda$personal$1(Ljava/io/File;Ljava/io/File;)I
    .registers 3

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private owner()Z
    .registers 3

    .line 27
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const v1, 0x186a0

    div-int/2addr v0, v1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static personal(Ljava/io/File;)Ljava/io/File;
    .registers 6

    .line 29
    new-instance v0, Lio/mesalabs/unica/movecertificate/AdcertController$0;

    invoke-direct {v0}, Lio/mesalabs/unica/movecertificate/AdcertController$0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 30
    const/4 v0, 0x0

    if-nez p0, :cond_d

    return-object v0

    .line 31
    :cond_d
    new-instance v1, Lio/mesalabs/unica/movecertificate/AdcertController$1;

    invoke-direct {v1}, Lio/mesalabs/unica/movecertificate/AdcertController$1;-><init>()V

    invoke-static {p0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 32
    array-length v1, p0

    if-nez v1, :cond_19

    return-object v0

    .line 34
    :cond_19
    :try_start_19
    new-instance v1, Ljava/io/FileInputStream;

    const/4 v2, 0x0

    aget-object v3, p0, v2

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_50

    .line 35
    :try_start_21
    invoke-static {v1}, Lio/mesalabs/unica/movecertificate/Certificates;->read(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-static {v3}, Lio/mesalabs/unica/movecertificate/Certificates;->parse([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 36
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    .line 37
    const-string v4, "CN=AdGuard Personal CA,O=AdGuard,C=EN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_3a
    .catchall {:try_start_21 .. :try_end_3a} :catchall_46

    if-nez v3, :cond_40

    .line 39
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_50

    .line 37
    return-object v0

    .line 38
    :cond_40
    :try_start_40
    aget-object p0, p0, v2
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_46

    .line 39
    :try_start_42
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_50

    .line 38
    return-object p0

    .line 34
    :catchall_46
    move-exception p0

    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v1

    :try_start_4c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw p0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_50

    .line 39
    :catch_50
    move-exception p0

    return-object v0
.end method

.method private render()V
    .registers 6

    .line 48
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->owner()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    sget-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->ROOT:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    if-eqz v0, :cond_24

    sget-object v3, Lio/mesalabs/unica/movecertificate/AdcertController;->USER:Ljava/io/File;

    invoke-static {v3}, Lio/mesalabs/unica/movecertificate/AdcertController;->personal(Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_24

    move v3, v1

    goto :goto_25

    :cond_24
    move v3, v2

    .line 49
    :goto_25
    if-eqz v0, :cond_2c

    if-nez v3, :cond_2c

    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->disableMissing()V

    .line 50
    :cond_2c
    if-eqz v3, :cond_35

    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->configured()Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    iget-object v2, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v3}, Landroidx/preference/TwoStatePreference;->setEnabled(Z)V

    iget-object v2, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v2, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 51
    iget-object v2, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_47

    const-string v0, "unavailable"

    goto :goto_53

    :cond_47
    if-nez v3, :cond_4c

    const-string v0, "missing"

    goto :goto_53

    :cond_4c
    if-eqz v1, :cond_51

    const-string v0, "on"

    goto :goto_53

    :cond_51
    const-string v0, "off"

    :goto_53
    invoke-direct {p0, v0}, Lio/mesalabs/unica/movecertificate/AdcertController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/preference/TwoStatePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 52
    return-void
.end method

.method private text(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 26
    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unica_adcert_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "string"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "unica_adcert"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    iget-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setPersistent(Z)V

    :cond_17
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->render()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 2

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public getSliceHighlightMenuRes()I
    .registers 2

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .line 43
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->owner()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->ROOT:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->USER:Ljava/io/File;

    invoke-static {v0}, Lio/mesalabs/unica/movecertificate/AdcertController;->personal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->configured()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public onStart()V
    .registers 1

    .line 46
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->render()V

    return-void
.end method

.method public setChecked(Z)Z
    .registers 6

    .line 54
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->owner()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    sget-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->ROOT:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_54

    if-eqz p1, :cond_1a

    sget-object v0, Lio/mesalabs/unica/movecertificate/AdcertController;->USER:Ljava/io/File;

    invoke-static {v0}, Lio/mesalabs/unica/movecertificate/AdcertController;->personal(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_54

    .line 55
    :cond_1a
    const/4 v0, 0x1

    :try_start_1b
    sget-object v2, Lio/mesalabs/unica/movecertificate/AdcertController;->FLAG:Ljava/io/File;

    if-eqz p1, :cond_22

    const-string p1, "1\n"

    goto :goto_24

    :cond_22
    const-string p1, "0\n"

    :goto_24
    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {v2, p1}, Lio/mesalabs/unica/movecertificate/Certificates;->atomic(Ljava/io/File;[B)V

    iget-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->context:Landroid/content/Context;

    const-string v2, "reboot"

    invoke-direct {p0, v2}, Lio/mesalabs/unica/movecertificate/AdcertController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->render()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_3f} :catch_40

    return v0

    .line 56
    :catch_40
    move-exception p1

    iget-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->context:Landroid/content/Context;

    const-string v2, "write_failed"

    invoke-direct {p0, v2}, Lio/mesalabs/unica/movecertificate/AdcertController;->text(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->render()V

    return v1

    .line 54
    :cond_54
    :goto_54
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->render()V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_b

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lio/mesalabs/unica/movecertificate/AdcertController;->preference:Landroidx/preference/TwoStatePreference;

    :cond_b
    invoke-direct {p0}, Lio/mesalabs/unica/movecertificate/AdcertController;->render()V

    return-void
.end method

