.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$searchPicker$13"
    proto = "(Landroid/widget/EditText;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Landroid/widget/EditText;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Landroid/widget/ArrayAdapter;

.field public final synthetic f$5:Landroid/widget/ListView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$0:Landroid/widget/EditText;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$1:Ljava/util/List;

    iput-object p3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$2:Ljava/util/List;

    iput-object p4, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$4:Landroid/widget/ArrayAdapter;

    iput-object p6, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$5:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$0:Landroid/widget/EditText;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$1:Ljava/util/List;

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$2:Ljava/util/List;

    iget-object v3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$4:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$0;->f$5:Landroid/widget/ListView;

    invoke-static/range {v0 .. v5}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$searchPicker$13(Landroid/widget/EditText;Ljava/util/List;Ljava/util/List;[Ljava/lang/String;Landroid/widget/ArrayAdapter;Landroid/widget/ListView;)V

    return-void
.end method

