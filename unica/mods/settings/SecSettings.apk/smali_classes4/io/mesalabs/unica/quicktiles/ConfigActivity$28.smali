.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$28;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseShortcut$28"
    proto = "(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$28;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1, p2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseShortcut$28$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/lang/String;Ljava/util/List;Landroid/content/DialogInterface;I)V

    return-void
.end method

