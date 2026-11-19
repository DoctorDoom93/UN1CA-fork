.class public final Lio/mesalabs/unica/movecertificate/Certificates;
.super Ljava/lang/Object;
.source "Certificates.java"


# static fields
.field public static final MAX_BYTES:I = 0x10000

.field public static final MAX_CERTS:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static atomic(Ljava/io/File;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_25
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_51

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 53
    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 54
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 55
    return-void

    .line 54
    :cond_41
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot save certificate configuration"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_49
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot set certificate permissions"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :catchall_51
    move-exception p0

    :try_start_52
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_56

    goto :goto_5a

    :catchall_56
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5a
    throw p0
.end method

.method public static files(Ljava/io/File;)[Ljava/io/File;
    .registers 2

    .line 45
    new-instance v0, Lio/mesalabs/unica/movecertificate/Certificates$0;

    invoke-direct {v0}, Lio/mesalabs/unica/movecertificate/Certificates$0;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    .line 46
    if-nez p0, :cond_f

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    return-object p0

    :cond_f
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object p0
.end method

.method public static fingerprint(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_3c

    aget-byte v3, p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_24

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "%02X"

    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 39
    :cond_3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hash(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 33
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_15
    const/4 v3, 0x4

    if-ge v2, v3, :cond_25

    aget-byte v3, p0, v2

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 34
    :cond_25
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%08x"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static install(Ljava/io/File;Ljava/security/cert/X509Certificate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-static {p0}, Lio/mesalabs/unica/movecertificate/Certificates;->files(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 58
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_41

    aget-object v4, v0, v3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_13
    invoke-static {v5}, Lio/mesalabs/unica/movecertificate/Certificates;->read(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-static {v4}, Lio/mesalabs/unica/movecertificate/Certificates;->parse([B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_37

    if-nez v4, :cond_2f

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_2f
    :try_start_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Certificate is already imported"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    :try_start_38
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0

    .line 59
    :cond_41
    array-length v0, v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_91

    .line 60
    invoke-static {p1}, Lio/mesalabs/unica/movecertificate/Certificates;->hash(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v0

    :goto_4a
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6f

    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 61
    :cond_6f
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lio/mesalabs/unica/movecertificate/Certificates;->pem(Ljava/security/cert/X509Certificate;)[B

    move-result-object p0

    invoke-static {v1, p0}, Lio/mesalabs/unica/movecertificate/Certificates;->atomic(Ljava/io/File;[B)V

    .line 62
    return-void

    .line 59
    :cond_91
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Maximum of 64 imported CAs reached"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$files$0(Ljava/io/File;)Z
    .registers 2

    .line 45
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[0-9a-f]{8}\\.[0-9]+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static parse([B)Ljava/security/cert/X509Certificate;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 21
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    .line 23
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 24
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_65

    .line 25
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 26
    if-eqz v0, :cond_3d

    array-length v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_35

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_35

    goto :goto_3d

    :cond_35
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "CA certificate signing is not permitted"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 28
    const-string v1, "adguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_64

    const-string v1, "intermediate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_64

    :cond_5c
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "Keep the AdGuard Intermediate CA in the Android user store; import the Personal CA here"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 29
    :cond_64
    :goto_64
    return-object p0

    .line 24
    :cond_65
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "This is not a CA certificate"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_6d
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "Select a single CA certificate"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static pem(Ljava/security/cert/X509Certificate;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0xa

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x40

    invoke-static {v2, v1}, Ljava/util/Base64;->getMimeEncoder(I[B)Ljava/util/Base64$Encoder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n-----END CERTIFICATE-----\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    if-eqz p0, :cond_2d

    .line 16
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 17
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v2

    const/high16 v4, 0x10000

    if-gt v3, v4, :cond_20

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    :cond_20
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Certificate exceeds 64 KiB"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_28
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 15
    :cond_2d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Cannot open certificate"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

