.class final Lio/mesalabs/unica/troubleshooting/InstalledModules;
.super Ljava/lang/Object;
.source "InstalledModules.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scan(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_23

    const-string v1, "available"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_23

    .line 12
    :cond_10
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/unica/troubleshooting-lsposed-conflicts.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/unica/troubleshooting-lsposed-purposes.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v0, v1}, Lio/mesalabs/unica/troubleshooting/InstalledModules;->scan(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    .line 11
    :cond_23
    :goto_23
    return-object v0
.end method

.method static scan(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Ljava/io/File;)Lorg/json/JSONArray;
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    move-object/from16 v0, p1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v0, :cond_1e9

    const-string v2, "available"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_1e9

    .line 16
    :cond_13
    move-object/from16 v2, p0

    move-object/from16 v3, p3

    invoke-static {v2, v0, v3, v1}, Lio/mesalabs/unica/troubleshooting/InstalledModules;->scanPurposes(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Lorg/json/JSONArray;)V

    .line 17
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_21

    return-object v1

    .line 18
    :cond_21
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_28
    new-instance v4, Lorg/json/JSONObject;

    const/high16 v5, 0x40000

    invoke-static {v3, v5}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_1de

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 19
    const-string v3, "schema"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_40

    return-object v1

    .line 20
    :cond_40
    const-string v3, "rules"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "modules"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v3, :cond_1dd

    if-nez v4, :cond_52

    goto/16 :goto_1dd

    .line 21
    :cond_52
    const-string v6, "confirmed_rule_count"

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 23
    const/4 v8, 0x0

    move v9, v8

    :goto_66
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_1dc

    .line 24
    invoke-virtual {v4, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v0, "enabled"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_81

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v3, v6

    move/from16 v18, v9

    goto/16 :goto_1d0

    .line 25
    :cond_81
    const-string v11, "package"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :try_start_87
    invoke-virtual {v6, v12, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_8b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_87 .. :try_end_8b} :catch_1c8

    .line 26
    move v14, v8

    :goto_8c
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v14, v0, :cond_1c0

    .line 27
    invoke-virtual {v3, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v15, "confirmed"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1ab

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1ab

    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    const-string v8, "version_code"

    move-object/from16 p3, v6

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v8, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v16, v5

    if-eqz v5, :cond_c5

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v9

    const/4 v5, 0x1

    move-object/from16 v3, p3

    goto/16 :goto_1b2

    .line 28
    :cond_c5
    const-string v5, "signer_sha256"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "scope"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "unica_mod"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v3

    const-string v3, "feature_class"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string v3, "[0-9a-f]{64}"

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_102

    move-object/from16 v3, p3

    move-object/from16 v17, v4

    move/from16 v18, v9

    const/4 v5, 0x1

    goto/16 :goto_1b2

    .line 30
    :cond_102
    const/16 v3, 0x20

    move-object/from16 v17, v4

    new-array v4, v3, [B

    move/from16 v18, v9

    const/4 v9, 0x0

    :goto_10b
    if-ge v9, v3, :cond_125

    mul-int/lit8 v3, v9, 0x2

    move/from16 v19, v9

    add-int/lit8 v9, v3, 0x2

    invoke-virtual {v5, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x10

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v19

    add-int/lit8 v9, v19, 0x1

    const/16 v3, 0x20

    goto :goto_10b

    .line 31
    :cond_125
    move-object/from16 v3, p3

    const/4 v5, 0x1

    invoke-virtual {v3, v12, v4, v5}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v4

    if-nez v4, :cond_131

    const/4 v5, 0x1

    goto/16 :goto_1b2

    .line 32
    :cond_131
    :try_start_131
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_139
    .catch Ljava/lang/ClassNotFoundException; {:try_start_131 .. :try_end_139} :catch_1a0
    .catch Ljava/lang/LinkageError; {:try_start_131 .. :try_end_139} :catch_1a0

    .line 33
    const-string v0, "scopes"

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_156

    move v4, v5

    move v9, v4

    :goto_143
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_157

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v9, v5

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_143

    :cond_156
    const/4 v9, 0x0

    .line 34
    :cond_157
    if-eqz v9, :cond_19e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_178

    const/4 v5, 0x1

    goto :goto_1b2

    .line 35
    :cond_178
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v15, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1b2

    .line 34
    :cond_19e
    const/4 v5, 0x1

    goto :goto_1b2

    .line 32
    :catch_1a0
    move-exception v0

    const/4 v5, 0x1

    goto :goto_1b2

    .line 29
    :cond_1a3
    move-object/from16 v3, p3

    move-object/from16 v17, v4

    move/from16 v18, v9

    const/4 v5, 0x1

    goto :goto_1b2

    .line 27
    :cond_1ab
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v3, v6

    move/from16 v18, v9

    .line 26
    :goto_1b2
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p0

    move-object v6, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v9, v18

    const/4 v8, 0x0

    goto/16 :goto_8c

    :cond_1c0
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v3, v6

    move/from16 v18, v9

    goto :goto_1d0

    .line 25
    :catch_1c8
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object v3, v6

    move/from16 v18, v9

    .line 23
    :goto_1d0
    add-int/lit8 v9, v18, 0x1

    move-object/from16 v2, p0

    move-object v6, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    const/4 v8, 0x0

    goto/16 :goto_66

    .line 38
    :cond_1dc
    return-object v1

    .line 20
    :cond_1dd
    :goto_1dd
    return-object v1

    .line 18
    :catchall_1de
    move-exception v0

    move-object v1, v0

    :try_start_1e0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1e3
    .catchall {:try_start_1e0 .. :try_end_1e3} :catchall_1e4

    goto :goto_1e8

    :catchall_1e4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1e8
    throw v1

    .line 15
    :cond_1e9
    :goto_1e9
    return-object v1
.end method

.method private static scanPurposes(Landroid/content/Context;Lorg/json/JSONObject;Ljava/io/File;Lorg/json/JSONArray;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    move-object/from16 v0, p1

    const-string v1, "purpose_rule_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_f

    return-void

    .line 42
    :cond_f
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_16
    new-instance v4, Lorg/json/JSONObject;

    const/high16 v5, 0x40000

    invoke-static {v3, v5}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_186

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 43
    const-string v3, "schema"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2e

    return-void

    .line 44
    :cond_2e
    const-string v3, "rules"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "modules"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v3, :cond_185

    if-nez v4, :cond_40

    goto/16 :goto_185

    .line 45
    :cond_40
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 46
    move v7, v2

    :goto_51
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_184

    .line 47
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v0, "enabled"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6d

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v15, v5

    move v4, v2

    move-object/from16 v2, p3

    goto/16 :goto_17a

    .line 48
    :cond_6d
    const-string v9, "package"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :try_start_73
    invoke-virtual {v6, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_77
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_73 .. :try_end_77} :catch_171

    .line 49
    move v12, v2

    :goto_78
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v12, v0, :cond_168

    .line 50
    invoke-virtual {v3, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "unica_mod"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "feature_class"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "scope"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_156

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_ba

    move-object/from16 v2, p3

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    const/4 v4, 0x0

    const/4 v15, 0x1

    goto/16 :goto_15e

    .line 52
    :cond_ba
    const-string v0, "scopes"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_de

    move-object/from16 v16, v3

    const/4 v3, 0x0

    const/16 v17, 0x0

    :goto_c7
    move-object/from16 v18, v4

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e4

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    or-int v17, v17, v4

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v4, v18

    goto :goto_c7

    :cond_de
    move-object/from16 v16, v3

    move-object/from16 v18, v4

    const/16 v17, 0x0

    .line 53
    :cond_e4
    if-nez v17, :cond_ec

    move-object/from16 v2, p3

    const/4 v4, 0x0

    const/4 v15, 0x1

    goto/16 :goto_15e

    .line 54
    :cond_ec
    :try_start_ec
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0
    :try_end_f0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ec .. :try_end_f0} :catch_150
    .catch Ljava/lang/LinkageError; {:try_start_ec .. :try_end_f0} :catch_150

    const/4 v3, 0x0

    :try_start_f1
    invoke-static {v15, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_f4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f1 .. :try_end_f4} :catch_14b
    .catch Ljava/lang/LinkageError; {:try_start_f1 .. :try_end_f4} :catch_14b

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_116

    move-object/from16 v2, p3

    const/4 v4, 0x0

    const/4 v15, 0x1

    goto :goto_15e

    .line 56
    :cond_116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v3, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "confirmed"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "duplicate"

    const/4 v15, 0x1

    invoke-virtual {v0, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_15e

    .line 54
    :catch_14b
    move-exception v0

    move-object/from16 v2, p3

    move v4, v3

    goto :goto_154

    :catch_150
    move-exception v0

    move-object/from16 v2, p3

    const/4 v4, 0x0

    :goto_154
    const/4 v15, 0x1

    goto :goto_15e

    .line 51
    :cond_156
    move-object/from16 v2, p3

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    const/4 v4, 0x0

    const/4 v15, 0x1

    .line 49
    :goto_15e
    add-int/lit8 v12, v12, 0x1

    move v2, v4

    move v5, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    goto/16 :goto_78

    :cond_168
    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v15, v5

    move v4, v2

    move-object/from16 v2, p3

    goto :goto_17a

    .line 48
    :catch_171
    move-exception v0

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    move v15, v5

    move v4, v2

    move-object/from16 v2, p3

    .line 46
    :goto_17a
    add-int/lit8 v7, v7, 0x1

    move v2, v4

    move v5, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v18

    goto/16 :goto_51

    .line 59
    :cond_184
    return-void

    .line 44
    :cond_185
    :goto_185
    return-void

    .line 42
    :catchall_186
    move-exception v0

    move-object v1, v0

    :try_start_188
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_18b
    .catchall {:try_start_188 .. :try_end_18b} :catchall_18c

    goto :goto_190

    :catchall_18c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_190
    throw v1
.end method

