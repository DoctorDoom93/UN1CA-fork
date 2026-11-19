.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseApp$19"
    proto = "(ILjava/util/List;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;ILjava/util/List;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;->f$1:I

    iput-object p3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iget v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;->f$1:I

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$15;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseApp$19$io-mesalabs-unica-quicktiles-ConfigActivity(ILjava/util/List;)V

    return-void
.end method

