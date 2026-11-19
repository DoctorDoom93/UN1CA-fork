.class public final Lio/mesalabs/unica/quicktiles/ShortcutActivity;
.super Landroid/app/Activity;
.source "ShortcutActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    .line 14
    const-string v0, ""

    const-string v1, "shortcut"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "slot"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 17
    if-ltz p1, :cond_64

    const/16 v2, 0x8

    if-ge p1, v2, :cond_64

    :try_start_18
    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v2}, Lio/mesalabs/unica/quicktiles/ShortcutActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_31

    goto :goto_64

    .line 18
    :cond_31
    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v2}, Lio/mesalabs/unica/quicktiles/ShortcutActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/content/pm/LauncherApps;

    const-string v2, "package"

    invoke-static {p0, p1, v2, v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v1, v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4d} :catch_51
    .catchall {:try_start_18 .. :try_end_4d} :catchall_4e

    goto :goto_5c

    .line 21
    :catchall_4e
    move-exception v0

    move-object p1, v0

    goto :goto_60

    .line 19
    :catch_51
    move-exception v0

    .line 20
    :try_start_52
    const-string p1, "This shortcut is no longer available. Choose it again in Quick Tiles."

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_5c
    .catchall {:try_start_52 .. :try_end_5c} :catchall_4e

    .line 21
    :goto_5c
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ShortcutActivity;->finish()V

    .line 22
    return-void

    .line 21
    :goto_60
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ShortcutActivity;->finish()V

    throw p1

    :cond_64
    :goto_64
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ShortcutActivity;->finish()V

    .line 17
    return-void
.end method

