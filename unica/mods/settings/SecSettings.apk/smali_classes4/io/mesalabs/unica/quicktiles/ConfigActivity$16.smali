.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$save$29"
    proto = "(Ljava/lang/Integer;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$16;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$16;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$save$29$io-mesalabs-unica-quicktiles-ConfigActivity(Ljava/lang/Integer;)V

    return-void
.end method

