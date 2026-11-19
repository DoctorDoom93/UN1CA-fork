.class Lio/mesalabs/unica/quicktiles/ConfigActivity$2;
.super Ljava/lang/Object;
.source "ConfigActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/mesalabs/unica/quicktiles/ConfigActivity;->searchPicker(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

.field final synthetic val$filter:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/mesalabs/unica/quicktiles/ConfigActivity;Ljava/lang/Runnable;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$2;->this$0:Lio/mesalabs/unica/quicktiles/ConfigActivity;

    iput-object p2, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$2;->val$filter:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    .line 221
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 219
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 220
    iget-object p1, p0, Lio/mesalabs/unica/quicktiles/ConfigActivity$2;->val$filter:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

