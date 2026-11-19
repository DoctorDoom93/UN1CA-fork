.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$31;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseApp$18"
    proto = "(Ljava/util/List;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$31;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$31;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$31;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iget-object v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$31;->f$1:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseApp$18$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/util/List;I)V

    return-void
.end method

