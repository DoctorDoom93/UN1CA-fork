.class public final Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;
.super Landroid/app/Activity;
.source "TroubleshootingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;,
        Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;
    }
.end annotation


# instance fields
.field private activeSection:Ljava/lang/String;

.field private analysis:Ljava/lang/String;

.field private final analysisParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final analysisTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private apps:Lorg/json/JSONArray;

.field private final back:Landroid/window/OnBackInvokedCallback;

.field private busy:Z

.field private volatile cancelled:Z

.field private final cards:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private content:Landroid/widget/LinearLayout;

.field private final controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;",
            ">;"
        }
    .end annotation
.end field

.field private final expandedAnalysis:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private logProgress:Landroid/widget/ProgressBar;

.field private logStatus:Ljava/lang/String;

.field private logStatusView:Landroid/widget/TextView;

.field private lsposedState:Lorg/json/JSONObject;

.field private modules:Lorg/json/JSONArray;

.field private page:Landroid/widget/LinearLayout;

.field private raw:Ljava/lang/String;

.field private reviewSource:Ljava/lang/String;

.field private rootScroll:Landroid/widget/ScrollView;

.field private scanProgress:Landroid/widget/ProgressBar;

.field private scanStatus:Ljava/lang/String;

.field private scanStatusView:Landroid/widget/TextView;

.field private scanned:Z

.field private selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

.field private setupProgress:Landroid/widget/ProgressBar;

.field private setupReport:Ljava/lang/String;

.field private setupReview:Z

.field private setupStatus:Ljava/lang/String;

.field private setupStatusView:Landroid/widget/TextView;

.field private source:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private warning:Ljava/lang/String;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$8avoFIX__MT_RSnq-ZpxW6wep3w(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scan()V

    return-void
.end method

.method public static synthetic $r8$lambda$AQJSZ_i_t6LdJsufSASdMky2zVc(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->explainSetup()V

    return-void
.end method

.method public static synthetic $r8$lambda$QZoVAuhGhXkYdngaBxUqY2PljQc(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->prepareAnalysis()V

    return-void
.end method

.method public static synthetic $r8$lambda$dZHB3mkVh8JgAM3hNFI9Zza99us(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->restart()V

    return-void
.end method

.method public static synthetic $r8$lambda$f2rTYVMB8W9n0Itloz6GnSv6Grc(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->checkSetup()V

    return-void
.end method

.method public static synthetic $r8$lambda$iiy4NI7vz9DSrV3nXJRDq5Lg32k(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->saveOriginal()V

    return-void
.end method

.method public static synthetic $r8$lambda$mfiIlpK1E4wBODpDuP_YAC62wls(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->collect()V

    return-void
.end method

.method public static synthetic $r8$lambda$ndqdLmeNejz9gklk_A36i6-WPgI(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->importLog()V

    return-void
.end method

.method public static synthetic $r8$lambda$rozwPBhnkJeUBXHafIe38ksQyCY(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->openChat()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$5;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$5;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->back:Landroid/window/OnBackInvokedCallback;

    .line 43
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->worker:Ljava/util/concurrent/ExecutorService;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->cards:Ljava/util/ArrayList;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewSource:Ljava/lang/String;

    .line 48
    const-string v1, "Run a read-only check of PIF and TEE settings."

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupStatus:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReport:Ljava/lang/String;

    .line 49
    const-string v1, "Tap Scan installed modules to begin."

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanStatus:Ljava/lang/String;

    const-string v1, "Collect or import a log to find crashes and app failures."

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logStatus:Ljava/lang/String;

    const-string v1, "scan"

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    .line 50
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisParts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisTitles:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->expandedAnalysis:Ljava/util/Set;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    .line 53
    const-string v1, "Scan installed modules to check for overlaps."

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->status:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->warning:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->source:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysis:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->controls:Ljava/util/ArrayList;

    return-void
.end method

.method private accepted(Ljava/lang/String;)V
    .registers 4

    .line 214
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->declined()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "declined_modules"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic access$000(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)I
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 4

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->label(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->highlightDuplicate(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;II)I
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->themed(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)Landroid/widget/ScrollView;
    .registers 1

    .line 18
    iget-object p0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method private background()V
    .registers 12

    .line 99
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 100
    :goto_10
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getContentResolver()Landroid/content/ContentResolver;

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

    .line 101
    const/high16 v4, 0x100000

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v0, :cond_32

    invoke-virtual {v5, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_35

    :cond_32
    invoke-virtual {v5, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 102
    :goto_35
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v0, :cond_3e

    const/4 v6, -0x3

    goto :goto_3f

    :cond_3e
    move v6, v5

    :goto_3f
    invoke-virtual {v4, v6}, Landroid/view/Window;->setFormat(I)V

    .line 103
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const-string v7, "dark"

    const-string v8, "light"

    if-eqz v0, :cond_4f

    goto :goto_7b

    :cond_4f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sesl_round_and_bgcolor_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v9

    if-eqz v9, :cond_62

    move-object v9, v7

    goto :goto_63

    :cond_62
    move-object v9, v8

    :goto_63
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v9

    if-eqz v9, :cond_74

    const/high16 v9, -0x1000000

    goto :goto_77

    :cond_74
    const v9, -0xd0d0e

    :goto_77
    invoke-direct {p0, v2, v9}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->color(Ljava/lang/String;I)I

    move-result v2

    :goto_7b
    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_87
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sesl_background_color_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v10

    if-eqz v10, :cond_ab

    move-object v10, v7

    goto :goto_ac

    :cond_ab
    move-object v10, v8

    :goto_ac
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v10

    if-eqz v10, :cond_be

    const v10, -0xe8e8e6

    goto :goto_bf

    :cond_be
    move v10, v5

    :goto_bf
    invoke-direct {p0, v9, v10}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->color(Ljava/lang/String;I)I

    move-result v9

    if-eqz v0, :cond_d1

    const v10, 0xffffff

    and-int/2addr v9, v10

    mul-int/lit16 v10, v1, 0xff

    div-int/2addr v10, v3

    rsub-int v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    :cond_d1
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v9, 0x1c

    invoke-direct {p0, v9}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_87

    .line 105
    :cond_e2
    return-void
.end method

.method private busyViews()V
    .registers 6

    .line 187
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupProgress:Landroid/widget/ProgressBar;

    iget-boolean v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    const-string v4, "setup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v3, v1

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1d
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    iget-boolean v4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setEnabled(Z)V

    goto :goto_23

    :cond_37
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanProgress:Landroid/widget/ProgressBar;

    iget-boolean v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    const-string v4, "scan"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    move v3, v1

    goto :goto_4e

    :cond_4d
    move v3, v2

    :goto_4e
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_51
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logProgress:Landroid/widget/ProgressBar;

    iget-boolean v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    if-eqz v3, :cond_66

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    const-string v4, "logs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_67

    :cond_66
    move v1, v2

    :goto_67
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_6a
    return-void
.end method

.method private button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;
    .registers 4

    .line 96
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    move-result-object p1

    return-object p1
.end method

.method private button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;
    .registers 9

    .line 97
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v1, 0x1010038

    const v2, -0x9d9a95

    invoke-direct {p0, v1, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->themed(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    const v1, 0x3e0f5c29    # 0.14f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iget-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    xor-int/2addr p1, v2

    invoke-virtual {v0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;->setEnabled(Z)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->controls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private card(Ljava/lang/String;)V
    .registers 7

    .line 75
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->cards:Ljava/util/ArrayList;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "sans-serif-medium"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    return-void
.end method

.method private checkSetup()V
    .registers 4

    .line 256
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$52;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$52;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v1, "setup"

    const-string v2, "Checking PIF settings, TEE profiles and runtime evidence\u2026"

    invoke-direct {p0, v1, v2, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    .line 258
    return-void
.end method

.method private collect()V
    .registers 4

    .line 241
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$47;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$47;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v1, "logs"

    const-string v2, "Collecting recent logcat\u2026"

    invoke-direct {p0, v1, v2, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    .line 255
    return-void
.end method

.method private color(Ljava/lang/String;I)I
    .registers 6

    .line 73
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "color"

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getColor(I)I

    move-result p2

    :goto_15
    return p2
.end method

.method private confirmModule(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    .line 216
    const-string v0, "disable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_10

    const-string v2, "Disable this module?"

    goto :goto_12

    :cond_10
    const-string v2, "Restore this module?"

    :goto_12
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v3, "id"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stage"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\nRelated UN1CA mod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->relatedMods(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_57

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->duplicate(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "This module serves the same purpose as a built-in UN1CA feature."

    goto :goto_59

    :cond_54
    const-string v3, "This module changes files related to a built-in UN1CA feature."

    goto :goto_59

    :cond_57
    const-string v3, "Restore this module by removing this menu\u2019s disable marker."

    :goto_59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 218
    if-eqz v0, :cond_6a

    const-string v2, "Disable"

    goto :goto_6c

    :cond_6a
    const-string v2, "Restore"

    :goto_6c
    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$50;

    invoke-direct {v3, p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$50;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 222
    if-eqz v0, :cond_7a

    const-string v1, "Keep enabled"

    goto :goto_7c

    :cond_7a
    const-string v1, "Cancel"

    :goto_7c
    new-instance v2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;

    invoke-direct {v2, p0, v0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$51;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;ZLorg/json/JSONObject;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private dark()Z
    .registers 3

    .line 71
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getResources()Landroid/content/res/Resources;

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

.method private decline(Ljava/lang/String;)V
    .registers 5

    .line 215
    const-string v0, "scan"

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->declined()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "declined_modules"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kept enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->history(Ljava/lang/String;)V

    const-string p1, "Suggestion declined; finding remains for review."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    return-void
.end method

.method private declined()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "declined_modules"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private declinedActive()Z
    .registers 8

    .line 209
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->declined()Ljava/util/Set;

    move-result-object v0

    .line 210
    const/4 v1, 0x0

    move v2, v1

    :goto_6
    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5e

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "disabled"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "removed"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finding(Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_5b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "stage"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    return v4

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 211
    :cond_5e
    move v2, v1

    :goto_5f
    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_a0

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "confirmed"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    const-string v5, "duplicate"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    :cond_7d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lsposed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    return v4

    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 212
    :cond_a0
    return v1
.end method

.method private static describe(Ljava/lang/Exception;)Ljava/lang/String;
    .registers 2

    .line 198
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private dp(I)I
    .registers 3

    .line 69
    int-to-float p1, p1

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private draw()V
    .registers 17

    .line 110
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "restart"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_35

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "restart_boot"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "boot_count"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v2, v5, :cond_35

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    :cond_35
    iget-object v2, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    if-nez v2, :cond_3b

    move v2, v1

    goto :goto_41

    :cond_3b
    iget-object v2, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 112
    :goto_41
    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->controls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->cards:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 113
    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    const/4 v6, 0x1

    if-nez v5, :cond_a3

    const-string v5, "Troubleshooting"

    invoke-direct {v0, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->settingsRoot(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v5

    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    invoke-virtual {v7, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    invoke-virtual {v7, v1}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    const/16 v8, 0xc

    invoke-direct {v0, v8}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v9

    invoke-direct {v0, v8}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v10

    invoke-direct {v0, v8}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v8

    const/16 v11, 0x18

    invoke-direct {v0, v11}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v11

    invoke-virtual {v7, v9, v10, v8, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    iget-object v8, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v4, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setContentView(Landroid/view/View;)V

    goto :goto_a8

    .line 114
    :cond_a3
    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 115
    :goto_a8
    nop

    .line 117
    move v4, v1

    move v5, v4

    :goto_ab
    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v8, "removed"

    const-string v9, "disabled"

    if-ge v4, v7, :cond_d4

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_d1

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d1

    invoke-direct {v0, v7}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finding(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_d1

    add-int/lit8 v5, v5, 0x1

    :cond_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_ab

    .line 118
    :cond_d4
    move v4, v1

    :goto_d5
    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    const-string v10, "duplicate"

    const-string v11, "confirmed"

    if-ge v4, v7, :cond_fe

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_f9

    iget-object v7, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fb

    :cond_f9
    add-int/lit8 v5, v5, 0x1

    :cond_fb
    add-int/lit8 v4, v4, 0x1

    goto :goto_d5

    .line 119
    :cond_fe
    const-string v4, "Status"

    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    if-lez v5, :cond_108

    const-string v4, "Review recommended"

    goto :goto_11c

    :cond_108
    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->warning:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_113

    const-string v4, "Scan incomplete"

    goto :goto_11c

    :cond_113
    iget-boolean v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    if-eqz v4, :cond_11a

    const-string v4, "No known conflict detected"

    goto :goto_11c

    :cond_11a
    const-string v4, "Not scanned"

    :goto_11c
    const/16 v7, 0x16

    invoke-direct {v0, v4, v7}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    if-lez v5, :cond_137

    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v5

    if-eqz v5, :cond_131

    const/16 v5, -0x3380

    goto :goto_134

    :cond_131
    const v5, -0x76af00

    :goto_134
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :cond_137
    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->declinedActive()Z

    move-result v4

    const/16 v5, 0xe

    if-eqz v4, :cond_155

    const-string v4, "\u26a0 PROBLEM DETECTED \u2014 review pending"

    const/16 v12, 0x12

    invoke-direct {v0, v4, v12}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const v12, -0x2cd0d1

    invoke-virtual {v4, v12}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "You kept a flagged module enabled. Review the recommendation below."

    invoke-direct {v0, v4, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 121
    :cond_155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Last completed scan: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "last_scan"

    const-string v14, "Never"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v12, 0xd

    invoke-direct {v0, v4, v12}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 122
    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->warning:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_199

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Coverage: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v13, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->warning:Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 123
    :cond_199
    new-instance v4, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$21;

    invoke-direct {v4, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$21;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v13, "About this check"

    const-string v14, "What the scan can detect"

    invoke-direct {v0, v13, v14, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 124
    new-instance v4, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$32;

    invoke-direct {v4, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$32;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v13, "Scan installed modules"

    const-string v14, "Check root modules and enabled LSPosed conflicts"

    invoke-direct {v0, v13, v14, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 125
    const-string v4, "scan"

    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->progress(Ljava/lang/String;)Landroid/widget/ProgressBar;

    move-result-object v4

    iput-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanProgress:Landroid/widget/ProgressBar;

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanStatus:Ljava/lang/String;

    const/16 v13, 0xf

    invoke-direct {v0, v4, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v4

    iput-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanStatusView:Landroid/widget/TextView;

    .line 126
    invoke-virtual {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1e6

    const-string v3, "Restart required. A loaded module can remain active until restart."

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$34;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$34;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Restart now"

    invoke-direct {v0, v4, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$35;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$35;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Restart later"

    invoke-direct {v0, v4, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 127
    :cond_1e6
    const-string v3, "Root modules"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    .line 128
    move v3, v1

    :goto_1ec
    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 138
    iget-object v14, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    .line 128
    const-string v15, "name"

    if-ge v3, v4, :cond_302

    .line 129
    invoke-virtual {v14, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_205

    const-string v14, "Pending removal"

    goto :goto_210

    :cond_205
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_20e

    const-string v14, "Disabled"

    goto :goto_210

    :cond_20e
    const-string v14, "Enabled \u00b7 restart state unverified"

    .line 130
    :goto_210
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "stage"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v7, "modules_update"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22a

    const-string v7, " \u00b7 Pending update"

    goto :goto_22c

    :cond_22a
    const-string v7, ""

    :goto_22c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "version"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->duplicate(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_266

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nSame purpose as UN1CA\u2019s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->relatedMods(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_287

    .line 132
    :cond_266
    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finding(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_287

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nChanges relate to UN1CA\u2019s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->relatedMods(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 133
    :cond_287
    :goto_287
    nop

    .line 134
    const-string v7, "owned"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string v14, "id"

    if-eqz v7, :cond_2b6

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "\nTap to restore"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$36;

    invoke-direct {v14, v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$36;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    invoke-direct {v0, v7, v6, v14}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    goto :goto_2fc

    .line 135
    :cond_2b6
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2ec

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2ec

    invoke-direct {v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finding(Lorg/json/JSONObject;)Z

    move-result v7

    if-eqz v7, :cond_2ec

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "\nReview disabling this module"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$37;

    invoke-direct {v14, v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$37;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    invoke-direct {v0, v7, v6, v14}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    goto :goto_2fc

    .line 136
    :cond_2ec
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$38;

    invoke-direct {v14, v0, v4, v6}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$38;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {v0, v7, v6, v14}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 128
    :goto_2fc
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_1ec

    .line 138
    :cond_302
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_314

    iget-boolean v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    if-eqz v3, :cond_30f

    const-string v3, "No modules listed. Check scan coverage above if root access was unavailable."

    goto :goto_311

    :cond_30f
    const-string v3, "Scan to view installed modules."

    :goto_311
    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 139
    :cond_314
    const-string v3, "LSPosed conflicts"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    .line 140
    iget-boolean v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    const-string v4, "available"

    if-nez v3, :cond_326

    const-string v3, "Run a scan to check LSPosed conflicts."

    invoke-direct {v0, v3, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    goto/16 :goto_3a8

    .line 141
    :cond_326
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LSPosed module state could not be verified. No conflict claim is made. "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    const-string v7, "warning"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    goto :goto_3a8

    .line 143
    :cond_34d
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    const-string v6, "modules"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_370

    move v6, v1

    move v7, v6

    :goto_359
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_371

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "enabled"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36d

    add-int/lit8 v7, v7, 0x1

    :cond_36d
    add-int/lit8 v6, v6, 0x1

    goto :goto_359

    :cond_370
    move v7, v1

    .line 144
    :cond_371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checked "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " modules enabled in LSPosed configuration. Disabled modules are excluded."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v12}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 145
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    const-string v6, "confirmed_rule_count"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_39d

    const-string v3, "LSPosed configuration was read. This ROM currently has no verified LSPosed conflict cases to check; compatibility remains unverified."

    invoke-direct {v0, v3, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    goto :goto_3a8

    .line 146
    :cond_39d
    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->hasConfirmedApps()Z

    move-result v3

    if-nez v3, :cond_3a8

    const-string v3, "No confirmed LSPosed conflicts found. This does not establish compatibility with every module."

    invoke-direct {v0, v3, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 148
    :cond_3a8
    :goto_3a8
    move v3, v1

    :goto_3a9
    iget-object v6, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    const-string v7, "unica_mod"

    const/16 v8, 0x11

    if-ge v3, v6, :cond_406

    iget-object v6, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3c2

    goto :goto_403

    .line 149
    :cond_3c2
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v8}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 150
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Conflicts with UN1CA mod: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v8

    if-eqz v8, :cond_3f3

    const/16 v8, -0x7580

    goto :goto_3f6

    :cond_3f3
    const v8, -0x4cd9e2

    :goto_3f6
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    new-instance v7, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$39;

    invoke-direct {v7, v0, v6}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$39;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    const-string v6, "Review in LSPosed Manager"

    invoke-direct {v0, v6, v7}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 148
    :goto_403
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a9

    .line 153
    :cond_406
    const-string v3, "LSPosed duplicate features"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    .line 154
    iget-boolean v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    if-nez v3, :cond_415

    const-string v3, "Run a scan to check for duplicate features."

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    goto :goto_46f

    .line 155
    :cond_415
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_423

    const-string v3, "LSPosed enabled state and scope could not be read. Duplicate features could not be checked."

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    goto :goto_46f

    .line 157
    :cond_423
    nop

    .line 158
    move v3, v1

    move v14, v3

    :goto_426
    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_468

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_43b

    goto :goto_465

    .line 159
    :cond_43b
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Same purpose as UN1CA\u2019s "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\nReview in LSPosed Manager"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$40;

    invoke-direct {v11, v0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$40;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    invoke-direct {v0, v6, v9, v11}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    const/4 v14, 0x1

    .line 158
    :goto_465
    add-int/lit8 v3, v3, 0x1

    goto :goto_426

    .line 161
    :cond_468
    if-nez v14, :cond_46f

    const-string v3, "No known duplicate features found among enabled modules with matching scopes. Unlisted modules remain unchecked."

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 163
    :cond_46f
    :goto_46f
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_481

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$34;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$34;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Restart after changing LSPosed scope"

    invoke-direct {v0, v4, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 164
    :cond_481
    const-string v3, "PIF and TEE setup"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    .line 165
    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$22;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$22;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Check PIF and TEE setup"

    const-string v6, "Validate configuration and check backend readiness"

    invoke-direct {v0, v4, v6, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 166
    const-string v3, "setup"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->progress(Ljava/lang/String;)Landroid/widget/ProgressBar;

    move-result-object v3

    iput-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupProgress:Landroid/widget/ProgressBar;

    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupStatus:Ljava/lang/String;

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupStatusView:Landroid/widget/TextView;

    .line 167
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReport:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4c2

    .line 168
    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$23;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$23;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "View setup results"

    const-string v6, "Configuration, runtime evidence and verification steps"

    invoke-direct {v0, v4, v6, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 169
    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$24;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$24;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Explain setup results with AI"

    const-string v6, "Review the report before copying it into PrivateLM"

    invoke-direct {v0, v4, v6, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 171
    :cond_4c2
    const-string v3, "Ask Ai"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    new-instance v4, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$25;

    invoke-direct {v4, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$25;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v6, "Chat with PrivateLM AI, paste or attach the log, generate image, so on"

    invoke-direct {v0, v3, v6, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 172
    const-string v3, "Analyze logs"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    const-string v3, "Find system crashes, app crashes and apps that fail to open. Review selected details, then copy them into PrivateLM."

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 173
    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$26;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$26;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Collect recent device log"

    const-string v6, "Read recent logs from this device"

    invoke-direct {v0, v4, v6, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$27;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$27;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Import log file"

    const-string v6, "Choose a text log to review"

    invoke-direct {v0, v4, v6, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 174
    const-string v3, "logs"

    invoke-direct {v0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->progress(Ljava/lang/String;)Landroid/widget/ProgressBar;

    move-result-object v3

    iput-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logProgress:Landroid/widget/ProgressBar;

    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logStatus:Ljava/lang/String;

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logStatusView:Landroid/widget/TextView;

    .line 175
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->source:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " characters. Original retained in this screen until it closes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v12}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$28;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$28;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Save original log"

    invoke-direct {v0, v4, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$29;

    invoke-direct {v3, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$29;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v4, "Review crash details for PrivateLM"

    invoke-direct {v0, v4, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 176
    :cond_54d
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysis:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5cd

    const-string v3, "AI findings \u2014 verify before acting"

    invoke-direct {v0, v3, v8}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    const/4 v9, 0x0

    const/4 v14, 0x1

    invoke-virtual {v3, v9, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysis:Ljava/lang/String;

    invoke-direct {v0, v3, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    .line 177
    nop

    :goto_566
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisParts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5cd

    .line 178
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisParts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3, v13}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->text(Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->expandedAnalysis:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58a

    const v4, 0x7fffffff

    goto :goto_58b

    :cond_58a
    const/4 v4, 0x5

    :goto_58b
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->expandedAnalysis:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a2

    const-string v5, "\u25be "

    goto :goto_5a4

    :cond_5a2
    const-string v5, "\u25b8 "

    :goto_5a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisTitles:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;

    invoke-direct {v5, v0, v3, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$30;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/widget/TextView;I)V

    invoke-direct {v0, v4, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 180
    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_566

    .line 182
    :cond_5cd
    const-string v1, "History and restoration"

    invoke-direct {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->card(Ljava/lang/String;)V

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$31;

    invoke-direct {v1, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$31;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v3, "Action history"

    const-string v4, "Review previous module actions"

    invoke-direct {v0, v3, v4, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$33;

    invoke-direct {v1, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$33;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v3, "Restoration help"

    const-string v4, "Undo changes made by Troubleshooting"

    invoke-direct {v0, v3, v4, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->button(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    .line 183
    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->background()V

    iget-object v1, v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->rootScroll:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;

    invoke-direct {v3, v0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$1;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    return-void
.end method

.method private duplicate(Lorg/json/JSONObject;)Z
    .registers 3

    .line 107
    const-string v0, "duplicates"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method private explainSetup()V
    .registers 4

    .line 259
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$17;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$17;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v1, "setup"

    const-string v2, "Preparing setup report for review\u2026"

    invoke-direct {p0, v1, v2, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    .line 262
    return-void
.end method

.method private finding(Lorg/json/JSONObject;)Z
    .registers 3

    .line 108
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->duplicate(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "evidence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p1, 0x1

    :goto_16
    return p1
.end method

.method private hasConfirmedApps()Z
    .registers 5

    .line 106
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "confirmed"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method private highlightDuplicate(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 6

    .line 78
    const-string v0, "Same purpose as UN1CA\u2019s "

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 79
    if-gez v0, :cond_9

    return-object p1

    .line 80
    :cond_9
    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    :cond_15
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 82
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result v3

    if-eqz v3, :cond_25

    const/16 v3, -0x7580

    goto :goto_28

    :cond_25
    const v3, -0x4cd9e2

    :goto_28
    invoke-direct {p1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, p1, v0, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 83
    return-object v2
.end method

.method private history(Ljava/lang/String;)V
    .registers 8

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, ""

    const-string v3, "history"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \u2014 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3e80

    if-le v1, v2, :cond_47

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_47
    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private importLog()V
    .registers 3

    .line 237
    const-string v0, "logs"

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x29

    :try_start_19
    invoke-virtual {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_26

    :catch_1d
    move-exception v0

    const-string v0, "No document picker available"

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    :goto_26
    return-void
.end method

.method private info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 98
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private label(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 5

    .line 74
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p3, :cond_12

    const p1, 0x1010038

    goto :goto_15

    :cond_12
    const p1, 0x1010036

    :goto_15
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dark()Z

    move-result p2

    if-eqz p3, :cond_25

    if-eqz p2, :cond_21

    const p2, -0x403e39

    goto :goto_2e

    :cond_21
    const p2, -0x9d9a95

    goto :goto_2e

    :cond_25
    if-eqz p2, :cond_2b

    const p2, -0xb0b0a

    goto :goto_2e

    :cond_2b
    const p2, -0xe8e7e5

    :goto_2e
    invoke-direct {p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->themed(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method static synthetic lambda$preview$43(Landroid/widget/EditText;)V
    .registers 3

    .line 276
    invoke-virtual {p0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    const v1, 0x7fffffff

    :cond_f
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setMaxLines(I)V

    return-void
.end method

.method static synthetic lambda$settingsRoot$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 26
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 27
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private openChat()V
    .registers 2

    .line 68
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {p0}, Lio/mesalabs/unica/troubleshooting/PrivateLm;->open(Landroid/app/Activity;)V

    return-void
.end method

.method private owner()Z
    .registers 3

    .line 56
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private prepareAnalysis()V
    .registers 4

    .line 263
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$48;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$48;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v1, "logs"

    const-string v2, "Finding crashes and app failures\u2026"

    invoke-direct {p0, v1, v2, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    .line 267
    return-void
.end method

.method private preview()V
    .registers 12

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateLM \u2014 choose the model and local or cloud mode in the app.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    invoke-virtual {v1}, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->coverage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v4

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 271
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 272
    nop

    :goto_47
    iget-object v6, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v6, v6, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_e5

    .line 273
    new-instance v6, Landroid/widget/CheckBox;

    invoke-direct {v6, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Include log section "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v6, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v6, v6, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8c

    iget-object v6, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v6, v6, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_8e

    :cond_8c
    const-string v6, "Crash details"

    .line 275
    :goto_8e
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v9, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v9, v9, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setTextSize(F)V

    const v5, 0x20001

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    new-instance v5, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " \u2014 section "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v9, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReview:Z

    if-eqz v9, :cond_d2

    const-string v9, "Tap to expand or collapse setup details"

    goto :goto_d4

    :cond_d2
    const-string v9, "Tap to expand or collapse crash details"

    :goto_d4
    new-instance v10, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$12;

    invoke-direct {v10, v7}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$12;-><init>(Landroid/widget/EditText;)V

    invoke-direct {v5, p0, v6, v9, v10}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$ActionRow;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 272
    move v5, v8

    goto/16 :goto_47

    .line 278
    :cond_e5
    new-instance v2, Landroid/widget/ScrollView;

    invoke-direct {v2, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 279
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v5, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReview:Z

    if-eqz v5, :cond_f9

    const-string v5, "Review setup report for PrivateLM"

    goto :goto_fb

    :cond_f9
    const-string v5, "Review crash details for PrivateLM"

    :goto_fb
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\nExpand a section to review or edit it. Uncheck sections you do not want analyzed. Redaction may miss sensitive information. Copy and open places the selected text on your clipboard; paste it into PrivateLM yourself. Nothing is submitted for inference here. If you select a cloud provider in PrivateLM, sending the message shares it with that provider."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    const-string v1, "Copy and open PrivateLM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 282
    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$13;

    invoke-direct {v1, p0, v0, v3, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$13;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/app/AlertDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 290
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 291
    return-void
.end method

.method private progress(Ljava/lang/String;)Landroid/widget/ProgressBar;
    .registers 6

    .line 185
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-boolean v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, 0x0

    goto :goto_19

    :cond_17
    const/16 p1, 0x8

    :goto_19
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private relatedMods(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 7

    .line 189
    const-string v0, "evidence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const-string v2, "duplicates"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2a

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2a

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "feature"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 190
    :cond_2a
    const-string p1, "HMA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_35
    const-string p1, "PIF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_40
    const-string p1, "Boot property"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4d

    const-string p1, "Prophide"

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_4d
    const-string p1, "TEE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const-string p1, "TEE Simulator"

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_5a
    const-string p1, "AI backend"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_65
    const-string p1, "UN1CA Settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_70
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_79

    const-string p1, "Check incomplete"

    goto :goto_7f

    :cond_79
    const-string p1, ", "

    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    :goto_7f
    return-object p1
.end method

.method private restart()V
    .registers 4

    .line 224
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Restart device?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Save your work before restarting."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$0;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$0;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v2, "Restart"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private restartOffer()V
    .registers 4

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Restart required"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Restart to apply the module change. Loaded hooks may still be active."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$6;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$6;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v2, "Restart now"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Later"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private reviewLsposed(Lorg/json/JSONObject;)V
    .registers 5

    .line 225
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Review LSPosed scope."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 226
    const-string v1, "duplicate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "This module serves the same purpose as a built-in UN1CA feature."

    goto :goto_18

    :cond_16
    const-string v1, "This module conflicts with a built-in UN1CA feature."

    :goto_18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$43;

    invoke-direct {v1, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$43;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    .line 227
    const-string v2, "Open manager"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$44;

    invoke-direct {v1, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$44;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    .line 232
    const-string p1, "Keep enabled"

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V
    .registers 5

    .line 195
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busyViews()V

    .line 196
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;

    invoke-direct {p2, p0, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$19;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method private saveOriginal()V
    .registers 4

    .line 234
    const-string v0, "logs"

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "unica-original-log.txt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    const/16 v1, 0x2a

    :try_start_21
    invoke-virtual {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_24
    .catch Landroid/content/ActivityNotFoundException; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_2e

    :catch_25
    move-exception v0

    const-string v0, "No document picker available"

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    .line 236
    :goto_2e
    return-void
.end method

.method private scan()V
    .registers 4

    .line 199
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$16;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$16;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v1, "scan"

    const-string v2, "Scanning installed modules\u2026"

    invoke-direct {p0, v1, v2, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    .line 205
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .registers 4

    .line 186
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->status:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    const-string v1, "setup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupStatus:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupStatusView:Landroid/widget/TextView;

    :goto_14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34

    :cond_18
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->activeSection:Ljava/lang/String;

    const-string v1, "logs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logStatus:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->logStatusView:Landroid/widget/TextView;

    goto :goto_14

    :cond_2b
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanStatus:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanStatusView:Landroid/widget/TextView;

    goto :goto_14

    :cond_34
    :goto_34
    return-void
.end method

.method private settingsRoot(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 10

    .line 22
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 23
    :cond_d
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 24
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 25
    new-instance v3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$45;

    invoke-direct {v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$45;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 29
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 30
    const/16 v4, 0x8

    invoke-direct {p0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v4

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v6

    const/16 v7, 0x18

    invoke-direct {p0, v7}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v5

    invoke-virtual {v3, v4, v6, v7, v5}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    const/16 v4, 0x38

    invoke-direct {p0, v4}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 31
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_62

    const-string v4, "\u203a"

    goto :goto_64

    :cond_62
    const-string v4, "\u2039"

    :goto_64
    const/16 v5, 0x24

    invoke-direct {p0, v4, v5, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->styleText(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    .line 32
    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v5, "Navigate up"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 33
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 34
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x101045c

    invoke-virtual {v6, v7, v5, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_92

    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    if-eqz v6, :cond_92

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 35
    :cond_92
    new-instance v5, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$46;

    invoke-direct {v5, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$46;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x30

    invoke-direct {p0, v6}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    const/16 v4, 0x16

    invoke-direct {p0, p1, v4, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->styleText(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const-string v4, "sans-serif-medium"

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 37
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    invoke-direct {v2, v1, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-object v0
.end method

.method private styleText(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 4

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->label(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method private text(Ljava/lang/String;I)Landroid/widget/TextView;
    .registers 7

    .line 76
    const/16 v0, 0x14

    const/4 v1, 0x1

    if-ge p2, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-direct {p0, p1, p2, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->label(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x18

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v0

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v2

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result p2

    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->dp(I)I

    move-result v3

    invoke-virtual {p1, v0, v2, p2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->page:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object p1
.end method

.method private themed(II)I
    .registers 6

    .line 72
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_11

    return p2

    :cond_11
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_1c

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getColor(I)I

    move-result p1

    goto :goto_1e

    :cond_1c
    iget p1, v0, Landroid/util/TypedValue;->data:I

    :goto_1e
    return p1
.end method

.method private ui(Ljava/lang/Runnable;)V
    .registers 3

    .line 70
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$53;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$53;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$checkSetup$36$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/String;)V
    .registers 2

    .line 257
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReport:Ljava/lang/String;

    const-string p1, "Check completed. Review configuration and runtime results below."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$checkSetup$37$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    invoke-static {p0}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->collect(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;

    invoke-direct {v1, p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$15;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    .line 258
    return-void
.end method

.method synthetic lambda$collect$34$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/String;)V
    .registers 2

    .line 253
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    const-string p1, "This device \u2014 recent logcat and dedicated crash buffer"

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->source:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysis:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisParts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisTitles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->expandedAnalysis:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const-string p1, "Recent log collected; older or persistent crash evidence may be absent."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$collect$35$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "troubleshooting"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_22

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot prepare log storage"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_22
    :goto_22
    const-string v2, "logcat-"

    const-string v3, ".txt"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/ProcessBuilder;

    const-string v11, "-v"

    const-string v12, "threadtime"

    const-string v5, "/system/bin/logcat"

    const-string v6, "-b"

    const-string v7, "all"

    const-string v8, "-d"

    const-string v9, "-t"

    const-string v10, "20000"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v4

    .line 244
    :try_start_50
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x8

    invoke-virtual {v4, v7, v8, v6}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-eqz v6, :cond_115

    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v6

    if-nez v6, :cond_10d

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_65
    .catchall {:try_start_50 .. :try_end_65} :catchall_11d

    const/high16 v9, 0x800000

    :try_start_67
    invoke-static {v6, v9}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v10
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_102

    :try_start_6b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 245
    const-string v6, "crash-"

    invoke-static {v6, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 246
    new-instance v3, Ljava/lang/ProcessBuilder;

    const-string v11, "/system/bin/logcat"

    const-string v12, "-b"

    const-string v13, "crash"

    const-string v14, "-d"

    const-string v15, "-t"

    const-string v16, "6000"

    const-string v17, "-v"

    const-string v18, "threadtime"

    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3
    :try_end_99
    .catchall {:try_start_6b .. :try_end_99} :catchall_11d

    .line 248
    :try_start_99
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7, v8, v5}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-eqz v5, :cond_f2

    .line 249
    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v5

    if-nez v5, :cond_ea

    .line 250
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_ac
    .catchall {:try_start_99 .. :try_end_ac} :catchall_fa

    :try_start_ac
    invoke-static {v5, v9}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v6
    :try_end_b0
    .catchall {:try_start_ac .. :try_end_b0} :catchall_df

    :try_start_b0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n=== Dedicated crash buffer (may duplicate recent logs) ===\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_ca
    .catchall {:try_start_b0 .. :try_end_ca} :catchall_fa

    .line 252
    :try_start_ca
    invoke-virtual {v3}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 253
    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$49;

    invoke-direct {v1, v0, v5}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$49;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V
    :try_end_d8
    .catchall {:try_start_ca .. :try_end_d8} :catchall_11d

    .line 254
    invoke-virtual {v4}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 255
    return-void

    .line 250
    :catchall_df
    move-exception v0

    move-object v6, v0

    :try_start_e1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    goto :goto_e9

    :catchall_e5
    move-exception v0

    :try_start_e6
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e9
    throw v6

    .line 249
    :cond_ea
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Crash buffer access unavailable"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_f2
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Crash buffer collection timed out"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_fa
    .catchall {:try_start_e6 .. :try_end_fa} :catchall_fa

    .line 252
    :catchall_fa
    move-exception v0

    :try_start_fb
    invoke-virtual {v3}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_102
    .catchall {:try_start_fb .. :try_end_102} :catchall_11d

    .line 244
    :catchall_102
    move-exception v0

    move-object v1, v0

    :try_start_104
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_107
    .catchall {:try_start_104 .. :try_end_107} :catchall_108

    goto :goto_10c

    :catchall_108
    move-exception v0

    :try_start_109
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_10c
    throw v1

    :cond_10d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Logcat access unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_11c

    :cond_115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Log collection timed out"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    :goto_11c
    throw v0
    :try_end_11d
    .catchall {:try_start_109 .. :try_end_11d} :catchall_11d

    .line 254
    :catchall_11d
    move-exception v0

    invoke-virtual {v4}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v0
.end method

.method synthetic lambda$confirmModule$22$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;)V
    .registers 4

    .line 221
    const-string v0, "modules"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    const-string v1, "warning"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->warning:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string p1, "Module action verified. Restart required."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->restartOffer()V

    return-void
.end method

.method synthetic lambda$confirmModule$23$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-static {p1, p2}, Lio/mesalabs/unica/troubleshooting/ModuleTransport;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "stage"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->accepted(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "restart"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "boot_count"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "restart_boot"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->history(Ljava/lang/String;)V

    const-string p1, "scan"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/mesalabs/unica/troubleshooting/ModuleTransport;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 221
    new-instance p2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;

    invoke-direct {p2, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$2;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;)V

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method synthetic lambda$confirmModule$24$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 218
    new-instance p3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$11;

    invoke-direct {p3, p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$11;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-string p1, "scan"

    const-string p2, "Updating module\u2026"

    invoke-direct {p0, p1, p2, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    return-void
.end method

.method synthetic lambda$confirmModule$25$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(ZLorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 222
    if-eqz p1, :cond_2e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "root:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "stage"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "id"

    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->decline(Ljava/lang/String;)V

    :cond_2e
    return-void
.end method

.method synthetic lambda$draw$10$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 5

    .line 136
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "\n\nModule ID: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\nNo automatic changes were made."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$draw$11$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;)V
    .registers 2

    .line 151
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewLsposed(Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic lambda$draw$12$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;)V
    .registers 2

    .line 159
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewLsposed(Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic lambda$draw$13$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 3

    .line 168
    const-string v0, "PIF and TEE setup"

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReport:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$draw$14$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/widget/TextView;I)V
    .registers 5

    .line 179
    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_f

    const v1, 0x7fffffff

    :cond_f
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->expandedAnalysis:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    if-eqz v0, :cond_1e

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_1e
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_21
    return-void
.end method

.method synthetic lambda$draw$15$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 4

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "history"

    const-string v2, "No actions recorded."

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Action history"

    invoke-direct {p0, v1, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$draw$16$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 3

    .line 182
    const-string v0, "Restoration help"

    const-string v1, "Restore removes only unchanged disable markers created by this menu. For recovery restoration, remove only the selected module\u2019s disable file whose contents start with \u2018UN1CA troubleshooting v1\u2019. Module files and app data are preserved."

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$draw$6$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 3

    .line 123
    const-string v0, "About this check"

    const-string v1, "Checks known duplicate-purpose root modules, selected modified files, known LSPosed duplicate purposes, and verified LSPosed conflicts. Duplicate purpose does not prove a crash or a failed integrity check. Built-in files must be present, but this does not prove that feature is enabled or working. Dynamic hooks and scripts may be missed. LSPosed checks require an exact package and matching enabled scope. Duplicate-purpose rules also require the built-in framework class. They do not establish runtime hook execution. Confirmed conflicts require additional verified evidence."

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$draw$7$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 2

    .line 126
    const-string v0, "Restart postponed. Changes are pending."

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    return-void
.end method

.method synthetic lambda$draw$8$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;)V
    .registers 3

    .line 134
    const-string v0, "restore"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->confirmModule(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic lambda$draw$9$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;)V
    .registers 3

    .line 135
    const-string v0, "disable"

    invoke-direct {p0, v0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->confirmModule(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method synthetic lambda$explainSetup$38$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    const-string p1, "This device \u2014 PIF and TEE setup report"

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewSource:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReview:Z

    const-string p1, "Report ready. Review the selected sections before analysis."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->preview()V

    return-void
.end method

.method synthetic lambda$explainSetup$39$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReport:Ljava/lang/String;

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    invoke-direct {v1}, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;-><init>()V

    invoke-static {v0, v1}, Lio/mesalabs/unica/troubleshooting/LogTools;->reviewed(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReport:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    iget v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    const/4 v1, 0x0

    :goto_1f
    iget-object v2, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    iget-object v2, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    const-string v3, "PIF and TEE setup results"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 261
    :cond_31
    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$18;

    invoke-direct {v1, p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$18;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)V

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method synthetic lambda$new$2$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 1

    .line 42
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onActivityResult$30$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 2

    .line 239
    const-string v0, "Original log saved. It may contain sensitive information."

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$31$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wt"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    if-eqz p1, :cond_25

    :try_start_c
    const-string v0, "UTF-8"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_23

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    :cond_1a
    new-instance p1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$3;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$3;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    return-void

    :catchall_23
    move-exception p2

    goto :goto_2d

    :cond_25
    :try_start_25
    new-instance p2, Ljava/io/IOException;

    const-string v0, "Cannot write selected document"

    invoke-direct {p2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_23

    :goto_2d
    if-eqz p1, :cond_37

    :try_start_2f
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    throw p2
.end method

.method synthetic lambda$onActivityResult$32$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    const-string p1, "Imported file (device provenance unverified)"

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->source:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysis:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisParts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->analysisTitles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->expandedAnalysis:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    const-string p1, "File imported. Review crash details before analysis."

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$onActivityResult$33$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/net/Uri;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/high16 v0, 0x800000

    :try_start_a
    invoke-static {p1, v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_2b

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_13
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_23

    new-instance p1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$20;

    invoke-direct {p1, p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$20;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    return-void

    :cond_23
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Select a plain text log; extract compressed or binary files first"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_2b
    move-exception v0

    if-eqz p1, :cond_36

    :try_start_2e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    throw v0
.end method

.method synthetic lambda$onCreate$3$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 58
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$onCreate$4$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/content/DialogInterface;)V
    .registers 2

    .line 58
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finish()V

    return-void
.end method

.method synthetic lambda$prepareAnalysis$40$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 2

    .line 265
    const-string v0, "No system crash, app crash, app-start failure or app-not-responding report found. Nothing was sent for analysis."

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$prepareAnalysis$41$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)V
    .registers 4

    .line 266
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->source:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewSource:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setupReview:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " crash log sections. Review and select what to analyze."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->preview()V

    return-void
.end method

.method synthetic lambda$prepareAnalysis$42$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->select(Ljava/lang/String;)Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    move-result-object v0

    .line 265
    iget-object v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$41;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$41;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    return-void

    .line 266
    :cond_1b
    new-instance v1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$42;

    invoke-direct {v1, p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$42;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)V

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method synthetic lambda$preview$44$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/AlertDialog;Landroid/view/View;)V
    .registers 11

    .line 283
    new-instance p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    invoke-direct {p4}, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;-><init>()V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget v0, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    iput v0, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    const/4 v0, 0x0

    iput v0, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-boolean v1, v1, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    iput-boolean v1, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    .line 284
    move v1, v0

    :goto_15
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8c

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 285
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    invoke-static {v2, v3}, Lio/mesalabs/unica/troubleshooting/LogTools;->reviewed(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    move-result-object v2

    .line 286
    iget-object v2, v2, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_5b

    const/4 v2, 0x1

    iput-boolean v2, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    goto :goto_89

    :cond_5b
    iget-object v4, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v4, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    add-int/2addr v4, v3

    iput v4, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    iget-object v3, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v4, v4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_83

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->selection:Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    iget-object v4, v4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_85

    :cond_83
    const-string v4, "Crash details"

    :goto_85
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 284
    :cond_89
    :goto_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 288
    :cond_8c
    iget-object p1, p4, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9e

    const-string p1, "Select at least one non-empty log section"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 289
    :cond_9e
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->reviewSource:Ljava/lang/String;

    invoke-static {p0, p1, p4}, Lio/mesalabs/unica/troubleshooting/PrivateLm;->copyAndOpen(Landroid/app/Activity;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)Z

    move-result p1

    if-eqz p1, :cond_a9

    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    .line 290
    :cond_a9
    return-void
.end method

.method synthetic lambda$preview$45$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/app/AlertDialog;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/content/DialogInterface;)V
    .registers 6

    .line 282
    const/4 p4, -0x1

    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p4

    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;

    invoke-direct {v0, p0, p2, p3, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$14;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/AlertDialog;)V

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$restart$27$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 224
    :try_start_0
    const-string p1, "power"

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p1

    invoke-static {p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->describe(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    :goto_18
    return-void
.end method

.method synthetic lambda$restartOffer$26$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 223
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->restart()V

    return-void
.end method

.method synthetic lambda$reviewLsposed$28$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .registers 7

    .line 228
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lsposed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "package"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->accepted(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Accepted LSPosed review: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "; actual scope remains unverified"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->history(Ljava/lang/String;)V

    .line 229
    const-string p1, "org.lsposed.manager"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 230
    const/4 p2, 0x0

    move p3, p2

    :goto_44
    const/4 v0, 0x1

    if-ge p3, v0, :cond_5b

    aget-object v1, p1, p3

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_58

    invoke-virtual {p0, v1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->startActivity(Landroid/content/Intent;)V

    move p2, v0

    goto :goto_5b

    :cond_58
    add-int/lit8 p3, p3, 0x1

    goto :goto_44

    .line 231
    :cond_5b
    :goto_5b
    if-nez p2, :cond_72

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p2, "Open LSPosed Manager from its notification or shortcut, disable the module/scope, then restart. No compatible manager launch activity was found."

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string p2, "OK"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    :cond_72
    return-void
.end method

.method synthetic lambda$reviewLsposed$29$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;Landroid/content/DialogInterface;I)V
    .registers 4

    .line 232
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "lsposed:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "package"

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->decline(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$17$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/Exception;)V
    .registers 4

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->describe(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->describe(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->history(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$18$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 2

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->busy:Z

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    return-void
.end method

.method synthetic lambda$run$19$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V
    .registers 3

    .line 196
    :try_start_0
    invoke-interface {p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;->run()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e
    .catchall {:try_start_0 .. :try_end_3} :catchall_c

    new-instance p1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$7;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$7;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    :goto_8
    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    goto :goto_1d

    :catchall_c
    move-exception p1

    goto :goto_1e

    :catch_e
    move-exception p1

    :try_start_f
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$8;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$8;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Ljava/lang/Exception;)V

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_c

    new-instance p1, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$7;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$7;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    goto :goto_8

    :goto_1d
    return-void

    :goto_1e
    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$7;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$7;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    throw p1
.end method

.method synthetic lambda$scan$20$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 7

    .line 203
    const-string v0, "modules"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    if-nez v1, :cond_13

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    :cond_13
    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    const-string p2, "warning"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :cond_23
    iput-object p4, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->warning:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    const-string p2, "Scan completed. Review evidence below."

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setStatus(Ljava/lang/String;)V

    .line 204
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string p3, "scanned"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "scan_schema"

    const/4 p3, 0x5

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "lsposed_state"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "apps"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p2

    new-instance p3, Ljava/util/Date;

    invoke-direct {p3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "last_scan"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method synthetic lambda$scan$21$io-mesalabs-unica-troubleshooting-TroubleshootingActivity()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    nop

    .line 201
    :try_start_1
    const-string v0, "scan"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/mesalabs/unica/troubleshooting/ModuleTransport;->request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    const-string v1, ""

    move-object v4, v0

    move-object v7, v1

    goto :goto_24

    :catch_d
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "modules"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->describe(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    move-object v4, v1

    .line 202
    :goto_24
    const-string v0, "lsposed"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_31

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_31
    move-object v6, v0

    invoke-static {p0, v6}, Lio/mesalabs/unica/troubleshooting/InstalledModules;->scan(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v5

    .line 203
    new-instance v2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$4;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->ui(Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method synthetic lambda$settingsRoot$1$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Landroid/view/View;)V
    .registers 2

    .line 35
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->onBackPressed()V

    return-void
.end method

.method synthetic lambda$ui$5$io-mesalabs-unica-troubleshooting-TroubleshootingActivity(Ljava/lang/Runnable;)V
    .registers 3

    .line 70
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_f
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 239
    const/16 v0, 0x2a

    const-string v1, "logs"

    const/4 v2, -0x1

    if-ne p1, v0, :cond_25

    if-ne p2, v2, :cond_25

    if-eqz p3, :cond_25

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->raw:Ljava/lang/String;

    new-instance p3, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;

    invoke-direct {p3, p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$9;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/net/Uri;Ljava/lang/String;)V

    const-string p1, "Saving original log\u2026"

    invoke-direct {p0, v1, p1, p3}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    return-void

    .line 240
    :cond_25
    const/16 v0, 0x29

    if-ne p1, v0, :cond_41

    if-ne p2, v2, :cond_41

    if-eqz p3, :cond_41

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;

    invoke-direct {p2, p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$10;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;Landroid/net/Uri;)V

    const-string p1, "Reading selected log\u2026"

    invoke-direct {p0, v1, p1, p2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->run(Ljava/lang/String;Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$Work;)V

    :cond_41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 57
    const-string v0, "[]"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "Troubleshooting"

    invoke-virtual {p0, p1}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 58
    :cond_18
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->owner()Z

    move-result p1

    if-nez p1, :cond_41

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Troubleshooting is available to the device owner only."

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$54;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$54;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    const-string v1, "Close"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$55;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity$55;-><init>(Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    .line 59
    :cond_41
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->back:Landroid/window/OnBackInvokedCallback;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 60
    invoke-virtual {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "scanned"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    :try_start_57
    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "modules"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    new-instance p1, Lorg/json/JSONArray;

    invoke-virtual {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "apps"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;
    :try_end_79
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_79} :catch_7a

    goto :goto_7b

    :catch_7a
    move-exception p1

    .line 61
    :goto_7b
    invoke-virtual {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "scan_schema"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_98

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->modules:Lorg/json/JSONArray;

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->apps:Lorg/json/JSONArray;

    iput-boolean v2, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->scanned:Z

    .line 62
    :cond_98
    :try_start_98
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0, v2}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lsposed_state"

    const-string v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->lsposedState:Lorg/json/JSONObject;
    :try_end_ab
    .catch Lorg/json/JSONException; {:try_start_98 .. :try_end_ab} :catch_ac

    goto :goto_ad

    :catch_ac
    move-exception p1

    .line 63
    :goto_ad
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->draw()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->cancelled:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->back:Landroid/window/OnBackInvokedCallback;

    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 65
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->finish()V

    const/4 p1, 0x1

    return p1

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .registers 2

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->content:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/TroubleshootingActivity;->background()V

    :cond_a
    return-void
.end method

