.class public abstract Lio/mesalabs/unica/quicktiles/QuickTile;
.super Landroid/service/quicksettings/TileService;
.source "QuickTile.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot8;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot7;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot6;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot5;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot4;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot3;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot2;,
        Lio/mesalabs/unica/quicktiles/QuickTile$Slot1;
    }
.end annotation


# instance fields
.field private final observer:Landroid/database/ContentObserver;

.field private observing:Z


# direct methods
.method public static synthetic $r8$lambda$4iy4GDl070yHkCA880q9hRvJsZo(Lio/mesalabs/unica/quicktiles/QuickTile;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->execute()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 16
    new-instance v0, Lio/mesalabs/unica/quicktiles/QuickTile$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile$1;-><init>(Lio/mesalabs/unica/quicktiles/QuickTile;Landroid/os/Handler;)V

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observer:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lio/mesalabs/unica/quicktiles/QuickTile;)V
    .registers 1

    .line 13
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->refresh()V

    return-void
.end method

.method private execute()V
    .registers 10

    .line 75
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v1

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_1b0

    const/4 v3, 0x2

    const-string v4, "wifi_adb"

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_1cc

    :cond_14
    goto :goto_63

    :sswitch_15
    :try_start_15
    const-string v2, "restart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    goto :goto_64

    :sswitch_1f
    const-string v2, "dns"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v5

    goto :goto_64

    :sswitch_29
    const-string v2, "app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x4

    goto :goto_64

    :sswitch_33
    const-string v2, "usb_adb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v3

    goto :goto_64

    :sswitch_3d
    const-string v2, "shortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x7

    goto :goto_64

    :sswitch_47
    const-string v2, "preset"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x6

    goto :goto_64

    :sswitch_51
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v0

    goto :goto_64

    :sswitch_59
    const-string v2, "activity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_5f} :catch_1b0

    if-eqz v2, :cond_14

    const/4 v2, 0x5

    goto :goto_64

    :goto_63
    const/4 v2, -0x1

    :goto_64
    const-string v6, "slot"

    packed-switch v2, :pswitch_data_1ee

    .line 110
    :try_start_69
    new-instance v1, Landroid/content/Intent;

    goto/16 :goto_19f

    .line 109
    :pswitch_6d
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/mesalabs/unica/quicktiles/ShortcutActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->open(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 108
    :pswitch_81
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v1

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->launchIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->open(Landroid/content/Intent;)V

    goto/16 :goto_1af

    .line 104
    :pswitch_8e
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_cb

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_cb

    .line 106
    const-class v2, Landroid/app/ActivityManager;

    const-string v4, "killUid"

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v0

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Landroid/app/ActivityManager;

    invoke-virtual {p0, v3}, Lio/mesalabs/unica/quicktiles/QuickTile;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "UN1CA Quick Tile restart"

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    goto/16 :goto_1af

    .line 105
    :cond_cb
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexpected SystemUI UID; restart cancelled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_d3
    const-string v2, "no_debugging_features"

    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/QuickTile;->restricted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_143

    .line 89
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e4

    const-string v2, "adb_wifi_enabled"

    goto :goto_e6

    :cond_e4
    const-string v2, "adb_enabled"

    .line 90
    :goto_e6
    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/QuickTile;->setting(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_ee

    move v3, v0

    goto :goto_ef

    :cond_ee
    move v3, v5

    .line 91
    :goto_ef
    if-eqz v3, :cond_102

    const-string v6, "development_settings_enabled"

    invoke-direct {p0, v6}, Lio/mesalabs/unica/quicktiles/QuickTile;->setting(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_fa

    goto :goto_102

    :cond_fa
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Enable Developer options first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_102
    :goto_102
    if-eqz v3, :cond_138

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_138

    .line 93
    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 94
    nop

    .line 95
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v4

    array-length v6, v4

    move v7, v5

    :goto_119
    if-ge v5, v6, :cond_12d

    aget-object v8, v4, v5

    .line 96
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v8

    .line 97
    if-eqz v8, :cond_12a

    invoke-virtual {v8, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v8

    if-eqz v8, :cond_12a

    move v7, v0

    .line 95
    :cond_12a
    add-int/lit8 v5, v5, 0x1

    goto :goto_119

    .line 99
    :cond_12d
    if-eqz v7, :cond_130

    goto :goto_138

    :cond_130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Connect to Wi-Fi first"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_138
    :goto_138
    if-eqz v3, :cond_13d

    const-string v1, "1"

    goto :goto_13f

    :cond_13d
    const-string v1, "0"

    :goto_13f
    invoke-direct {p0, v2, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    goto :goto_1af

    .line 88
    :cond_143
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Debugging is restricted by your administrator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_14b
    const-string v1, "disallow_config_private_dns"

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->restricted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_197

    .line 79
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->dnsMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->nextDnsMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    const-string v2, "hostname"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_191

    .line 81
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v2

    const-string v3, "host"

    const-string v4, ""

    invoke-static {p0, v2, v3, v4}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_188

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/mesalabs/unica/quicktiles/ConfigActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->open(Landroid/content/Intent;)V

    return-void

    .line 83
    :cond_188
    const-string v3, "private_dns_specifier"

    invoke-static {v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->hostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lio/mesalabs/unica/quicktiles/QuickTile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_191
    const-string v2, "private_dns_mode"

    invoke-direct {p0, v2, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    goto :goto_1af

    .line 78
    :cond_197
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Private DNS is restricted by your administrator"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :goto_19f
    const-class v2, Lio/mesalabs/unica/quicktiles/ConfigActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->open(Landroid/content/Intent;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_1af} :catch_1b0

    .line 115
    :goto_1af
    goto :goto_1c7

    .line 112
    :catch_1b0
    move-exception v1

    .line 113
    instance-of v2, v1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v2, :cond_1b8

    const-string v1, "SystemUI restart was not permitted"

    goto :goto_1bc

    :cond_1b8
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 114
    :goto_1bc
    if-nez v1, :cond_1c0

    const-string v1, "Action unavailable"

    :cond_1c0
    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    :goto_1c7
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->refresh()V

    .line 117
    return-void

    nop

    :sswitch_data_1cc
    .sparse-switch
        -0x62b40cf1 -> :sswitch_59
        -0x4fe33b8b -> :sswitch_51
        -0x3a6b1d21 -> :sswitch_47
        -0x146a23ba -> :sswitch_3d
        -0x8f7f49c -> :sswitch_33
        0x17a21 -> :sswitch_29
        0x18529 -> :sswitch_1f
        0x416a9e0f -> :sswitch_15
    .end sparse-switch

    :pswitch_data_1ee
    .packed-switch 0x0
        :pswitch_14b
        :pswitch_d3
        :pswitch_d3
        :pswitch_8e
        :pswitch_81
        :pswitch_81
        :pswitch_81
        :pswitch_6d
    .end packed-switch
.end method

.method private open(Landroid/content/Intent;)V
    .registers 4

    .line 71
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v0

    const/high16 v1, 0xc000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/quicktiles/QuickTile;->startActivityAndCollapse(Landroid/app/PendingIntent;)V

    .line 72
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 41
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 42
    return-void

    .line 41
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The system did not accept the change"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private refresh()V
    .registers 9

    .line 45
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    .line 46
    if-nez v0, :cond_7

    return-void

    .line 47
    :cond_7
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v1

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    nop

    .line 50
    const-string v3, "dns"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "Off"

    const/4 v6, 0x1

    if-eqz v3, :cond_46

    .line 51
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->dnsMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "off"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    move-object v3, v5

    goto :goto_3b

    :cond_2e
    const-string v3, "hostname"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v3, "On \u00b7 Custom provider"

    goto :goto_3b

    :cond_39
    const-string v3, "Auto"

    .line 53
    :goto_3b
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_43

    :cond_42
    move v4, v6

    .line 54
    :goto_43
    move-object v2, v3

    move v6, v4

    goto :goto_81

    :cond_46
    const-string v3, "wifi_adb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_62

    const-string v7, "usb_adb"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    goto :goto_62

    .line 58
    :cond_57
    const-string v3, "none"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    const-string v2, "Tap to configure"

    goto :goto_81

    .line 55
    :cond_62
    :goto_62
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string v1, "adb_wifi_enabled"

    goto :goto_6d

    :cond_6b
    const-string v1, "adb_enabled"

    :goto_6d
    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/QuickTile;->setting(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_75

    move v1, v6

    goto :goto_76

    :cond_75
    const/4 v1, 0x0

    .line 56
    :goto_76
    if-eqz v1, :cond_7b

    const-string v2, "On"

    goto :goto_7c

    :cond_7b
    move-object v2, v5

    .line 57
    :goto_7c
    if-eqz v1, :cond_7f

    goto :goto_80

    :cond_7f
    move v4, v6

    .line 58
    :goto_80
    move v6, v4

    .line 59
    :cond_81
    :goto_81
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v1

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->label(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v3

    invoke-static {p0, v3}, Lio/mesalabs/unica/quicktiles/TileConfig;->label(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->slot()I

    move-result v1

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->icon(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 63
    invoke-virtual {v0, v6}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 64
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 65
    return-void
.end method

.method private restricted(Ljava/lang/String;)Z
    .registers 3

    .line 43
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private setting(Ljava/lang/String;)I
    .registers 4

    .line 39
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private stopObserving()V
    .registers 3

    .line 32
    iget-boolean v0, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observing:Z

    if-eqz v0, :cond_17

    .line 33
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observing:Z

    .line 37
    :cond_17
    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    .line 67
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 68
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lio/mesalabs/unica/quicktiles/QuickTile$0;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/quicktiles/QuickTile$0;-><init>(Lio/mesalabs/unica/quicktiles/QuickTile;)V

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/QuickTile;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_12
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->execute()V

    .line 69
    :goto_15
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 30
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->stopObserving()V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->refresh()V

    return-void
.end method

.method public onStartListening()V
    .registers 8

    .line 20
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 21
    iget-boolean v0, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observing:Z

    if-nez v0, :cond_38

    .line 22
    const-string v5, "adb_enabled"

    const-string v6, "development_settings_enabled"

    const-string v1, "private_dns_mode"

    const-string v2, "private_dns_default_mode"

    const-string v3, "private_dns_specifier"

    const-string v4, "adb_wifi_enabled"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_19
    const/4 v3, 0x6

    if-ge v2, v3, :cond_2e

    aget-object v3, v0, v2

    .line 23
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v5, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 24
    :cond_2e
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/quicktiles/QuickTile;->observing:Z

    .line 27
    :cond_38
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->refresh()V

    .line 28
    return-void
.end method

.method public onStopListening()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/QuickTile;->stopObserving()V

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    return-void
.end method

.method protected abstract slot()I
.end method

