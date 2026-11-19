.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$searchPicker$15"
    proto = "(Landroid/app/AlertDialog;Landroid/widget/ListView;Landroid/content/DialogInterface;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/app/AlertDialog;

.field public final synthetic f$1:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Landroid/widget/ListView;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$4;->f$0:Landroid/app/AlertDialog;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$4;->f$1:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$4;->f$0:Landroid/app/AlertDialog;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$4;->f$1:Landroid/widget/ListView;

    invoke-static {v0, v1, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$searchPicker$15(Landroid/app/AlertDialog;Landroid/widget/ListView;Landroid/content/DialogInterface;)V

    return-void
.end method

