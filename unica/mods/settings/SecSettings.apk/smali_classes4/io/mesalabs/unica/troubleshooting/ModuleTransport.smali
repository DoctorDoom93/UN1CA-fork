.class final Lio/mesalabs/unica/troubleshooting/ModuleTransport;
.super Ljava/lang/Object;
.source "ModuleTransport.java"


# static fields
.field static final BASE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 9
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/unica_troubleshooting"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/mesalabs/unica/troubleshooting/ModuleTransport;->BASE:Ljava/io/File;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized request(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lio/mesalabs/unica/troubleshooting/ModuleTransport;

    monitor-enter v0

    .line 11
    :try_start_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_17d

    .line 13
    const-string v1, "scan|disable|restore"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_175

    .line 14
    new-instance v1, Ljava/io/File;

    sget-object v2, Lio/mesalabs/unica/troubleshooting/ModuleTransport;->BASE:Ljava/io/File;

    const-string v3, "requests"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 15
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    const/4 v3, 0x0

    if-eqz p1, :cond_88

    .line 17
    const-string v4, "stage"

    const-string v5, "id"

    const-string v6, "token"

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    move v5, v3

    :goto_55
    const/4 v6, 0x3

    if-ge v5, v6, :cond_88

    aget-object v6, v4, v5

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "[A-Za-z0-9._-]{1,100}"

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_80

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v6, "\n"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_55

    :cond_80
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid module identity"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_88
    new-instance p1, Ljava/io/File;

    const-string v4, "request.tmp"

    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_94
    .catchall {:try_start_3 .. :try_end_94} :catchall_185

    :try_start_94
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    const/16 v5, 0x1a0

    invoke-static {p0, v5}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_ad
    .catchall {:try_start_94 .. :try_end_ad} :catchall_163

    :try_start_ad
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 21
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    const-string v4, "request"

    invoke-direct {p1, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v3

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p0, p1, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 22
    const-string p0, "android.os.SystemProperties"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p1, "set"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v6

    invoke-virtual {p0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-string p1, "sys.unica.troubleshooting.request"

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p0

    const-wide/16 v3, 0x4e20

    add-long/2addr p0, v3

    .line 24
    :goto_f5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    cmp-long v1, v3, p0

    if-gez v1, :cond_15b

    .line 25
    new-instance v1, Ljava/io/File;

    sget-object v3, Lio/mesalabs/unica/troubleshooting/ModuleTransport;->BASE:Ljava/io/File;

    const-string v4, "responses/response.json"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_155

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_111
    .catchall {:try_start_ad .. :try_end_111} :catchall_185

    .line 27
    :try_start_111
    new-instance v1, Lorg/json/JSONObject;

    const/high16 v4, 0x100000

    invoke-static {v3, v4}, Lio/mesalabs/unica/troubleshooting/LogTools;->read(Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v4, "id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_147

    const-string p0, "error"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_13b

    const-string p0, "result"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_136
    .catchall {:try_start_111 .. :try_end_136} :catchall_14b

    .line 29
    :try_start_136
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_139
    .catchall {:try_start_136 .. :try_end_139} :catchall_185

    .line 28
    monitor-exit v0

    return-object p0

    :cond_13b
    :try_start_13b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "error"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_147
    .catchall {:try_start_13b .. :try_end_147} :catchall_14b

    .line 29
    :cond_147
    :try_start_147
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14a
    .catchall {:try_start_147 .. :try_end_14a} :catchall_185

    goto :goto_155

    .line 26
    :catchall_14b
    move-exception p0

    :try_start_14c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_150

    goto :goto_154

    :catchall_150
    move-exception p1

    :try_start_151
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_154
    throw p0

    .line 30
    :cond_155
    :goto_155
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 31
    goto :goto_f5

    .line 32
    :cond_15b
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Module service did not respond. Scan again before retrying."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_163
    .catchall {:try_start_151 .. :try_end_163} :catchall_185

    .line 20
    :catchall_163
    move-exception p0

    :try_start_164
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_167
    .catchall {:try_start_164 .. :try_end_167} :catchall_168

    goto :goto_16c

    :catchall_168
    move-exception p1

    :try_start_169
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_16c
    throw p0

    .line 14
    :cond_16d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Troubleshooting service is not installed. Install the updated ROM."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_175
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid operation"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_17d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Available to the device owner\'s Settings only"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :catchall_185
    move-exception p0

    monitor-exit v0
    :try_end_187
    .catchall {:try_start_169 .. :try_end_187} :catchall_185

    throw p0
.end method

