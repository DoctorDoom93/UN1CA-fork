.class final Lio/mesalabs/unica/troubleshooting/AskAiChat;
.super Ljava/lang/Object;
.source "AskAiChat.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;
    }
.end annotation


# instance fields
.field private backend:Landroid/widget/TextView;

.field private busy:Z

.field private client:Lio/mesalabs/unica/troubleshooting/AiClient;

.field private closed:Z

.field private config:Landroid/os/Bundle;

.field private final controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private coverage:Landroid/widget/TextView;

.field private final dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/AlertDialog;",
            ">;"
        }
    .end annotation
.end field

.field private volatile generation:I

.field private final history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

.field private final host:Landroid/app/Activity;

.field private includeLog:Landroid/widget/CheckBox;

.field private layout:Landroid/widget/LinearLayout;

.field private final leave:Ljava/lang/Runnable;

.field private log:Landroid/widget/EditText;

.field private messages:Landroid/widget/LinearLayout;

.field private pendingFile:Landroid/net/Uri;

.field private progress:Landroid/widget/ProgressBar;

.field private question:Landroid/widget/EditText;

.field private scroll:Landroid/widget/ScrollView;

.field private status:Landroid/widget/TextView;

.field private stop:Landroid/widget/Button;

.field private final surfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$-IdseNSTKJhBESq4ET4mO32wK0g(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->review()V

    return-void
.end method

.method public static synthetic $r8$lambda$IgQVzP3nTd-xqu7orRPZmPzfqoc(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->pickFile()V

    return-void
.end method

.method public static synthetic $r8$lambda$L1qoviBWu3c_WrtZ4R3mN5aTU1s(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->refresh()V

    return-void
.end method

.method public static synthetic $r8$lambda$TyDAlRNXUcHt-5kvsy6bmlcpvf4(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->pasteLog()V

    return-void
.end method

.method public static synthetic $r8$lambda$zZGhihcfBxlPBlAoVMh0gTJZWUc(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V
    .registers 1

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->cancel()V

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lio/mesalabs/unica/troubleshooting/ChatHistory;Ljava/lang/Runnable;)V
    .registers 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->worker:Ljava/util/concurrent/ExecutorService;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->surfaces:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dialogs:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    iput-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iput-object p3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->leave:Ljava/lang/Runnable;

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->build()V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->refresh()V

    return-void
.end method

.method private attach(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 127
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    invoke-static {p1}, Lio/mesalabs/unica/troubleshooting/LogTools;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iput-object p2, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachmentName:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object p1, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const/4 p2, 0x0

    iput p2, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string p2, "Log loaded and redacted. Review for sensitive information; redaction may miss it. Choose a section and ask a question."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private attr(II)I
    .registers 6

    .line 33
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_13

    return p2

    :cond_13
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_1a

    iget p1, v0, Landroid/util/TypedValue;->data:I

    goto :goto_22

    :cond_1a
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    :goto_22
    return p1
.end method

.method private build()V
    .registers 9

    .line 48
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    const-string v1, "Ask aI"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 49
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->layout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->layout:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->layout:Landroid/widget/LinearLayout;

    new-instance v4, Lio/mesalabs/unica/troubleshooting/AskAiChat$1;

    invoke-direct {v4}, Lio/mesalabs/unica/troubleshooting/AskAiChat$1;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 51
    new-instance v0, Landroid/widget/ScrollView;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->scroll:Landroid/widget/ScrollView;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v4

    const/16 v5, 0x14

    invoke-direct {p0, v5}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v2

    const/16 v6, 0x18

    invoke-direct {p0, v6}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v6

    invoke-virtual {v0, v4, v5, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->scroll:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->scroll:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 52
    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    const-string v2, "Checking your active AI backend\u2026"

    const/16 v4, 0xf

    invoke-direct {p0, v2, v4, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->backend:Landroid/widget/TextView;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->backend:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    const-string v2, "Ask about a problem, paste a log, or attach a text file. Up to 12 recent exchanges stay in memory until Troubleshooting closes. AI suggestions require verification."

    invoke-direct {p0, v2, v4, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$4;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$4;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v4, "Refresh AI backend"

    invoke-direct {p0, v1, v4, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 55
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->messages:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->messages:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->messages:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->renderHistory()V

    .line 56
    const-string v1, "Log evidence"

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 57
    const-string v2, "No log attached"

    const/16 v4, 0xe

    invoke-direct {p0, v2, v4, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->coverage:Landroid/widget/TextView;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->coverage:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$5;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$5;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v5, "Paste log"

    invoke-direct {p0, v1, v5, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$6;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$6;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v5, "Attach text / log file"

    invoke-direct {p0, v1, v5, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 59
    const/4 v2, 0x5

    const-string v5, "Review or edit the selected log section"

    const/4 v6, 0x3

    invoke-direct {p0, v5, v6, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->editor(Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$7;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$7;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v5, "Expand / collapse log"

    invoke-direct {p0, v1, v5, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 61
    new-instance v2, Landroid/widget/CheckBox;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const-string v5, "Include this log section in the next message"

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setTextSize(F)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/16 v5, 0x30

    invoke-direct {p0, v5}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setMinHeight(I)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-boolean v5, v5, Lio/mesalabs/unica/troubleshooting/ChatHistory;->includeLog:Z

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    new-instance v5, Lio/mesalabs/unica/troubleshooting/AskAiChat$8;

    invoke-direct {v5, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$8;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$9;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$9;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v5, "Previous section"

    invoke-direct {p0, v1, v5, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$10;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$10;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v5, "Next section"

    invoke-direct {p0, v1, v5, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 63
    new-instance v2, Lio/mesalabs/unica/troubleshooting/AskAiChat$11;

    invoke-direct {v2, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$11;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v5, "Remove log"

    invoke-direct {p0, v1, v5, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 64
    const-string v1, "Your message"

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "Describe the problem or ask a follow-up question"

    const/16 v2, 0x8

    invoke-direct {p0, v1, v6, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->editor(Ljava/lang/String;II)Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v5, v5, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v1, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->progress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->progress:Landroid/widget/ProgressBar;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x20

    invoke-direct {p0, v6}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v7

    invoke-direct {p0, v6}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v6

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const-string v1, "Review each request before sending. No device changes are made by the chat."

    invoke-direct {p0, v1, v4, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 67
    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$12;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$12;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v3, "Review and send"

    invoke-direct {p0, v0, v3, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 68
    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$2;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$2;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v3, "Cancel request"

    invoke-direct {p0, v0, v3, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->stop:Landroid/widget/Button;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->stop:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->stop:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$3;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$3;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v2, "Clear conversation"

    invoke-direct {p0, v0, v2, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 70
    const-string v1, "Back to Troubleshooting"

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->leave:Ljava/lang/Runnable;

    invoke-direct {p0, v0, v1, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 71
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->background()V

    .line 72
    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .registers 9

    .line 42
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41800000    # 16.0f

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setAllCaps(Z)V

    const/16 p2, 0x40

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setMinHeight(I)V

    const p2, 0x800013

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setGravity(I)V

    const/16 p2, 0x10

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v1

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v2

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v3

    invoke-direct {p0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p2

    invoke-virtual {v0, v1, v2, v3, p2}, Landroid/widget/Button;->setPaddingRelative(IIII)V

    .line 43
    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const v1, 0x101042c

    const/high16 v2, 0x18000000

    invoke-direct {p0, v1, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->attr(II)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, -0x1

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {p2, v1, v4, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 44
    new-instance p2, Lio/mesalabs/unica/troubleshooting/AskAiChat$15;

    invoke-direct {p2, p3}, Lio/mesalabs/unica/troubleshooting/AskAiChat$15;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, v3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 p3, 0x8

    invoke-direct {p0, p3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-direct {p0, p3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p3

    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private buttonCopy(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 5

    .line 94
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const-string v1, "Copy answer"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$24;

    invoke-direct {v1, p0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat$24;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private cancel()V
    .registers 3

    .line 162
    iget v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-virtual {v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->close()V

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    :cond_12
    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->setBusy(Z)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->backend:Landroid/widget/TextView;

    const-string v1, "Refresh the backend before sending again."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v1, "Request cancelled. Your draft and log remain available."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .registers 9

    .line 37
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x18

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v2

    const/16 v3, 0x10

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v5

    invoke-direct {p0, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v3

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    .line 38
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-direct {p0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->surfaces:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_50

    const/16 p1, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p1

    const-string p2, "sans-serif-medium"

    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_50
    return-object v0
.end method

.method private chunk()I
    .registers 4

    .line 119
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    if-nez v0, :cond_9

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->sectionChars:I

    goto :goto_13

    :cond_9
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    const-string v1, "chat_section_chars"

    const/16 v2, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_13
    return v0
.end method

.method private collapsible(Landroid/widget/LinearLayout;Ljava/lang/String;I)V
    .registers 7

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object p3

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_1e

    const-string v1, "\\n"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length p2, p2

    if-le p2, v0, :cond_36

    .line 90
    :cond_1e
    new-instance p2, Lio/mesalabs/unica/troubleshooting/AskAiChat$27;

    invoke-direct {p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat$27;-><init>()V

    const-string v0, "Show more"

    invoke-direct {p0, p1, v0, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object p1

    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 91
    new-instance p2, Lio/mesalabs/unica/troubleshooting/AskAiChat$28;

    invoke-direct {p2, p3, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$28;-><init>(Landroid/widget/TextView;Landroid/widget/Button;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    :cond_36
    return-void
.end method

.method private color(Ljava/lang/String;I)I
    .registers 6

    .line 34
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_15

    goto :goto_1b

    :cond_15
    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p2

    :goto_1b
    return p2
.end method

.method private dark()Z
    .registers 3

    .line 32
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private destination(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "online"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "Online \u2014 "

    goto :goto_12

    :cond_10
    const-string v2, "On device \u2014 "

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "model"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "endpoint"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dp(I)I
    .registers 3

    .line 31
    int-to-float p1, p1

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private editor(Ljava/lang/String;II)Landroid/widget/EditText;
    .registers 6

    .line 46
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41800000    # 16.0f

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextSize(F)V

    const p1, 0x800033

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setMinLines(I)V

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setMaxLines(I)V

    const p1, 0xa4001

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p2

    const/16 p3, 0xc

    invoke-direct {p0, p3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v1

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p1

    invoke-direct {p0, p3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p3

    invoke-virtual {v0, p2, v1, p1, p3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static error(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 104
    if-eqz p0, :cond_15

    const-string v0, "context_limit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "gemma_prompt_size"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_12
    const-string p0, "This request exceeds the local model\'s token budget. Shorten the log or question, clear older chat history, or select an online backend in AI Settings."

    return-object p0

    .line 105
    :cond_15
    const-string v0, "backend_changed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "The AI backend changed. Refresh it and review the request again before sending."

    return-object p0

    .line 106
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to complete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_2f

    const-string p0, "AI unavailable"

    :cond_2f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ". Your draft and log remain available."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$build$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 6

    .line 50
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static synthetic lambda$button$0(Ljava/lang/Runnable;Landroid/view/View;)V
    .registers 2

    .line 44
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$collapsible$10(Landroid/widget/TextView;Landroid/widget/Button;Landroid/view/View;)V
    .registers 4

    .line 91
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_9

    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    if-eqz p2, :cond_f

    const v0, 0x7fffffff

    :cond_f
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz p2, :cond_17

    const-string p0, "Show less"

    goto :goto_19

    :cond_17
    const-string p0, "Show more"

    :goto_19
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$collapsible$9()V
    .registers 0

    .line 90
    return-void
.end method

.method private loadSection()V
    .registers 6

    .line 121
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->chunk()I

    move-result v1

    invoke-static {v0, v1}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->sectionCount(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v2, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    .line 122
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v2, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v3, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    if-eqz v2, :cond_4a

    iget-object v2, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v3, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_58

    :cond_4a
    iget-object v2, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v3, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->chunk()I

    move-result v4

    invoke-static {v2, v3, v4}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    :goto_58
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_5b
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->coverage:Landroid/widget/TextView;

    if-eqz v1, :cond_b4

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->coverage:Landroid/widget/TextView;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v2, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6e

    const-string v0, "No log attached. You can also paste directly below."

    goto :goto_b1

    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v3, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachmentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v3, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " characters\nSection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v3, v3, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". Only this section and the history shown in the send preview are submitted. Edits below apply to this request."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_b4
    return-void
.end method

.method private pasteLog()V
    .registers 4

    .line 129
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_44

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-nez v1, :cond_17

    goto :goto_44

    .line 132
    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2a

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v1, "Copy plain text before pasting a log."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 133
    :cond_2a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/high16 v2, 0x40000

    if-le v1, v2, :cond_3a

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v1, "Pasted log exceeds 256 KiB of characters. Use a smaller excerpt."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 134
    :cond_3a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pasted log"

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->attach(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void

    .line 130
    :cond_44
    :goto_44
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v1, "Clipboard has no text."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private pickFile()V
    .registers 4

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :try_start_13
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    const/16 v2, 0x2b

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_13 .. :try_end_1a} :catch_1b

    goto :goto_23

    :catch_1b
    move-exception v0

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v1, "No document picker available."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_23
    return-void
.end method

.method private refresh()V
    .registers 4

    .line 109
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->busy:Z

    if-nez v0, :cond_33

    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->closed:Z

    if-eqz v0, :cond_9

    goto :goto_33

    .line 110
    :cond_9
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->saveSection()V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-virtual {v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->close()V

    :cond_15
    new-instance v0, Lio/mesalabs/unica/troubleshooting/AiClient;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lio/mesalabs/unica/troubleshooting/AiClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->backend:Landroid/widget/TextView;

    const-string v2, "Checking your active AI backend\u2026"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$17;

    invoke-direct {v1, p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$17;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/AiClient;)V

    const-string v0, "Checking active backend\u2026"

    invoke-direct {p0, v0, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->run(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;)V

    .line 117
    return-void

    .line 109
    :cond_33
    :goto_33
    return-void
.end method

.method private renderHistory()V
    .registers 8

    .line 82
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->surfaces:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_22

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->surfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->messages:Landroid/widget/LinearLayout;

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->surfaces:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 83
    :cond_22
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->messages:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 84
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->messages:Landroid/widget/LinearLayout;

    const-string v3, "You"

    invoke-direct {p0, v2, v3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->card(Landroid/widget/LinearLayout;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->user:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-direct {p0, v2, v3, v4}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->collapsible(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    const-string v3, "Ask aI"

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v3

    const-string v5, "sans-serif-medium"

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->answer:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->collapsible(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    iget-object v1, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->answer:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->buttonCopy(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    goto :goto_2f

    .line 85
    :cond_6a
    invoke-virtual {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->background()V

    .line 86
    return-void
.end method

.method private review()V
    .registers 10

    .line 143
    const-string v0, "online"

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    if-nez v1, :cond_e

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v1, "Refresh the AI backend first."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 145
    :cond_e
    :try_start_e
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v2, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    invoke-static {v2}, Lio/mesalabs/unica/troubleshooting/LogTools;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/mesalabs/unica/troubleshooting/LogTools;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3f

    :cond_3d
    const-string v3, ""

    :goto_3f
    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    const-string v5, "chat_max_chars"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->prepare(Ljava/lang/String;Ljava/lang/String;I)Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;

    move-result-object v1

    .line 147
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 148
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v5, 0x18

    invoke-direct {p0, v5}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v6

    const/16 v7, 0xc

    invoke-direct {p0, v7}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v5

    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v8

    invoke-virtual {v3, v6, v7, v5, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->destination(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->included:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " previous exchanges included; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->omitted:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " older exchanges omitted to fit the budget. Only the payload below is sent. Review for sensitive data."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    invoke-direct {p0, v5, v6, v4}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->text(Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 150
    iget-object v4, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->preview:Ljava/lang/String;

    const/16 v5, 0xe

    invoke-direct {p0, v3, v4, v5}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->collapsible(Landroid/widget/LinearLayout;Ljava/lang/String;I)V

    new-instance v4, Landroid/widget/ScrollView;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 151
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    const-string v5, "Send this conversation online?"

    goto :goto_d1

    :cond_cf
    const-string v5, "Review local AI request"

    :goto_d1
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 152
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "Agree and send online"

    goto :goto_e4

    :cond_e2
    const-string v0, "Ask on device"

    :goto_e4
    new-instance v4, Lio/mesalabs/unica/troubleshooting/AskAiChat$16;

    invoke-direct {v4, p0, v1, v2}, Lio/mesalabs/unica/troubleshooting/AskAiChat$16;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;)V

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Back to edit"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 151
    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->show(Landroid/app/AlertDialog;)V
    :try_end_fb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_fb} :catch_fc

    .line 153
    goto :goto_106

    :catch_fc
    move-exception v0

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :goto_106
    return-void
.end method

.method private run(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;)V
    .registers 5

    .line 100
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->busy:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->closed:Z

    if-eqz v0, :cond_9

    goto :goto_22

    :cond_9
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->setBusy(Z)V

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    add-int/2addr p1, v0

    iput p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    .line 101
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;

    invoke-direct {v1, p0, p2, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$14;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void

    .line 100
    :cond_22
    :goto_22
    return-void
.end method

.method private saveSection()V
    .registers 4

    .line 125
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v1, v1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void
.end method

.method private section(I)V
    .registers 4

    .line 126
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->saveSection()V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget v1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    add-int/2addr v1, p1

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    return-void
.end method

.method private send(Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;)V
    .registers 5

    .line 155
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;

    invoke-direct {v1, p0, v0, p1, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat$20;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/AiClient;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;)V

    const-string p1, "Asking your selected AI backend\u2026"

    invoke-direct {p0, p1, v1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->run(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;)V

    .line 161
    return-void
.end method

.method private setBusy(Z)V
    .registers 6

    .line 96
    iput-boolean p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->busy:Z

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8

    :cond_1a
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_23

    move v3, v1

    goto :goto_24

    :cond_23
    move v3, v2

    :goto_24
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->stop:Landroid/widget/Button;

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private show(Landroid/app/AlertDialog;)V
    .registers 3

    .line 95
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/mesalabs/unica/troubleshooting/AskAiChat$13;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$13;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Landroid/app/AlertDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private text(Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 6

    .line 35
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p3, :cond_14

    const p1, 0x1010038

    goto :goto_17

    :cond_14
    const p1, 0x1010036

    :goto_17
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dark()Z

    move-result p2

    if-eqz p3, :cond_27

    if-eqz p2, :cond_23

    const p2, -0x3b3934

    goto :goto_30

    :cond_23
    const p2, -0x9d9a95

    goto :goto_30

    :cond_27
    if-eqz p2, :cond_2d

    const p2, -0xb0b0a

    goto :goto_30

    :cond_2d
    const p2, -0xe8e7e5

    :goto_30
    invoke-direct {p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->attr(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p2

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result p1

    const/4 p3, 0x0

    invoke-virtual {v0, p3, p2, p3, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    return-object v0
.end method

.method private ui(ILjava/lang/Runnable;)V
    .registers 5

    .line 97
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;

    invoke-direct {v1, p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat$23;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;ILjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method background()V
    .registers 12

    .line 74
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unica_settings_bg_transparency_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 75
    :goto_12
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "unica_settings_bg_transparency_level"

    const/16 v4, 0x46

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x64

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 76
    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    const/high16 v5, 0x100000

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v0, :cond_38

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_3b

    :cond_38
    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 77
    :goto_3b
    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v0, :cond_46

    const/4 v6, -0x3

    goto :goto_47

    :cond_46
    move v6, v5

    :goto_47
    invoke-virtual {v4, v6}, Landroid/view/Window;->setFormat(I)V

    .line 78
    iget-object v4, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    const-string v7, "dark"

    const-string v8, "light"

    if-eqz v0, :cond_59

    goto :goto_85

    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sesl_round_and_bgcolor_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dark()Z

    move-result v9

    if-eqz v9, :cond_6c

    move-object v9, v7

    goto :goto_6d

    :cond_6c
    move-object v9, v8

    :goto_6d
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dark()Z

    move-result v9

    if-eqz v9, :cond_7e

    const/high16 v9, -0x1000000

    goto :goto_81

    :cond_7e
    const v9, -0xd0d0e

    :goto_81
    invoke-direct {p0, v2, v9}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->color(Ljava/lang/String;I)I

    move-result v2

    :goto_85
    invoke-direct {v6, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->surfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_91
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ec

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sesl_background_color_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dark()Z

    move-result v10

    if-eqz v10, :cond_b5

    move-object v10, v7

    goto :goto_b6

    :cond_b5
    move-object v10, v8

    :goto_b6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dark()Z

    move-result v10

    if-eqz v10, :cond_c8

    const v10, -0xe8e8e6

    goto :goto_c9

    :cond_c8
    move v10, v5

    :goto_c9
    invoke-direct {p0, v9, v10}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->color(Ljava/lang/String;I)I

    move-result v9

    if-eqz v0, :cond_db

    const v10, 0xffffff

    and-int/2addr v9, v10

    mul-int/lit16 v10, v1, 0xff

    div-int/2addr v10, v3

    rsub-int v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int/2addr v9, v10

    :cond_db
    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 v9, 0x1e

    invoke-direct {p0, v9}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dp(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_91

    .line 80
    :cond_ec
    return-void
.end method

.method public close()V
    .registers 3

    .line 163
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->saveSection()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->closed:Z

    iget v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dialogs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_29

    :cond_39
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->client:Lio/mesalabs/unica/troubleshooting/AiClient;

    invoke-virtual {v0}, Lio/mesalabs/unica/troubleshooting/AiClient;->close()V

    :cond_42
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method file(Landroid/net/Uri;)V
    .registers 3

    .line 137
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->busy:Z

    if-eqz v0, :cond_7

    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->pendingFile:Landroid/net/Uri;

    return-void

    :cond_7
    new-instance v0, Lio/mesalabs/unica/troubleshooting/AskAiChat$26;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$26;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Landroid/net/Uri;)V

    const-string p1, "Reading text file\u2026"

    invoke-direct {p0, p1, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->run(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;)V

    .line 141
    return-void
.end method

.method synthetic lambda$build$2$io-mesalabs-unica-troubleshooting-AskAiChat()V
    .registers 5

    .line 60
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v3, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    if-eqz v0, :cond_12

    goto :goto_15

    :cond_12
    const v2, 0x7fffffff

    :goto_15
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setMaxLines(I)V

    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->log:Landroid/widget/EditText;

    xor-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setVerticalScrollBarEnabled(Z)V

    return-void
.end method

.method synthetic lambda$build$3$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/widget/CompoundButton;Z)V
    .registers 3

    .line 61
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iput-boolean p2, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->includeLog:Z

    return-void
.end method

.method synthetic lambda$build$4$io-mesalabs-unica-troubleshooting-AskAiChat()V
    .registers 2

    .line 62
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->section(I)V

    return-void
.end method

.method synthetic lambda$build$5$io-mesalabs-unica-troubleshooting-AskAiChat()V
    .registers 2

    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->section(I)V

    return-void
.end method

.method synthetic lambda$build$6$io-mesalabs-unica-troubleshooting-AskAiChat()V
    .registers 3

    .line 63
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const-string v1, ""

    iput-object v1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iput-object v1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachmentName:Ljava/lang/String;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const/4 v1, 0x0

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    return-void
.end method

.method synthetic lambda$build$7$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 69
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    invoke-virtual {p1}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->renderHistory()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string p2, "Conversation cleared."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$build$8$io-mesalabs-unica-troubleshooting-AskAiChat()V
    .registers 4

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Clear conversation?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Clear chat history, your draft and the attached log from this session."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lio/mesalabs/unica/troubleshooting/AskAiChat$21;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$21;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    const-string v2, "Clear"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->show(Landroid/app/AlertDialog;)V

    return-void
.end method

.method synthetic lambda$buttonCopy$11$io-mesalabs-unica-troubleshooting-AskAiChat(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 94
    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    const-string v0, "clipboard"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    const-string v0, "Ask aI"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    const-string p2, "Answer copied"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$file$19$io-mesalabs-unica-troubleshooting-AskAiChat(Ljava/lang/String;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iput-object p1, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const-string v0, "Imported text file (device provenance unverified)"

    iput-object v0, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachmentName:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object p1, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const/4 v0, 0x0

    iput v0, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v0, "File loaded. Review the selected section; other sections are not sent. Redaction can miss sensitive information."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$file$20$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/net/Uri;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    const/high16 v0, 0x100000

    :try_start_c
    invoke-static {p1, v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_3a

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 139
    :cond_15
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_32

    const p1, 0xfffd

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_32

    .line 140
    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/troubleshooting/AskAiChat$0;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$0;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->ui(ILjava/lang/Runnable;)V

    .line 141
    return-void

    .line 139
    :cond_32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Select a UTF-8 text/log file; extract compressed or binary files first"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 138
    :catchall_3a
    move-exception p2

    if-eqz p1, :cond_45

    :try_start_3d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    throw p2
.end method

.method synthetic lambda$refresh$17$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/os/Bundle;)V
    .registers 6

    .line 115
    iput-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->config:Landroid/os/Bundle;

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->backend:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->destination(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRequest budget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chat_max_chars"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters including recent history; up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "chat_output_tokens"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " output tokens."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "online"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string p1, " Conservative online budget; provider limits also apply."

    goto :goto_61

    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Local context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "chat_context_tokens"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " tokens. Exact token checks may require a shorter section."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_61
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget p1, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->sectionChars:I

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->chunk()I

    move-result v0

    if-eq p1, v0, :cond_8a

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object p1, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const/4 v0, 0x0

    iput v0, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->chunk()I

    move-result v0

    iput v0, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->sectionChars:I

    :cond_8a
    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->loadSection()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string v0, "Backend ready. Review your message and log before sending."

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$refresh$18$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/AiClient;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Lio/mesalabs/unica/troubleshooting/AiClient;->config()Landroid/os/Bundle;

    move-result-object p1

    .line 113
    const-string v0, "chat_protocol"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 114
    const-string v0, "ready"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 115
    new-instance v0, Lio/mesalabs/unica/troubleshooting/AskAiChat$22;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$22;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Landroid/os/Bundle;)V

    invoke-direct {p0, p2, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->ui(ILjava/lang/Runnable;)V

    .line 117
    return-void

    .line 114
    :cond_1e
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Prepare the selected model or provider in AI Settings first"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_26
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Install the updated ROM AI backend to enable chat"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$review$21$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;Landroid/content/DialogInterface;I)V
    .registers 5

    .line 152
    invoke-direct {p0, p1, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->send(Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic lambda$run$14$io-mesalabs-unica-troubleshooting-AskAiChat(Ljava/lang/String;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$run$15$io-mesalabs-unica-troubleshooting-AskAiChat()V
    .registers 3

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->setBusy(Z)V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->pendingFile:Landroid/net/Uri;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->pendingFile:Landroid/net/Uri;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->pendingFile:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->file(Landroid/net/Uri;)V

    :cond_10
    return-void
.end method

.method synthetic lambda$run$16$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;I)V
    .registers 4

    .line 101
    :try_start_0
    invoke-interface {p1, p2}, Lio/mesalabs/unica/troubleshooting/AskAiChat$Task;->run(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_e
    .catchall {:try_start_0 .. :try_end_3} :catchall_c

    new-instance p1, Lio/mesalabs/unica/troubleshooting/AskAiChat$18;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$18;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    :goto_8
    invoke-direct {p0, p2, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->ui(ILjava/lang/Runnable;)V

    goto :goto_30

    :catchall_c
    move-exception p1

    goto :goto_31

    :catch_e
    move-exception p1

    :goto_f
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_f

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->error(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lio/mesalabs/unica/troubleshooting/AskAiChat$19;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$19;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Ljava/lang/String;)V

    invoke-direct {p0, p2, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->ui(ILjava/lang/Runnable;)V
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_c

    new-instance p1, Lio/mesalabs/unica/troubleshooting/AskAiChat$18;

    invoke-direct {p1, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$18;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    goto :goto_8

    :goto_30
    return-void

    :goto_31
    new-instance v0, Lio/mesalabs/unica/troubleshooting/AskAiChat$18;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat$18;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;)V

    invoke-direct {p0, p2, v0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->ui(ILjava/lang/Runnable;)V

    throw p1
.end method

.method synthetic lambda$send$22$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Ljava/lang/String;)V
    .registers 5

    .line 160
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    iget-object v1, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->question:Ljava/lang/String;

    iget-object p1, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->log:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->history:Lio/mesalabs/unica/troubleshooting/ChatHistory;

    const-string p2, ""

    iput-object p2, p1, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->question:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->includeLog:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->renderHistory()V

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->status:Landroid/widget/TextView;

    const-string p2, "Answer received. Ask a follow-up using the included history, or select another log section. The current section is not repeated unless you check Include. Verify suggestions before applying changes."

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$send$23$io-mesalabs-unica-troubleshooting-AskAiChat(Lio/mesalabs/unica/troubleshooting/AiClient;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Landroid/os/Bundle;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 157
    if-eqz p1, :cond_21

    .line 158
    iget-object v0, p2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;->wire:Ljava/lang/String;

    invoke-virtual {p1, v0, p3}, Lio/mesalabs/unica/troubleshooting/AiClient;->chat(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v0, 0x2000

    if-gt p3, v0, :cond_19

    .line 160
    new-instance p3, Lio/mesalabs/unica/troubleshooting/AskAiChat$25;

    invoke-direct {p3, p0, p2, p1}, Lio/mesalabs/unica/troubleshooting/AskAiChat$25;-><init>(Lio/mesalabs/unica/troubleshooting/AskAiChat;Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;Ljava/lang/String;)V

    invoke-direct {p0, p4, p3}, Lio/mesalabs/unica/troubleshooting/AskAiChat;->ui(ILjava/lang/Runnable;)V

    .line 161
    return-void

    .line 159
    :cond_19
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Answer exceeds display limit"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_21
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Refresh the backend before sending"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic lambda$show$12$io-mesalabs-unica-troubleshooting-AskAiChat(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .registers 3

    .line 95
    iget-object p2, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->dialogs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic lambda$ui$13$io-mesalabs-unica-troubleshooting-AskAiChat(ILjava/lang/Runnable;)V
    .registers 4

    .line 97
    iget-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->closed:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1b

    iget v0, p0, Lio/mesalabs/unica/troubleshooting/AskAiChat;->generation:I

    if-ne p1, v0, :cond_1b

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1b
    return-void
.end method

