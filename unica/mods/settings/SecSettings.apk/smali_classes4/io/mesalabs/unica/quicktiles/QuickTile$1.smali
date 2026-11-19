.class Lio/mesalabs/unica/quicktiles/QuickTile$1;
.super Landroid/database/ContentObserver;
.source "QuickTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/mesalabs/unica/quicktiles/QuickTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/mesalabs/unica/quicktiles/QuickTile;


# direct methods
.method constructor <init>(Lio/mesalabs/unica/quicktiles/QuickTile;Landroid/os/Handler;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/QuickTile$1;->this$0:Lio/mesalabs/unica/quicktiles/QuickTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 17
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/QuickTile$1;->this$0:Lio/mesalabs/unica/quicktiles/QuickTile;

    # invokes: Lio/mesalabs/unica/quicktiles/QuickTile;->refresh()V
    invoke-static {p1}, Lio/mesalabs/unica/quicktiles/QuickTile;->access$000(Lio/mesalabs/unica/quicktiles/QuickTile;)V

    return-void
.end method

