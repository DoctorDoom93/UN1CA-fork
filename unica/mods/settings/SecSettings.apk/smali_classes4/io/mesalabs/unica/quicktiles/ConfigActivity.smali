.class public final Lio/mesalabs/unica/quicktiles/ConfigActivity;
.super Landroid/app/Activity;
.source "ConfigActivity.java"


# instance fields
.field private action:Ljava/lang/String;

.field private actionButton:Landroid/widget/TextView;

.field private actionHint:Landroid/widget/TextView;

.field private activity:Ljava/lang/String;

.field private final cards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private generation:I

.field private host:Landroid/widget/EditText;

.field private iconButton:Landroid/widget/TextView;

.field private label:Landroid/widget/EditText;

.field private page:Landroid/widget/LinearLayout;

.field private preset:Ljava/lang/String;

.field private selectedIcon:Ljava/lang/String;

.field private shortcut:Ljava/lang/String;

.field private slot:I

.field private targetButton:Landroid/widget/TextView;

.field private targetPackage:Ljava/lang/String;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->cards:Ljava/util/List;

    .line 22
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->worker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private addCard(Landroid/view/View;)V
    .registers 5

    .line 99
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 100
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->cards:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->applyBackground()V

    .line 101
    return-void
.end method

.method private applyBackground()V
    .registers 11

    .line 71
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unica_settings_bg_transparency_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    move v0, v2

    .line 72
    :goto_10
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "unica_settings_bg_transparency_level"

    const/16 v4, 0x46

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x64

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sesl_background_color_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dark()Z

    move-result v5

    const-string v6, "dark"

    const-string v7, "light"

    if-eqz v5, :cond_3d

    move-object v5, v6

    goto :goto_3e

    :cond_3d
    move-object v5, v7

    :goto_3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dark()Z

    move-result v5

    const/4 v8, -0x1

    if-eqz v5, :cond_51

    const v5, -0xe8e8e6

    goto :goto_52

    :cond_51
    move v5, v8

    :goto_52
    invoke-direct {p0, v4, v5}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->color(Ljava/lang/String;I)I

    move-result v4

    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sesl_round_and_bgcolor_"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dark()Z

    move-result v9

    if-eqz v9, :cond_68

    goto :goto_69

    :cond_68
    move-object v6, v7

    :goto_69
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dark()Z

    move-result v6

    if-eqz v6, :cond_7a

    const/high16 v6, -0x1000000

    goto :goto_7d

    :cond_7a
    const v6, -0xd0d0e

    :goto_7d
    invoke-direct {p0, v5, v6}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->color(Ljava/lang/String;I)I

    move-result v5

    .line 75
    const/high16 v6, 0x100000

    if-eqz v0, :cond_99

    .line 76
    const v5, 0xffffff

    and-int/2addr v4, v5

    mul-int/lit16 v1, v1, 0xff

    div-int/2addr v1, v3

    rsub-int v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v4, v1

    .line 77
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_a1

    .line 78
    :cond_99
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->clearFlags(I)V

    move v2, v5

    .line 79
    :goto_a1
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v0, :cond_a8

    const/4 v8, -0x3

    :cond_a8
    invoke-virtual {v1, v8}, Landroid/view/Window;->setFormat(I)V

    .line 80
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_df

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 82
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 83
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v3, 0x1c

    invoke-direct {p0, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 84
    goto :goto_bd

    .line 85
    :cond_df
    return-void
.end method

.method private button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;
    .registers 7

    .line 115
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 116
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v1

    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v0

    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v2

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0, p1, p2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->clickable(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->addCard(Landroid/view/View;)V

    return-object p1
.end method

.method private chooseActivity(Landroid/content/pm/PackageInfo;)V
    .registers 9

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_1a

    aget-object v5, v1, v4

    invoke-static {p0, v5}, Lio/mesalabs/unica/quicktiles/TileConfig;->activityAvailable(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 293
    :cond_1a
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$29;

    invoke-direct {v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$29;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 295
    nop

    :goto_29
    if-ge v3, v1, :cond_5d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 296
    :cond_5d
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;

    invoke-direct {v1, p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/util/List;Landroid/content/pm/PackageInfo;)V

    const-string p1, "Choose an app activity"

    const-string v0, "Search activities"

    invoke-direct {p0, p1, v0, v2, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->searchPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 301
    return-void
.end method

.method private chooseActivityApp()V
    .registers 4

    .line 265
    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    .line 266
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const-string v2, "Loading apps\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/mesalabs/unica/quicktiles/ConfigActivity$20;

    invoke-direct {v2, p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$20;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method private chooseApp()V
    .registers 4

    .line 235
    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    .line 236
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const-string v2, "Loading apps\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/mesalabs/unica/quicktiles/ConfigActivity$5;

    invoke-direct {v2, p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$5;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method

.method private chooseShortcut(Ljava/lang/String;)V
    .registers 7

    .line 304
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 305
    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v1

    .line 306
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    .line 307
    if-nez v0, :cond_26

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 308
    :cond_26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 310
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_51

    const-string p1, "This app has no available shortcuts. You can assign Open app instead."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    return-void

    .line 311
    :cond_51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 312
    const/4 v3, 0x0

    :goto_58
    if-ge v3, v0, :cond_6d

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 313
    :cond_6d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Choose an app shortcut"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;

    invoke-direct {v3, p0, p1, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    .line 315
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_8b} :catch_8c

    .line 316
    goto :goto_92

    :catch_8c
    move-exception p1

    const-string p1, "Shortcut access is unavailable for this app."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    .line 317
    :goto_92
    return-void
.end method

.method private clickable(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .registers 6

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 104
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 105
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    invoke-virtual {v1, v2, v0, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2f

    .line 106
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    :cond_2f
    invoke-virtual {p1, p2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 108
    new-instance p2, Lio/mesalabs/unica/quicktiles/ConfigActivity$1;

    invoke-direct {p2, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$1;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 113
    return-void
.end method

.method private color(Ljava/lang/String;I)I
    .registers 6

    .line 62
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 63
    if-nez p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getColor(I)I

    move-result p2

    :goto_15
    return p2
.end method

.method private dark()Z
    .registers 3

    .line 60
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private dp(I)I
    .registers 3

    .line 47
    int-to-float p1, p1

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private edit(I)V
    .registers 6

    .line 143
    iput p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    const-string v0, "package"

    const-string v1, ""

    invoke-static {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    .line 144
    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    const-string v0, "activity"

    invoke-static {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    .line 145
    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    const-string v0, "shortcut"

    invoke-static {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    const-string v0, "preset"

    const-string v2, "0"

    invoke-static {p0, p1, v0, v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    const-string v0, "icon"

    const-string v2, "auto"

    invoke-static {p0, p1, v0, v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UN1CA Tile "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->layout(Ljava/lang/String;)V

    .line 147
    const-string p1, "One tap runs the selected action. Changes take effect after Save."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->text(Ljava/lang/String;)V

    .line 148
    const-string p1, "Tile configuration"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->section(Ljava/lang/String;)V

    .line 149
    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->label(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Tile label"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->input(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    .line 150
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$6;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$6;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Action"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionButton:Landroid/widget/TextView;

    .line 154
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionHint:Landroid/widget/TextView;

    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionHint:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionHint:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "private_dns_specifier"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    if-nez p1, :cond_ae

    goto :goto_af

    :cond_ae
    move-object v1, p1

    :goto_af
    const-string p1, "host"

    invoke-static {p0, v0, p1, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->get(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Private DNS provider hostname"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->input(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    .line 157
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 158
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$7;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$7;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Choose target"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    .line 163
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$8;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$8;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Icon"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->iconButton:Landroid/widget/TextView;

    .line 166
    const-string p1, "Save changes"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->section(Ljava/lang/String;)V

    .line 167
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$9;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$9;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Save"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 168
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$10;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$10;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Save and add to Quick Settings"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 169
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$11;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$11;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Cancel"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 170
    const-string p1, "Reset"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->section(Ljava/lang/String;)V

    .line 171
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$12;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$12;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v0, "Reset this slot"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->button(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    .line 176
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 177
    return-void
.end method

.method private input(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/EditText;
    .registers 6

    .line 119
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41880000    # 17.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 121
    const/16 p1, 0x18

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result p2

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result p1

    invoke-direct {p0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v1

    invoke-virtual {v0, p2, v2, p1, v1}, Landroid/widget/EditText;->setPadding(IIII)V

    const/16 p1, 0x40

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMinimumHeight(I)V

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->addCard(Landroid/view/View;)V

    return-object v0
.end method

.method static synthetic lambda$chooseActivity$26(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 2

    .line 293
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$chooseApp$17(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/LauncherActivityInfo;)I
    .registers 2

    .line 250
    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$layout$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 56
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 57
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$searchPicker$13(Landroid/widget/EditText;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;)V
    .registers 10

    .line 211
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 213
    const/4 v0, 0x0

    move v1, v0

    :goto_1a
    array-length v2, p3

    if-ge v1, v2, :cond_3a

    aget-object v2, p3, v1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 214
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v2, p3, v1

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 216
    :cond_3a
    invoke-virtual {p4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    invoke-virtual {p5, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 217
    return-void
.end method

.method static synthetic lambda$searchPicker$14(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    .line 226
    invoke-interface {p0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    invoke-interface {p2, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 227
    return-void
.end method

.method static synthetic lambda$searchPicker$15(Landroid/app/AlertDialog;Landroid/widget/ListView;Landroid/content/DialogInterface;)V
    .registers 3

    .line 229
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p2, 0x13

    invoke-virtual {p0, p2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 230
    invoke-virtual {p1}, Landroid/widget/ListView;->requestFocus()Z

    .line 231
    return-void
.end method

.method private layout(Ljava/lang/String;)V
    .registers 8

    .line 49
    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->cards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 50
    invoke-virtual {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 52
    :cond_1b
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v2

    const/16 v5, 0x18

    invoke-direct {p0, v5}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->setContentView(Landroid/view/View;)V

    .line 55
    new-instance v0, Lio/mesalabs/unica/quicktiles/ConfigActivity$22;

    invoke-direct {v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$22;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 59
    return-void
.end method

.method private message(Ljava/lang/String;)V
    .registers 4

    .line 344
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "OK"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_1f
    return-void
.end method

.method private overview()V
    .registers 11

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    const-string v0, "Quick Tiles"

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->layout(Ljava/lang/String;)V

    .line 125
    const-string v0, "Assign one action to each tile, then add it to Quick Settings. Hold a tile to edit it."

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->text(Ljava/lang/String;)V

    .line 126
    const-string v0, "Your tiles"

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->section(Ljava/lang/String;)V

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    const/16 v2, 0x8

    if-ge v1, v2, :cond_dc

    .line 128
    nop

    .line 129
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 130
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v4

    const/16 v5, 0x12

    invoke-direct {p0, v5}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v6

    invoke-direct {p0, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v8

    invoke-virtual {v2, v4, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 131
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->icon(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    .line 132
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v7, 0x20

    invoke-direct {p0, v7}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v8

    invoke-direct {p0, v7}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v7

    invoke-direct {v6, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x14

    invoke-direct {p0, v7}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v2, v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 134
    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->label(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v5, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tile "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " \u00b7 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->action(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lio/mesalabs/unica/quicktiles/TileConfig;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0xe

    invoke-direct {p0, v5, v8, v6}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v5

    .line 136
    const/4 v8, 0x4

    invoke-direct {p0, v8}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v8

    invoke-virtual {v5, v0, v8, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    const-string v4, "\u203a"

    invoke-direct {p0, v4, v3, v6}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0xc

    invoke-direct {p0, v4}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    new-instance v3, Lio/mesalabs/unica/quicktiles/ConfigActivity$23;

    invoke-direct {v3, p0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$23;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I)V

    invoke-direct {p0, v2, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->clickable(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->addCard(Landroid/view/View;)V

    .line 127
    move v1, v7

    goto/16 :goto_14

    .line 141
    :cond_dc
    return-void
.end method

.method private save(Z)V
    .registers 14

    .line 320
    :try_start_0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16c

    .line 322
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_164

    .line 323
    const-string v0, "dns"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_174

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    if-eqz v0, :cond_35

    :try_start_28
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->hostname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_35
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_41
    move-object v3, v0

    .line 324
    const-string v0, "app"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_4a} :catch_174

    const-string v1, "activity"

    const-string v4, "shortcut"

    if-nez v0, :cond_60

    :try_start_50
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    :cond_60
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15c

    .line 325
    :cond_68
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 326
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_80

    .line 327
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lio/mesalabs/unica/quicktiles/TileConfig;->activityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_88

    .line 326
    :cond_80
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Choose an app activity first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 329
    :cond_88
    :goto_88
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_a1

    :cond_99
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Choose an app shortcut first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :cond_a1
    :goto_a1
    const-string v0, "preset"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->preset(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_c0

    goto :goto_c8

    :cond_c0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No installed app supports this action"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 331
    :cond_c8
    :goto_c8
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    const-string v4, "action"

    const-string v5, "label"

    const-string v6, "host"

    const-string v7, "package"

    const-string v8, "shortcut"

    const-string v9, "activity"

    const-string v10, "preset"

    const-string v11, "icon"

    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v9

    .line 333
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    iget-object v4, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    iget-object v5, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    iget-object v6, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    iget-object v7, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    iget-object v8, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    .line 334
    const/4 v3, 0x0

    move v4, v3

    :goto_f6
    const/16 v5, 0x8

    if-ge v4, v5, :cond_11d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v9, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f6

    .line 335
    :cond_11d
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-static {p0, v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->component(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 336
    if-eqz p1, :cond_14f

    .line 337
    const-class p1, Landroid/app/StatusBarManager;

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/app/StatusBarManager;

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->component(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p1

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-static {p0, v0}, Lio/mesalabs/unica/quicktiles/TileConfig;->icon(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lio/mesalabs/unica/quicktiles/ConfigActivity$16;

    invoke-direct {v6, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$16;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    move-object v3, v2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/StatusBarManager;->requestAddTileService(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_15b

    .line 341
    :cond_14f
    const-string p1, "Tile saved"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->overview()V

    .line 342
    :goto_15b
    goto :goto_186

    .line 324
    :cond_15c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Choose an app first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_164
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keep the label under 61 characters"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_16c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Enter a tile label"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_174} :catch_174

    .line 342
    :catch_174
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17f

    const-string p1, "Unable to save tile"

    goto :goto_183

    :cond_17f
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_183
    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    .line 343
    :goto_186
    return-void
.end method

.method private searchPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/IntConsumer;)V
    .registers 21

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 195
    const/16 v4, 0x10

    invoke-direct {v0, v4}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v5

    const/16 v6, 0x8

    invoke-direct {v0, v6}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v6

    invoke-direct {v0, v4}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 196
    new-instance v10, Landroid/widget/EditText;

    invoke-direct {v10, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 197
    const v1, 0x80001

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 198
    const/4 v1, 0x6

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 199
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v1, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 201
    const/16 v5, 0x168

    invoke-direct {v0, v5}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v5

    invoke-virtual {v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v7, v7, 0x2

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 202
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    new-instance v15, Landroid/widget/ListView;

    invoke-direct {v15, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v15, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    const-string v5, "No matches"

    invoke-direct {v0, v5, v4, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 205
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v15, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 206
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 208
    new-instance v14, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v14, v0, v1, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 209
    invoke-virtual {v15, v14}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    new-instance v9, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;

    move-object/from16 v13, p3

    invoke-direct/range {v9 .. v15}, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;-><init>(Landroid/widget/EditText;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;)V

    .line 218
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$2;

    invoke-direct {v1, v0, v9}, Lio/mesalabs/unica/quicktiles/ConfigActivity$2;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v10, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 223
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 224
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 225
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;

    move-object/from16 v2, p4

    invoke-direct {v1, v11, v0, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;-><init>(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;)V

    invoke-virtual {v15, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 228
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$4;

    invoke-direct {v1, v0, v15}, Lio/mesalabs/unica/quicktiles/ConfigActivity$4;-><init>(Landroid/app/AlertDialog;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 233
    return-void
.end method

.method private section(Ljava/lang/String;)V
    .registers 7

    .line 95
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v0

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 96
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method private text(Ljava/lang/String;)V
    .registers 6

    .line 92
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->textView(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v1

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v0

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dp(I)I

    move-result v3

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method private textView(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 5

    .line 87
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    if-eqz p3, :cond_12

    const p1, 0x1010038

    goto :goto_15

    :cond_12
    const p1, 0x1010036

    :goto_15
    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->themed(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    return-object v0
.end method

.method private themed(I)I
    .registers 4

    .line 66
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->dark()Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, -0x111112

    goto :goto_15

    :cond_12
    const v0, -0xdfdfe0

    :goto_15
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private updateEditor()V
    .registers 9

    .line 179
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-static {v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionHint:Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    const-string v2, "dns"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "shortcut"

    const-string v4, ""

    const-string v5, "activity"

    if-eqz v1, :cond_33

    const-string v1, "Tap to cycle Off \u2192 Auto \u2192 saved provider. The provider must support Private DNS."

    goto :goto_71

    .line 181
    :cond_33
    const-string v1, "restart"

    iget-object v6, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "Restarts the status bar and Quick Settings. The screen may briefly go blank."

    goto :goto_71

    .line 182
    :cond_40
    const-string v1, "wifi_adb"

    iget-object v6, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v1, "Requires Developer options and Wi-Fi. Pair your computer in Wireless debugging settings first."

    goto :goto_71

    .line 183
    :cond_4d
    const-string v1, "usb_adb"

    iget-object v6, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    const-string v1, "Requires Developer options. Turning this off disconnects USB debugging."

    goto :goto_71

    .line 184
    :cond_5a
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    const-string v1, "Choose an exported app activity. Some screens require extra information and may not open directly."

    goto :goto_71

    .line 185
    :cond_65
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    const-string v1, "Choose a shortcut published by an installed app. Available shortcuts can change when the app is updated."

    goto :goto_71

    .line 186
    :cond_70
    move-object v1, v4

    .line 180
    :goto_71
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionHint:Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->actionHint:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v6, 0x8

    const/4 v7, 0x0

    if-nez v1, :cond_87

    move v1, v6

    goto :goto_88

    :cond_87
    move v1, v7

    :goto_88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    move v1, v7

    goto :goto_98

    :cond_97
    move v1, v6

    :goto_98
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const-string v1, "app"

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "preset"

    if-nez v1, :cond_c1

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c1

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    :cond_c1
    move v6, v7

    :cond_c2
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_da

    sget-object v1, Lio/mesalabs/unica/quicktiles/TileConfig;->PRESETS:[Ljava/lang/String;

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_137

    :cond_da
    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e5

    const-string v1, "Choose app"

    goto :goto_137

    :cond_e5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " \u00b7 "

    if-eqz v2, :cond_10e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10f

    :cond_10e
    move-object v2, v4

    :goto_10f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11c

    goto :goto_12f

    :cond_11c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_12f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->iconButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "auto"

    iget-object v3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    const-string v2, "Automatic"

    goto :goto_15a

    :cond_154
    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    invoke-static {v2}, Lio/mesalabs/unica/quicktiles/TileConfig;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_15a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    return-void
.end method


# virtual methods
.method synthetic lambda$chooseActivity$27$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/util/List;Landroid/content/pm/PackageInfo;I)V
    .registers 4

    .line 297
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    .line 298
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    iget-object p2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    const-string p2, ""

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    .line 299
    iget-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 300
    return-void
.end method

.method synthetic lambda$chooseActivityApp$21$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .registers 4

    .line 274
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method synthetic lambda$chooseActivityApp$22$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/util/List;I)V
    .registers 3

    .line 280
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->chooseActivity(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method synthetic lambda$chooseActivityApp$23$io-mesalabs-unica-quicktiles-ConfigActivity(I[Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 278
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    if-eq p1, v0, :cond_11

    goto :goto_27

    .line 279
    :cond_11
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 280
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$24;

    invoke-direct {p1, p0, p3}, Lio/mesalabs/unica/quicktiles/ConfigActivity$24;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/util/List;)V

    const-string p3, "Choose an installed app"

    const-string v0, "Search apps or packages"

    invoke-direct {p0, p3, v0, p2, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->searchPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 281
    return-void

    .line 278
    :cond_27
    :goto_27
    return-void
.end method

.method synthetic lambda$chooseActivityApp$24$io-mesalabs-unica-quicktiles-ConfigActivity(I)V
    .registers 3

    .line 284
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    if-eq p1, v0, :cond_11

    goto :goto_20

    .line 285
    :cond_11
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    const-string p1, "Unable to load app activities"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    .line 286
    return-void

    .line 284
    :cond_20
    :goto_20
    return-void
.end method

.method synthetic lambda$chooseActivityApp$25$io-mesalabs-unica-quicktiles-ConfigActivity(I)V
    .registers 9

    .line 269
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 271
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_24

    goto :goto_12

    .line 272
    :cond_24
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    :goto_27
    if-ge v3, v5, :cond_38

    aget-object v6, v4, v3

    invoke-static {p0, v6}, Lio/mesalabs/unica/quicktiles/TileConfig;->activityAvailable(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 273
    :cond_38
    :goto_38
    goto :goto_12

    .line 274
    :cond_39
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$25;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$25;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 275
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 276
    nop

    :goto_48
    if-ge v3, v1, :cond_7e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 277
    :cond_7e
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;

    invoke-direct {v1, p0, p1, v2, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I[Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_86
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_86} :catch_87

    .line 287
    goto :goto_90

    .line 282
    :catch_87
    move-exception v0

    .line 283
    new-instance v0, Lio/mesalabs/unica/quicktiles/ConfigActivity$27;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$27;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I)V

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    :goto_90
    return-void
.end method

.method synthetic lambda$chooseApp$16$io-mesalabs-unica-quicktiles-ConfigActivity(I)V
    .registers 3

    .line 242
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    if-eq p1, v0, :cond_11

    goto :goto_20

    .line 243
    :cond_11
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    const-string p1, "Unable to load installed apps"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    .line 244
    return-void

    .line 242
    :cond_20
    :goto_20
    return-void
.end method

.method synthetic lambda$chooseApp$18$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/util/List;I)V
    .registers 4

    .line 257
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    .line 258
    const-string p2, "shortcut"

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->chooseShortcut(Ljava/lang/String;)V

    goto :goto_32

    .line 259
    :cond_1c
    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    iget-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 260
    :goto_32
    return-void
.end method

.method synthetic lambda$chooseApp$19$io-mesalabs-unica-quicktiles-ConfigActivity(ILjava/util/List;)V
    .registers 7

    .line 252
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_64

    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    if-eq p1, v0, :cond_11

    goto :goto_64

    .line 253
    :cond_11
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 254
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array v0, p1, [Ljava/lang/String;

    .line 255
    const/4 v1, 0x0

    :goto_21
    if-ge v1, p1, :cond_57

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 256
    :cond_57
    new-instance p1, Lio/mesalabs/unica/quicktiles/ConfigActivity$31;

    invoke-direct {p1, p0, p2}, Lio/mesalabs/unica/quicktiles/ConfigActivity$31;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/util/List;)V

    const-string p2, "Choose an installed app"

    const-string v1, "Search apps or packages"

    invoke-direct {p0, p2, v1, v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->searchPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/IntConsumer;)V

    .line 261
    return-void

    .line 252
    :cond_64
    :goto_64
    return-void
.end method

.method synthetic lambda$chooseApp$20$io-mesalabs-unica-quicktiles-ConfigActivity(I)V
    .registers 6

    .line 239
    :try_start_0
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_11} :catch_4d

    .line 246
    nop

    .line 247
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 248
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 249
    :cond_33
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$14;

    invoke-direct {v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$14;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 251
    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;

    invoke-direct {v1, p0, p1, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;ILjava/util/List;)V

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    return-void

    .line 240
    :catch_4d
    move-exception v0

    .line 241
    new-instance v0, Lio/mesalabs/unica/quicktiles/ConfigActivity$13;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity$13;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I)V

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 245
    return-void
.end method

.method synthetic lambda$chooseShortcut$28$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 314
    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 315
    return-void
.end method

.method synthetic lambda$edit$10$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 2

    .line 169
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->overview()V

    return-void
.end method

.method synthetic lambda$edit$11$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/content/DialogInterface;I)V
    .registers 11

    .line 172
    invoke-static {p0}, Lio/mesalabs/unica/quicktiles/TileConfig;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 173
    const-string v6, "preset"

    const-string v7, "icon"

    const-string v0, "action"

    const-string v1, "label"

    const-string v2, "host"

    const-string v3, "package"

    const-string v4, "shortcut"

    const-string v5, "activity"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_1d
    const/16 v1, 0x8

    if-ge v0, v1, :cond_42

    aget-object v1, p2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 174
    :cond_42
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-static {p0, p1}, Lio/mesalabs/unica/quicktiles/TileConfig;->component(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/service/quicksettings/TileService;->requestListeningState(Landroid/content/Context;Landroid/content/ComponentName;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->overview()V

    .line 175
    return-void
.end method

.method synthetic lambda$edit$12$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 4

    .line 171
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Clear this tile\'s action and label?"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/quicktiles/ConfigActivity$17;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$17;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    const-string v1, "Reset"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 171
    return-void
.end method

.method synthetic lambda$edit$2$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/content/DialogInterface;I)V
    .registers 5

    .line 151
    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    sget-object p1, Lio/mesalabs/unica/quicktiles/TileConfig;->ACTIONS:[Ljava/lang/String;

    aget-object p1, p1, p2

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    .line 152
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    const-string p2, "none"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UN1CA Tile "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_42

    :cond_3c
    iget-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-static {p2}, Lio/mesalabs/unica/quicktiles/TileConfig;->name(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_42
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 153
    return-void
.end method

.method synthetic lambda$edit$3$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 4

    .line 150
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Choose an action"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->NAMES:[Ljava/lang/String;

    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$21;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$21;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 150
    return-void
.end method

.method synthetic lambda$edit$4$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 160
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    sget-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->PRESETS:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 161
    return-void
.end method

.method synthetic lambda$edit$5$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 4

    .line 159
    const-string p1, "preset"

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Predefined action"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lio/mesalabs/unica/quicktiles/TileConfig;->PRESETS:[Ljava/lang/String;

    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$18;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$18;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_35

    :cond_24
    const-string p1, "activity"

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->chooseActivityApp()V

    goto :goto_35

    :cond_32
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->chooseApp()V

    .line 162
    :goto_35
    return-void
.end method

.method synthetic lambda$edit$6$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/content/DialogInterface;I)V
    .registers 9

    .line 164
    const-string v4, "usb_adb"

    const-string v5, "app"

    const-string v0, "auto"

    const-string v1, "dns"

    const-string v2, "restart"

    const-string v3, "wifi_adb"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    .line 165
    return-void
.end method

.method synthetic lambda$edit$7$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 8

    .line 163
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Tile icon"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v4, "USB"

    const-string v5, "App"

    const-string v0, "Automatic"

    const-string v1, "DNS"

    const-string v2, "Restart"

    const-string v3, "Wireless"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/quicktiles/ConfigActivity$19;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity$19;-><init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 163
    return-void
.end method

.method synthetic lambda$edit$8$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 2

    .line 167
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->save(Z)V

    return-void
.end method

.method synthetic lambda$edit$9$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/view/View;)V
    .registers 2

    .line 168
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->save(Z)V

    return-void
.end method

.method synthetic lambda$overview$1$io-mesalabs-unica-quicktiles-ConfigActivity(ILandroid/view/View;)V
    .registers 3

    .line 139
    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->edit(I)V

    return-void
.end method

.method synthetic lambda$save$29$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/lang/Integer;)V
    .registers 4

    .line 338
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    goto :goto_15

    .line 339
    :cond_f
    const-string p1, "Configuration saved. You can also add the tile using Quick Settings \u2192 Edit."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    goto :goto_1a

    .line 338
    :cond_15
    :goto_15
    const-string p1, "Tile is in Quick Settings"

    invoke-direct {p0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->message(Ljava/lang/String;)V

    .line 340
    :goto_1a
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 27
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.extra.COMPONENT_NAME"

    const-class v4, Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 28
    const/16 v3, 0x8

    if-eqz v1, :cond_31

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_31

    invoke-static {p0, v4}, Lio/mesalabs/unica/quicktiles/TileConfig;->component(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    move v0, v4

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 29
    :cond_31
    if-eqz p1, :cond_37

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 30
    :cond_37
    if-ltz v0, :cond_aa

    if-ge v0, v3, :cond_aa

    .line 31
    invoke-direct {p0, v0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->edit(I)V

    .line 32
    if-eqz p1, :cond_ad

    .line 33
    const-string v0, "action"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    const-string v0, "package"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    .line 34
    const-string v0, "activity"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    const-string v0, "shortcut"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    const-string v0, "preset"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    const-string v0, "icon"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->updateEditor()V

    goto :goto_ad

    .line 37
    :cond_aa
    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->overview()V

    .line 38
    :cond_ad
    :goto_ad
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 46
    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->generation:I

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_16

    iget p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    if-ltz p1, :cond_11

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->overview()V

    goto :goto_14

    :cond_11
    invoke-virtual {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->finish()V

    :goto_14
    const/4 p1, 0x1

    return p1

    :cond_16
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 1

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->applyBackground()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "slot"

    iget v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 41
    iget v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->slot:I

    if-ltz v0, :cond_56

    .line 42
    const-string v0, "activity"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "action"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->action:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "package"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->targetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "shortcut"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->shortcut:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v0, "preset"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->preset:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "icon"

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->selectedIcon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->label:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity;->host:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "host"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_56
    return-void
.end method

