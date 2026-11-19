.class final Lio/mesalabs/unica/troubleshooting/ChatHistory;
.super Ljava/lang/Object;
.source "ChatHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;,
        Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;
    }
.end annotation


# instance fields
.field attachment:Ljava/lang/String;

.field attachmentName:Ljava/lang/String;

.field draft:Ljava/lang/String;

.field final edits:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field includeLog:Z

.field section:I

.field sectionChars:I

.field final turns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachmentName:Ljava/lang/String;

    const/16 v0, 0x320

    iput v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->sectionChars:I

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->includeLog:Z

    return-void
.end method

.method private encode(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"history\":["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    move v1, p1

    :goto_8
    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x7d

    if-ge v1, v2, :cond_47

    .line 41
    if-le v1, p1, :cond_19

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v2, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;

    .line 42
    const-string v4, "{\"user\":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->user:Ljava/lang/String;

    invoke-static {v5}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"assistant\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->answer:Ljava/lang/String;

    invoke-static {v2}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 44
    :cond_47
    const-string p1, "],\"question\":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",\"log\":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static quote(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ge v1, v2, :cond_41

    .line 49
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 50
    const/16 v4, 0x5c

    if-eq v2, v3, :cond_37

    if-ne v2, v4, :cond_1b

    goto :goto_37

    .line 51
    :cond_1b
    const/16 v3, 0x20

    if-ge v2, v3, :cond_33

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "\\u%04x"

    invoke-static {v3, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 52
    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3e

    .line 50
    :cond_37
    :goto_37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    :goto_3e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 54
    :cond_41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static section(Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    mul-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, p1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 60
    if-lez p1, :cond_2b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_2b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2b

    add-int/lit8 p1, p1, -0x1

    .line 61
    :cond_2b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_41

    if-le p2, p1, :cond_41

    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_41

    add-int/lit8 p2, p2, -0x1

    .line 62
    :cond_41
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sectionCount(Ljava/lang/String;I)I
    .registers 3

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    div-int/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private size()I
    .registers 5

    .line 24
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;

    iget-object v3, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->user:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v2, v2, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->answer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_7

    :cond_22
    return v1
.end method


# virtual methods
.method add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 21
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    new-instance v1, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string p2, ""

    goto :goto_29

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nLog evidence:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :goto_37
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 p2, 0xc

    if-gt p1, p2, :cond_4c

    invoke-direct {p0}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->size()I

    move-result p1

    const p2, 0xfa00

    if-le p1, p2, :cond_4b

    goto :goto_4c

    .line 23
    :cond_4b
    return-void

    .line 22
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_37
.end method

.method clear()V
    .registers 2

    .line 25
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->edits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, ""

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->draft:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachment:Ljava/lang/String;

    iput-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->attachmentName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->section:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->includeLog:Z

    return-void
.end method

.method prepare(Ljava/lang/String;Ljava/lang/String;I)Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;
    .registers 11

    .line 27
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_ad

    .line 28
    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-direct {p0, p1, v2, p2}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->encode(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p3, :cond_a5

    .line 30
    iget-object v1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_22
    move v6, p1

    move p1, v1

    move-object v1, v0

    if-ltz p1, :cond_3f

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v3, 0x6

    if-gt v0, v3, :cond_3f

    .line 31
    invoke-direct {p0, p1, v2, p2}, Lio/mesalabs/unica/troubleshooting/ChatHistory;->encode(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, p3, :cond_3c

    goto :goto_3f

    .line 30
    :cond_3c
    add-int/lit8 v1, p1, -0x1

    goto :goto_22

    .line 33
    :cond_3f
    :goto_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    move p3, v6

    :goto_45
    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_75

    iget-object v0, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;

    const-string v3, "Previous question / evidence:\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->user:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\nPrevious AI answer (unverified):\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Turn;->answer:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x1

    goto :goto_45

    .line 35
    :cond_75
    const-string p3, "Current question:\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\n\nCurrent log section:\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8e

    const-string v0, "None"

    goto :goto_8f

    :cond_8e
    move-object v0, p2

    :goto_8f
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    new-instance v0, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lio/mesalabs/unica/troubleshooting/ChatHistory;->turns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int v5, p1, v6

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lio/mesalabs/unica/troubleshooting/ChatHistory$Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    .line 29
    :cond_a5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message and log exceed this backend\'s budget. Shorten the question or log section."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_ad
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Describe the problem or ask a question first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

