.class final Lio/mesalabs/unica/troubleshooting/LogTools;
.super Ljava/lang/Object;
.source "LogTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/troubleshooting/LogTools$Selection;
    }
.end annotation


# static fields
.field static final CHUNK:I = 0x578

.field static final MAX_CHUNKS:I = 0x8

.field static final MAX_IMPORT:I = 0x800000


# direct methods
.method constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static failureTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 42
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 43
    const-string v0, ".*(?:kernel panic|panic - not syncing|internal error: oops|watchdog killing system process|fatal exception in system process|fatal exception.*system_server|system_server.*(?:fatal|crash|watchdog)|system_server_crash|system_server_watchdog).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "System crash"

    return-object p0

    .line 44
    :cond_11
    const-string v0, ".*(?:fatal exception\\s*:|am_crash\\s*:|force finishing activity).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "App crash"

    return-object p0

    .line 45
    :cond_1c
    const-string v0, ".*(?:fatal signal\\s+\\d+|signal\\s+\\d+\\s*\\(sig(?:segv|abrt|bus|ill|fpe|trap)\\)|>>>.*<<<|abort message:).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string p0, "Native crash"

    return-object p0

    .line 46
    :cond_27
    const-string v0, ".*(?:anr in\\s+|am_anr\\s*:|input dispatching timed out|application.*not responding).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string p0, "App not responding"

    return-object p0

    .line 47
    :cond_32
    const-string v0, ".*(?:unable to (?:start|instantiate|resume|launch) (?:activity|application)|activitynotfoundexception).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    const-string p0, "App could not open"

    return-object p0

    .line 48
    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method static read(Ljava/io/InputStream;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    if-eqz p0, :cond_46

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 10
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p1, :cond_1e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    :cond_1e
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File exceeds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit16 p1, p1, 0x400

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " KiB; import a smaller log file"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3f
    const-string p0, "UTF-8"

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_46
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot open file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static redact(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    const-string v1, "(?m)^(?:\\d{2}-\\d{2}|\\d{4}-\\d{2}-\\d{2}) \\d{2}:\\d{2}:\\d{2}\\.\\d{3}(?:[ \\t]+\\d+[ \\t]+\\d+[ \\t]+[VDIWEFAS][ \\t]+)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 15
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    :goto_14
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const-string v3, "END"

    const-string v4, "UNICALOGPREFIX"

    if-eqz v2, :cond_44

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_14

    :cond_44
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "(?is)-----BEGIN [^-]*(?:PRIVATE KEY|CERTIFICATE)-----.*?-----END [^-]+-----"

    const-string v2, "[REDACTED KEY/CERTIFICATE]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    const-string v1, "(?i)(authorization\\s*[:=]\\s*)(?:bearer\\s+)?[^\\r\\n]+"

    const-string v2, "$1[REDACTED]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    const-string v1, "(?i)((?:api[_-]?key|access[_-]?token|refresh[_-]?token|password|passwd|cookie|android_id|imei|imsi|serial(?:no|number)?)\\s*[\"\']?\\s*[:=]\\s*)[^\\s,;]+"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 20
    const-string v1, "(?i)https?://[^\\s<>\"]+"

    const-string v2, "[REDACTED URL]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 21
    const-string v1, "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

    const-string v2, "[REDACTED EMAIL]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 22
    const-string v1, "(?i)\\b(?:[0-9a-f]{2}:){5}[0-9a-f]{2}\\b"

    const-string v2, "[REDACTED MAC]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    const-string v1, "\\b(?:\\d{1,3}\\.){3}\\d{1,3}\\b"

    const-string v2, "[REDACTED IP]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 24
    const-string v1, "(?<![A-Za-z0-9])\\+?\\d[\\d ()-]{8,}\\d(?![A-Za-z0-9])"

    const-string v2, "[REDACTED NUMBER]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 25
    const/4 v1, 0x0

    :goto_8a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    .line 26
    :cond_b2
    const-string v0, "[\\p{Cntrl}&&[^\\n\\r\\t]]"

    const-string v1, "?"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static reviewed(Ljava/lang/String;Lio/mesalabs/unica/troubleshooting/LogTools$Selection;)Lio/mesalabs/unica/troubleshooting/LogTools$Selection;
    .registers 7

    .line 33
    new-instance v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;-><init>()V

    iget v1, p1, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    iget v1, p1, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    iget-boolean p1, p1, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    iput-boolean p1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    .line 34
    const/4 p1, 0x0

    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_5b

    iget-object v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_5b

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v3, p1, 0x578

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3f

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0xa

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    if-le v3, p1, :cond_3f

    add-int/lit8 v3, v3, 0x1

    move v1, v3

    .line 37
    :cond_3f
    iget-object v3, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v1, p1, :cond_59

    iget-object p1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v2, :cond_59

    const/4 p1, 0x1

    iput-boolean p1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    .line 38
    :cond_59
    move p1, v1

    goto :goto_12

    .line 39
    :cond_5b
    return-object v0
.end method

.method static select(Ljava/lang/String;)Lio/mesalabs/unica/troubleshooting/LogTools$Selection;
    .registers 15

    .line 51
    const-string v0, "\\r?\\n"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;

    invoke-direct {v0}, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;-><init>()V

    array-length v1, p0

    iput v1, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->totalLines:I

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    array-length v5, p0

    const/4 v6, 0x1

    if-ge v4, v5, :cond_77

    .line 54
    aget-object v5, p0, v4

    invoke-static {v5}, Lio/mesalabs/unica/troubleshooting/LogTools;->failureTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_28

    goto :goto_74

    .line 55
    :cond_28
    add-int/lit8 v7, v4, -0x3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    array-length v8, p0

    sub-int/2addr v8, v6

    add-int/lit8 v9, v4, 0x28

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 56
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    aget v9, v9, v6

    if-gt v7, v9, :cond_6a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v7, v7, v6

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v5, v6

    goto :goto_74

    .line 57
    :cond_6a
    filled-new-array {v7, v8}, [I

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :goto_74
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 60
    :cond_77
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v6

    :goto_7c
    if-ltz v4, :cond_143

    .line 61
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    aget v8, v5, v3

    :goto_8b
    aget v9, v5, v6

    const/16 v10, 0x8

    if-gt v8, v9, :cond_114

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "L"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v8, p0, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 64
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/16 v12, 0x578

    if-le v9, v12, :cond_d5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x564

    invoke-virtual {v8, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " [line shortened]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-boolean v6, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    .line 65
    :cond_d5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v9, v13

    add-int/2addr v9, v6

    if-le v9, v12, :cond_f8

    iget-object v9, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 66
    :cond_f8
    iget-object v9, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v10, :cond_103

    iput-boolean v6, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    return-object v0

    .line 67
    :cond_103
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v8, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    add-int/2addr v8, v6

    iput v8, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->selectedLines:I

    .line 62
    move v8, v11

    goto/16 :goto_8b

    .line 69
    :cond_114
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_12e

    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->titles:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_12e
    iget-object v5, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->chunks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v10, :cond_13f

    iget-boolean p0, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    if-lez v4, :cond_13b

    move v3, v6

    :cond_13b
    or-int/2addr p0, v3

    iput-boolean p0, v0, Lio/mesalabs/unica/troubleshooting/LogTools$Selection;->truncated:Z

    goto :goto_143

    .line 60
    :cond_13f
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7c

    .line 72
    :cond_143
    :goto_143
    return-object v0
.end method

