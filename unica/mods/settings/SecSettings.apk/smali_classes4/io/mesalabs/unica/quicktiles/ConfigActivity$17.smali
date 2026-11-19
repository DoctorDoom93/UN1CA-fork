.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$edit$11"
    proto = "(Landroid/content/DialogInterface;I)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$17;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$17;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    invoke-virtual {v0, p1, p2}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$edit$11$io-mesalabs-unica-quicktiles-ConfigActivity(Landroid/content/DialogInterface;I)V

    return-void
.end method

