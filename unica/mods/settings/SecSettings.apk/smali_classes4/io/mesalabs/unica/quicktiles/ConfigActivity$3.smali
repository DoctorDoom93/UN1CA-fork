.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$searchPicker$14"
    proto = "(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;Landroid/widget/AdapterView;Landroid/view/View;IJ)V"
.end annotation


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Landroid/app/AlertDialog;

.field public final synthetic f$2:Ljava/util/function/IntConsumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;->f$0:Ljava/util/List;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;->f$1:Landroid/app/AlertDialog;

    iput-object p3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;->f$2:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;->f$0:Ljava/util/List;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;->f$1:Landroid/app/AlertDialog;

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$3;->f$2:Ljava/util/function/IntConsumer;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$searchPicker$14(Ljava/util/List;Landroid/app/AlertDialog;Ljava/util/function/IntConsumer;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

