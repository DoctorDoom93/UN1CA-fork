.class public final synthetic Lio/mesalabs/unica/quicktiles/ConfigActivity$26;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/android/tools/r8/annotations/LambdaMethod;
    holder = "Lio/mesalabs/unica/quicktiles/ConfigActivity;"
    method = "lambda$chooseActivityApp$23"
    proto = "(I[Ljava/lang/String;Ljava/util/List;)V"
.end annotation


# instance fields
.field public final synthetic f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;I[Ljava/lang/String;Ljava/util/List;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$1:I

    iput-object p3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iget v1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$1:I

    iget-object v2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$26;->f$3:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lio/mesalabs/unica/quicktiles/ConfigActivity;->lambda$chooseActivityApp$23$io-mesalabs-unica-quicktiles-ConfigActivity(I[Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

