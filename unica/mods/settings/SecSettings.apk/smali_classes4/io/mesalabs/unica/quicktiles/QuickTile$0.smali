.class public final synthetic Lio/mesalabs/unica/quicktiles/QuickTile$0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/QuickTile;"
    method = "execute"
    proto = "()V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/QuickTile;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/QuickTile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/QuickTile$0;->f$0:Lio/mesalabs/unica/quicktiles/QuickTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/QuickTile$0;->f$0:Lio/mesalabs/unica/quicktiles/QuickTile;

    invoke-static {v0}, Lio/mesalabs/unica/quicktiles/QuickTile;->$r8$lambda$4iy4GDl070yHkCA880q9hRvJsZo(Lio/mesalabs/unica/quicktiles/QuickTile;)V

    return-void
.end method

