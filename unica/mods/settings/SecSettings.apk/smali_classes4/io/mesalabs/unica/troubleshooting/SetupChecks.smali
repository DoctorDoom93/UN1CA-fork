.class final Lio/mesalabs/unica/troubleshooting/SetupChecks;
.super Ljava/lang/Object;
.source "SetupChecks.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs call(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static collect(Landroid/content/Context;)Ljava/lang/String;
    .registers 30

    .line 59
    const-string v0, "pif.spoof_props"

    const-string v1, "0"

    const-string v2, "pif.spoof_build"

    const-string v3, "false"

    const-string v4, "unica.pif"

    const-string v5, "1"

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PIF and TEE setup check \u2014 this device, read-only\nChecked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v7, "io.mesalabs.unica.PlayIntegrityHooks"

    move-object/from16 v8, p0

    invoke-static {v8, v7}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->feature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    const-string v9, "PIF configuration: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const/4 v10, 0x0

    :try_start_45
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v12, "unica.pif"

    const-string v13, "pif.spoof_build"

    const-string v14, "pif.spoof_props"

    const-string v15, "pif.vending_build"

    const-string v16, "pif.fingerprint"

    const-string v17, "pif.security_patch"

    const-string v18, "pif.first_api_level"

    const-string v19, "pif.brand"

    const-string v20, "pif.product"

    const-string v21, "pif.device"

    const-string v22, "pif.release"

    const-string v23, "pif.id"

    const-string v24, "pif.incremental"

    const-string v25, "pif.type"

    const-string v26, "pif.tags"

    const-string v27, "pif.model"

    const-string v28, "pif.manufacturer"

    filled-new-array/range {v12 .. v28}, [Ljava/lang/String;

    move-result-object v12

    move v13, v10

    :goto_71
    const/16 v14, 0x11

    if-ge v13, v14, :cond_94

    aget-object v14, v12, v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "persist.sys."

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v14, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    .line 63
    :cond_94
    invoke-static {v11}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->pifErrors(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b3

    invoke-interface {v11, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->on(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    goto :goto_b3

    :cond_b1
    move v4, v10

    goto :goto_b4

    :cond_b3
    :goto_b3
    const/4 v4, 0x1

    .line 64
    :goto_b4
    if-nez v7, :cond_bc

    const-string v4, "Not verified \u2014 built-in PIF class is unavailable."

    :goto_b8
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    :cond_bc
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_cc

    const-string v4, "Problem found \u2014 "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d4

    :cond_cc
    if-nez v4, :cond_d1

    const-string v4, "Not verified \u2014 PIF is switched off."

    goto :goto_b8

    :cond_d1
    const-string v4, "Configured \u2014 PIF enabled; explicit overrides passed format/size checks. Empty fields use ROM defaults, whose effective values are not independently validated."

    goto :goto_b8

    .line 65
    :goto_d4
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fc

    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fc

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    :cond_fc
    const-string v0, " One or more spoofing options are off; check whether this is intentional."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_101
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_101} :catch_102

    .line 66
    :cond_101
    goto :goto_108

    :catch_102
    move-exception v0

    const-string v0, "Not verified \u2014 PIF properties could not be read."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :goto_108
    const-string v0, "\nPIF runtime: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->pifLogCheck(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "\n\nTEE configuration: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->profileCheck(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :try_start_122
    const-string v0, "\nTEE runtime: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "persist.sys.unica.keybox"

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->on(Ljava/lang/String;)Z

    move-result v17

    const-string v1, "sys.unica.teesim.heartbeat"

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->fresh(Ljava/lang/String;J)Z

    move-result v18

    const-string v1, "running"

    const-string v2, "init.svc.unica-teesim"

    invoke-static {v2}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_161

    const-string v1, "sys.unica.teesim.ready"

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->fresh(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_161

    const/16 v19, 0x1

    goto :goto_163

    :cond_161
    move/from16 v19, v10

    :goto_163
    const-string v1, "sys.unica.teesim.connected"

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const-string v1, "sys.unica.teesim.ack"

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    const-string v1, "sys.unica.teesim.loaded"

    invoke-static {v1}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->property(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    invoke-static/range {v17 .. v22}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->runtime(ZZZZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_188} :catch_189

    goto :goto_18f

    :catch_189
    move-exception v0

    const-string v0, "\nTEE runtime: Not verified \u2014 backend properties unavailable."

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_18f
    const-string v0, "\n\nVerification: reproduce the affected app action, run this check again, and collect recent device logs for crashes. Use Manage Keybox to check certificate revocation separately. A fresh external Play Integrity verdict is required to establish Google acceptance. No configuration, keys, apps or processes were changed.\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static feature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 35
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_8} :catch_a
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    move-exception p0

    return v0
.end method

.method static fresh(Ljava/lang/String;J)Z
    .registers 8

    .line 17
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_18

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_17

    cmp-long p0, p1, v1

    if-ltz p0, :cond_17

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x2ee0

    cmp-long p0, p1, v1

    if-gez p0, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    :catch_18
    move-exception p0

    return v0
.end method

.method static on(Ljava/lang/String;)Z
    .registers 2

    .line 16
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method static pifErrors(Ljava/util/Map;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v1, "pif.spoof_props"

    const-string v2, "pif.vending_build"

    const-string v3, "unica.pif"

    const-string v4, "pif.spoof_build"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_13
    const/4 v4, 0x4

    if-ge v3, v4, :cond_44

    aget-object v4, v1, v3

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_41

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_41

    const-string v5, "1"

    const-string v6, "0"

    const-string v7, "true"

    const-string v8, "false"

    filled-new-array {v7, v8, v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    const-string v4, "Invalid PIF toggle. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 21
    :cond_44
    const-string v1, "pif.fingerprint"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v3, 0x5c

    const/4 v4, 0x1

    if-eqz v1, :cond_84

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_84

    .line 22
    const-string v5, "[/:]"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6f

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    if-lt v1, v3, :cond_6d

    goto :goto_6f

    :cond_6d
    move v1, v2

    goto :goto_70

    :cond_6f
    :goto_6f
    move v1, v4

    :goto_70
    array-length v6, v5

    :goto_71
    if-ge v2, v6, :cond_7d

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    or-int/2addr v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_7d
    if-eqz v1, :cond_84

    const-string v1, "Invalid fingerprint structure or size. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_84
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8c
    :goto_8c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bb

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "pif."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    if-lt v2, v3, :cond_8c

    const-string v2, "PIF field exceeds native property storage. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 24
    :cond_bb
    const-string v1, "pif.security_patch"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "null"

    if-eqz v1, :cond_eb

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_eb

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_eb

    :try_start_d3
    const-string v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_df

    invoke-static {v1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    goto :goto_eb

    :cond_df
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e5} :catch_e5

    :catch_e5
    move-exception v1

    const-string v1, "Invalid security patch date. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    :cond_eb
    :goto_eb
    const-string v1, "pif.first_api_level"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_114

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_114

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_114

    const-string v1, "[0-9]{1,2}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10f

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ge p0, v4, :cond_114

    :cond_10f
    const-string p0, "Invalid first API level. "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static pifEvidence(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 73
    nop

    .line 74
    const-string v0, "\\r?\\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_b
    if-ge v1, v0, :cond_29

    aget-object v4, p0, v1

    .line 75
    const-string v5, ".*\\sUnicaPIF\\s*:.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    goto :goto_26

    .line 76
    :cond_18
    const-string v5, "Initialized com.google.android.gms.unstable: Build=1 nativeProps=1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 77
    const-string v5, ".*(?:Native property virtualization failed|Build update failed|Startup error:|Native startup failed|Invalid security patch date|Invalid first API level|Fingerprint must have|Empty fingerprint component|Identity field exceeds).*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v2, v4

    .line 74
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 79
    :cond_29
    if-eqz v2, :cond_2e

    const-string p0, "Problem found \u2014 recent PIF log buffer contains startup/configuration failures. Reproduce with the affected app and collect device logs. Old errors can remain after a configuration change."

    return-object p0

    .line 80
    :cond_2e
    if-eqz v3, :cond_33

    const-string p0, "Not verified \u2014 successful GMS unstable-process initialization was observed in the recent buffer. This is historical evidence, not proof that the current process uses the current settings or that Google accepts it."

    return-object p0

    .line 81
    :cond_33
    const-string p0, "Not verified \u2014 no matching GMS initialization evidence in the recent log buffer. Missing logs do not prove failure."

    return-object p0
.end method

.method private static pifLogCheck(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    .line 84
    const-string v1, "Not verified \u2014 recent device logs are unavailable."

    .line 85
    const/4 v2, 0x0

    :try_start_3
    const-string v0, "setup-check-"

    const-string v3, ".log"

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-static {v0, v3, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_8a
    .catchall {:try_start_3 .. :try_end_f} :catchall_7d

    :try_start_f
    new-instance v0, Ljava/lang/ProcessBuilder;

    const-string v3, "/system/bin/logcat"

    const-string v4, "-b"

    const-string v5, "all"

    const-string v6, "-d"

    const-string v7, "-t"

    const-string v8, "2000"

    const-string v9, "-v"

    const-string v10, "threadtime"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/Process;->waitFor(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {v2}, Ljava/lang/Process;->exitValue()I

    move-result v0

    if-eqz v0, :cond_46

    goto :goto_6e

    :cond_46
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_4b} :catch_7b
    .catchall {:try_start_f .. :try_end_4b} :catchall_79

    const/high16 v0, 0x800000

    :try_start_4d
    invoke-static {v3, v0}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->pifEvidence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_63

    :try_start_55
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_7b
    .catchall {:try_start_55 .. :try_end_58} :catchall_79

    .line 87
    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    :cond_5d
    if-eqz p0, :cond_62

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 85
    :cond_62
    return-object v0

    :catchall_63
    move-exception v0

    move-object v4, v0

    :try_start_65
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v0

    :try_start_6a
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6d
    throw v4
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6e} :catch_7b
    .catchall {:try_start_6a .. :try_end_6e} :catchall_79

    .line 87
    :cond_6e
    :goto_6e
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    :cond_73
    if-eqz p0, :cond_78

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 85
    :cond_78
    return-object v1

    .line 87
    :catchall_79
    move-exception v0

    goto :goto_7f

    .line 86
    :catch_7b
    move-exception v0

    goto :goto_8c

    .line 87
    :catchall_7d
    move-exception v0

    move-object p0, v2

    :goto_7f
    if-eqz v2, :cond_84

    invoke-virtual {v2}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    :cond_84
    if-eqz p0, :cond_89

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_89
    throw v0

    .line 86
    :catch_8a
    move-exception v0

    move-object p0, v2

    .line 87
    :goto_8c
    if-eqz v2, :cond_91

    invoke-virtual {v2}, Ljava/lang/Process;->destroyForcibly()Ljava/lang/Process;

    :cond_91
    if-eqz p0, :cond_96

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 86
    :cond_96
    return-object v1
.end method

.method private static profileCheck(Landroid/content/Context;)Ljava/lang/String;
    .registers 22

    .line 39
    const-string v1, "parse"

    const-string v2, "all"

    const-string v3, "scope"

    :try_start_6
    const-string v0, "io.mesalabs.unica.keybox.Profiles"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v0, "io.mesalabs.unica.keybox.Keybox"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v0, v5, v6}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 40
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "unica_keybox_profiles"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_35

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    array-length v7, v7

    const/high16 v8, 0x40000

    if-le v7, v8, :cond_35

    const-string v0, "Problem found \u2014 profile configuration exceeds its size limit."

    return-object v0

    .line 42
    :cond_35
    const-string v7, "load"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v7, v9, v0}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->call(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/json/JSONObject;

    const-string v0, "profiles"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v10, "unica_keybox_data"

    invoke-static {v0, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    move v0, v5

    move v11, v0

    move v12, v11

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_5f
    move/from16 v16, v5

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v11, v5, :cond_122

    .line 44
    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move/from16 v17, v8

    const-string v8, "apps"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object/from16 p0, v8

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_89

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_86

    goto :goto_89

    :cond_86
    move/from16 v8, v16

    goto :goto_8b

    :cond_89
    :goto_89
    move/from16 v8, v17

    :goto_8b
    if-nez v8, :cond_95

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v3, v17

    goto/16 :goto_114

    :cond_95
    add-int/lit8 v8, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/2addr v14, v0

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v15, v0

    .line 45
    const-string v0, "xml"

    move-object/from16 v18, v2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v19, Lorg/json/JSONObject;

    aput-object v19, v2, v16

    const-class v19, Lorg/json/JSONObject;

    aput-object v19, v2, v17

    const-class v19, Ljava/lang/String;

    move-object/from16 v20, v3

    const/4 v3, 0x2

    aput-object v19, v2, v3

    filled-new-array {v7, v5, v10}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v0, v2, v5}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->call(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 46
    if-eqz v2, :cond_11f

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_d0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_d0} :catch_16e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_d0} :catch_16e
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_d0} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d0} :catch_166

    if-eqz v0, :cond_d3

    goto :goto_11f

    .line 47
    :cond_d3
    :try_start_d3
    new-array v0, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v16

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v1, v0, v5}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->call(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d3 .. :try_end_e9} :catch_ea
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d3 .. :try_end_e9} :catch_16e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d3 .. :try_end_e9} :catch_16e
    .catch Ljava/lang/SecurityException; {:try_start_d3 .. :try_end_e9} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_e9} :catch_166

    goto :goto_103

    :catch_ea
    move-exception v0

    :try_start_eb
    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v0, v16

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v0, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v1, v0, v2}, Lio/mesalabs/unica/troubleshooting/SetupChecks;->call(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move/from16 v13, v17

    .line 48
    :goto_103
    const-string v2, "expired"

    invoke-virtual {v6, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    move/from16 v3, v17

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v12, v0

    move v0, v8

    .line 43
    :goto_114
    add-int/lit8 v11, v11, 0x1

    move v8, v3

    move/from16 v5, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    goto/16 :goto_5f

    .line 46
    :cond_11f
    :goto_11f
    const-string v0, "Problem found \u2014 a targeted profile has no selected keybox. Select a keybox in Manage Keybox \u2192 Profiles."

    return-object v0

    .line 50
    :cond_122
    if-nez v0, :cond_127

    const-string v0, "Not verified \u2014 no profile targets any app. Review target apps in Manage Keybox \u2192 Profiles."

    return-object v0

    .line 51
    :cond_127
    if-eqz v12, :cond_12c

    const-string v0, "Problem found \u2014 a targeted keybox contains an expired or not-yet-valid certificate."

    return-object v0

    .line 52
    :cond_12c
    if-eqz v13, :cond_131

    const-string v0, "Problem found \u2014 a targeted profile uses an AOSP software test keybox; it is not a hardware attestation identity."

    return-object v0

    .line 53
    :cond_131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configured \u2014 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targeted profiles, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " explicit target entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v15, :cond_155

    const-string v1, " and a remaining-apps scope"

    goto :goto_157

    :cond_155
    const-string v1, ""

    :goto_157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Profile structure, selected keybox chains and signing keys passed local validation. Certificate revocation and app-specific use are not checked."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_165
    .catch Ljava/lang/ClassNotFoundException; {:try_start_eb .. :try_end_165} :catch_16e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_eb .. :try_end_165} :catch_16e
    .catch Ljava/lang/SecurityException; {:try_start_eb .. :try_end_165} :catch_16a
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_165} :catch_166

    return-object v0

    .line 56
    :catch_166
    move-exception v0

    const-string v0, "Problem found \u2014 profile or selected keybox validation failed. Review profiles and keyboxes in Manage Keybox. No signing material was included in this report."

    return-object v0

    .line 55
    :catch_16a
    move-exception v0

    const-string v0, "Not verified \u2014 profile or keybox settings could not be read."

    return-object v0

    .line 54
    :catch_16e
    move-exception v0

    const-string v0, "Not verified \u2014 the compatible keybox/profile validator is unavailable."

    return-object v0
.end method

.method private static property(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    const-string v0, "android.os.SemSystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "get"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, ""

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method static runtime(ZZZZZZ)Ljava/lang/String;
    .registers 6

    .line 29
    if-nez p0, :cond_5

    const-string p0, "Not verified \u2014 TEE is switched off; this is not a configuration failure."

    return-object p0

    .line 30
    :cond_5
    if-nez p1, :cond_a

    const-string p0, "Not verified \u2014 no fresh backend heartbeat. Check Manage Keybox \u2192 System and collect logs after reproducing the problem."

    return-object p0

    .line 31
    :cond_a
    if-eqz p2, :cond_16

    if-eqz p3, :cond_16

    if-eqz p4, :cond_16

    if-nez p5, :cond_13

    goto :goto_16

    .line 32
    :cond_13
    const-string p0, "Runtime verified \u2014 fresh backend reports connected interceptor, acknowledged configuration and loaded keybox. App-specific interception and Google acceptance remain unverified."

    return-object p0

    .line 31
    :cond_16
    :goto_16
    const-string p0, "Problem found \u2014 live backend reports incomplete daemon/interceptor/configuration/keybox readiness. Check Manage Keybox \u2192 System."

    return-object p0
.end method

