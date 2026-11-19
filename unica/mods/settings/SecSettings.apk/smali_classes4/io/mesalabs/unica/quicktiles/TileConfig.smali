.class public final Lio/mesalabs/unica/quicktiles/TileConfig;
.super Ljava/lang/Object;
.source "TileConfig.java"


# static fields
.field static final ACTIONS:[Ljava/lang/String;

.field public static final COUNT:I = 0x8

.field static final NAMES:[Ljava/lang/String;

.field static final PRESETS:[Ljava/lang/String;

.field static final SERVICES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 14
    const-string v7, "preset"

    const-string v8, "activity"

    const-string v0, "none"

    const-string v1, "dns"

    const-string v2, "restart"

    const-string v3, "wifi_adb"

    const-string v4, "usb_adb"

    const-string v5, "app"

    const-string v6, "shortcut"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->ACTIONS:[Ljava/lang/String;

    .line 15
    const-string v8, "Predefined action"

    const-string v9, "App activity"

    const-string v1, "Not configured"

    const-string v2, "Private DNS"

    const-string v3, "Restart SystemUI"

    const-string v4, "Wireless debugging"

    const-string v5, "USB debugging"

    const-string v6, "Open app"

    const-string v7, "App shortcut"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->NAMES:[Ljava/lang/String;

    .line 16
    const-string v7, "Bluetooth settings"

    const-string v8, "Wireless debugging settings"

    const-string v1, "Camera"

    const-string v2, "Record video"

    const-string v3, "Dial a number"

    const-string v4, "New message"

    const-string v5, "Set alarm"

    const-string v6, "Wi-Fi settings"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->PRESETS:[Ljava/lang/String;

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot1;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot2;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot3;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot4;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot5;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot6;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot7;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lio/mesalabs/unica/quicktiles/QuickTile$Slot8;

    aput-object v2, v0, v1

    sput-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->SERVICES:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static action(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 20
    const-string v0, "action"

    const-string v1, "none"

    invoke-static {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static activityAvailable(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z
    .registers 3

    .line 66
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1c

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 67
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    .line 66
    :goto_1d
    return p0
.end method

.method static activityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 70
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->activityAvailable(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 73
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 72
    :cond_24
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This activity is not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static component(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 4

    .line 26
    new-instance v0, Landroid/content/ComponentName;

    sget-object v1, Lio/mesalabs/unica/quicktiles/TileConfig;->SERVICES:[Ljava/lang/Class;

    aget-object p1, v1, p1

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static dnsMode(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 34
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "private_dns_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "private_dns_default_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_1c
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_26

    :cond_24
    const-string v0, "opportunistic"

    :cond_26
    return-object v0
.end method

.method static get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 19
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static hostname(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfd

    if-gt v0, v1, :cond_65

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_65

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    const-string v0, "[0-9.]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 30
    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_39
    if-ge v2, v1, :cond_64

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_5c

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5c

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid DNS provider hostname"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_64
    return-object p0

    .line 29
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Enter a DNS provider hostname, such as dns.google"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static icon(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;
    .registers 9

    .line 40
    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "icon"

    const-string v2, "auto"

    invoke-static {p0, p1, v1, v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "app"

    if-eqz v3, :cond_4a

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "shortcut"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "activity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 44
    :cond_2a
    :try_start_2a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v5, "package"

    const-string v6, ""

    invoke-static {p0, p1, v5, v6}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 45
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v3, :cond_49

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0
    :try_end_47
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_47} :catch_48

    return-object p0

    .line 46
    :catch_48
    move-exception p1

    :cond_49
    nop

    .line 48
    :cond_4a
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_52

    :cond_51
    move-object v0, v1

    .line 49
    :goto_52
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unica_qt_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "dns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :goto_65
    move-object v4, v1

    goto :goto_85

    :cond_67
    const-string v1, "restart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    goto :goto_65

    :cond_70
    const-string v1, "wifi_adb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    const-string v4, "wifi"

    goto :goto_85

    :cond_7b
    const-string v1, "usb_adb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string v4, "usb"

    :cond_85
    :goto_85
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method static label(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UN1CA Tile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-static {p0, p1, v1, v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static launchIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 6

    .line 77
    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "package"

    const-string v3, ""

    if-eqz v0, :cond_26

    .line 78
    :try_start_10
    invoke-static {p0, p1, v2, v3}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v1, v3}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->activityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1c} :catch_1d

    return-object p0

    .line 79
    :catch_1d
    move-exception p0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This activity is no longer available. Choose it again in Quick Tiles."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_26
    const-string v0, "app"

    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0, p1, v2, v3}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    goto :goto_4f

    .line 82
    :cond_3f
    const-string v0, "preset"

    const-string v1, "0"

    invoke-static {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->preset(I)Landroid/content/Intent;

    move-result-object p1

    .line 83
    :goto_4f
    if-eqz p1, :cond_77

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 85
    if-eqz p0, :cond_6f

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_6f

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz p0, :cond_6f

    .line 86
    const/high16 p0, 0x10000000

    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 87
    return-object p1

    .line 85
    :cond_6f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This action is not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_77
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This app is no longer available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static name(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 22
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v2, Lio/mesalabs/unica/quicktiles/TileConfig;->ACTIONS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_19

    sget-object v2, Lio/mesalabs/unica/quicktiles/TileConfig;->ACTIONS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object p0, Lio/mesalabs/unica/quicktiles/TileConfig;->NAMES:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 23
    :cond_19
    sget-object p0, Lio/mesalabs/unica/quicktiles/TileConfig;->NAMES:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0
.end method

.method static nextDnsMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 38
    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "opportunistic"

    if-eqz v1, :cond_c

    move-object v0, v2

    goto :goto_14

    :cond_c
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    const-string v0, "hostname"

    :cond_14
    :goto_14
    return-object v0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 18
    const-string v0, "unica_quick_tiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static preset(I)Landroid/content/Intent;
    .registers 3

    .line 53
    packed-switch p0, :pswitch_data_52

    .line 62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown predefined action"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :pswitch_b
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIRELESS_DEBUGGING_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 60
    :pswitch_13
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 59
    :pswitch_1b
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.WIFI_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 58
    :pswitch_23
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_ALARM"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 57
    :pswitch_2b
    new-instance p0, Landroid/content/Intent;

    const-string v0, "smsto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {p0, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object p0

    .line 56
    :pswitch_39
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 55
    :pswitch_41
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.action.VIDEO_CAMERA"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 54
    :pswitch_49
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_49
        :pswitch_41
        :pswitch_39
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
        :pswitch_b
    .end packed-switch
.end method

.method public static routeLongPress(Landroid/app/Activity;)Z
    .registers 5

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    const-class v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 91
    const/4 v1, 0x0

    if-nez v0, :cond_12

    return v1

    .line 92
    :cond_12
    move v2, v1

    :goto_13
    const/16 v3, 0x8

    if-ge v2, v3, :cond_39

    .line 93
    invoke-static {p0, v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->component(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/mesalabs/unica/quicktiles/ConfigActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "slot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    const/4 p0, 0x1

    return p0

    .line 92
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 99
    :cond_39
    return v1
.end method

