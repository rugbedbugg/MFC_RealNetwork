.class public abstract Lorg/fdroid/index/JarIndexVerifier;
.super Ljava/lang/Object;
.source "JarIndexVerifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008&\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH$J,\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H\u00110\u0010\"\u0004\u0008\u0000\u0010\u00112\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u0002H\u00110\u0013J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0010\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0016H\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u0005X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001b"
    }
    d2 = {
        "Lorg/fdroid/index/JarIndexVerifier;",
        "",
        "jarFile",
        "Ljava/io/File;",
        "expectedSigningCertificate",
        "",
        "expectedSigningFingerprint",
        "(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V",
        "jsonFileName",
        "getJsonFileName",
        "()Ljava/lang/String;",
        "checkAttributes",
        "",
        "attributes",
        "Ljava/util/jar/Attributes;",
        "getStreamAndVerify",
        "Lkotlin/Pair;",
        "T",
        "certificateAndStream",
        "Lkotlin/Function1;",
        "Ljava/io/InputStream;",
        "getX509Certificate",
        "Ljava/security/cert/X509Certificate;",
        "jarEntry",
        "Ljava/util/jar/JarEntry;",
        "verifyAndGetSigningCertificate",
        "rawCertFromJar",
        "index_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final expectedSigningCertificate:Ljava/lang/String;

.field private final expectedSigningFingerprint:Ljava/lang/String;

.field private final jarFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "jarFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fdroid/index/JarIndexVerifier;->jarFile:Ljava/io/File;

    iput-object p2, p0, Lorg/fdroid/index/JarIndexVerifier;->expectedSigningCertificate:Ljava/lang/String;

    iput-object p3, p0, Lorg/fdroid/index/JarIndexVerifier;->expectedSigningFingerprint:Ljava/lang/String;

    const-string p1, "Failed requirement."

    if-eqz p2, :cond_1

    .line 20
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    .line 21
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_1
    if-eqz p2, :cond_5

    if-nez p3, :cond_4

    goto :goto_2

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Providing a signing certificate and a fingerprint makes no sense."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private final getX509Certificate(Ljava/util/jar/JarEntry;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 69
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 72
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 76
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object p1

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 80
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1

    .line 78
    :cond_0
    new-instance p1, Lorg/fdroid/index/SigningException;

    const-string v0, "index.jar code signers must only have a single certificate"

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_1
    new-instance p1, Lorg/fdroid/index/SigningException;

    const-string v0, "index.jar must be signed by a single code signer"

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_2
    new-instance p1, Lorg/fdroid/index/SigningException;

    const-string v0, "No signature found in index, did you read stream until end?"

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final verifyAndGetSigningCertificate(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;
        }
    .end annotation

    .line 90
    sget-object v0, Lorg/fdroid/index/IndexUtils;->INSTANCE:Lorg/fdroid/index/IndexUtils;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    const-string v2, "getEncoded(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/fdroid/index/IndexUtils;->toHex$index_release([B)Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_5

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x200

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lorg/fdroid/index/JarIndexVerifier;->expectedSigningCertificate:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/fdroid/index/JarIndexVerifier;->expectedSigningFingerprint:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/fdroid/index/IndexUtils;->sha256$index_release([B)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/fdroid/index/IndexUtils;->toHex$index_release([B)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/index/JarIndexVerifier;->expectedSigningFingerprint:Ljava/lang/String;

    .line 98
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Lorg/fdroid/index/SigningException;

    const-string v0, "Expected certificate fingerprint does not match"

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/fdroid/index/JarIndexVerifier;->expectedSigningCertificate:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 103
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 104
    :cond_2
    new-instance p1, Lorg/fdroid/index/SigningException;

    const-string v0, "Signing certificate does not match"

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object v1

    .line 93
    :cond_4
    new-instance p1, Lorg/fdroid/index/SigningException;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is too short."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_5
    new-instance p1, Lorg/fdroid/index/SigningException;

    const-string v0, "No signing certificate"

    invoke-direct {p1, v0}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected abstract checkAttributes(Ljava/util/jar/Attributes;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/index/SigningException;
        }
    .end annotation
.end method

.method protected abstract getJsonFileName()Ljava/lang/String;
.end method

.method public final getStreamAndVerify(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1;",
            ")",
            "Lkotlin/Pair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/fdroid/index/SigningException;
        }
    .end annotation

    const-string v0, "certificateAndStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/util/jar/JarFile;

    iget-object v1, p0, Lorg/fdroid/index/JarIndexVerifier;->jarFile:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lorg/fdroid/index/JarIndexVerifier;->getJsonFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    instance-of v2, v1, Ljava/util/jar/JarEntry;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/jar/JarEntry;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v1}, Ljava/util/jar/JarEntry;->getAttributes()Ljava/util/jar/Attributes;

    move-result-object v2

    const-string v4, "getAttributes(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/fdroid/index/JarIndexVerifier;->checkAttributes(Ljava/util/jar/Attributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    :try_start_3
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    invoke-direct {p0, v1}, Lorg/fdroid/index/JarIndexVerifier;->getX509Certificate(Ljava/util/jar/JarEntry;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 55
    new-instance v2, Lkotlin/Pair;

    invoke-direct {p0, v1}, Lorg/fdroid/index/JarIndexVerifier;->verifyAndGetSigningCertificate(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 39
    invoke-static {v0, v3}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v2

    :catch_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 48
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-static {v2, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 52
    :goto_1
    :try_start_7
    new-instance v1, Lorg/fdroid/index/SigningException;

    invoke-direct {v1, p1}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 43
    :cond_1
    new-instance p1, Lorg/fdroid/index/SigningException;

    invoke-virtual {p0}, Lorg/fdroid/index/JarIndexVerifier;->getJsonFileName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No attributes for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    new-instance p1, Lorg/fdroid/index/SigningException;

    invoke-virtual {p0}, Lorg/fdroid/index/JarIndexVerifier;->getJsonFileName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/fdroid/index/SigningException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 39
    :goto_2
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method
