.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseActivity$27"
    proto = "(Ljava/util/List;Landroid/content/pm/PackageInfo;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Landroid/content/pm/PackageInfo;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/util/List;Landroid/content/pm/PackageInfo;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;->f$1:Ljava/util/List;

    iput-object p3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;->f$2:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;->f$1:Ljava/util/List;

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$30;->f$2:Landroid/content/pm/PackageInfo;

    invoke-virtual {v0, v1, v2, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseActivity$27$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/util/List;Landroid/content/pm/PackageInfo;I)V

    return-void
.end method

