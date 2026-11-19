.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseApp$20"
    proto = "(I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$5;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$5;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$5;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iget v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$5;->f$1:I

    invoke-virtual {v0, v1}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseApp$20$io-mesalabs-unica-quicktiles-ConfigActivity(I)V

    return-void
.end method

