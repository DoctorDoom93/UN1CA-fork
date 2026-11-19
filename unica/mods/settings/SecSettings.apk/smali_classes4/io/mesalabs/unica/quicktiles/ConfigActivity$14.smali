.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseApp$17"
    proto = "(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/LauncherActivityInfo;)I"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {p1, p2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseApp$17(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/LauncherActivityInfo;)I

    move-result p1

    return p1
.end method

