.class public final Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;
.super Ljava/lang/Object;
.source "LocalRepoKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException;,
        Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;
    }
.end annotation


# static fields
.field private static final DEFAULT_INDEX_CERT_INFO:Ljava/lang/String; = "O=Kerplapp,OU=GuardianProject"

.field private static final DEFAULT_KEY_ALGO:Ljava/lang/String; = "RSA"

.field private static final DEFAULT_KEY_BITS:I = 0x800

.field public static final DEFAULT_SIG_ALG:Ljava/lang/String; = "SHA1withRSA"

.field private static final HTTP_CERT_ALIAS:Ljava/lang/String; = "https"

.field private static final INDEX_CERT_ALIAS:Ljava/lang/String; = "fdroid"

.field private static final TAG:Ljava/lang/String; = "LocalRepoKeyStore"

.field private static localRepoKeyStore:Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;


# instance fields
.field private keyManagers:[Ljavax/net/ssl/KeyManager;

.field private keyStore:Ljava/security/KeyStore;

.field private keyStoreFile:Ljava/io/File;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException;
        }
    .end annotation

    const-string v0, "fdroid"

    const-string v1, "LocalRepoKeyStore"

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v2, "keystore"

    const/4 v3, 0x0

    .line 92
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Generating LocalRepoKeyStore instance: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v2, Ljava/io/File;

    const-string v4, "kerplapp.bks"

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStoreFile:Ljava/io/File;

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using default KeyStore type: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStoreFile:Ljava/io/File;

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const-string v4, ""

    if-eqz p1, :cond_0

    :try_start_1
    const-string p1, "Keystore already exists, loading..."

    .line 103
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStoreFile:Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v5, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :try_start_3
    invoke-static {p1}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception p1

    goto/16 :goto_3

    :catch_2
    move-exception p1

    goto/16 :goto_3

    :catch_3
    move-exception p1

    goto/16 :goto_3

    :catch_4
    move-exception p1

    goto/16 :goto_3

    :catch_5
    move-exception p1

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v2, p1

    goto :goto_1

    :catch_6
    move-exception v0

    move-object v2, p1

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    :goto_0
    :try_start_4
    const-string p1, "Error while loading existing keystore. Will delete and create a new one."

    .line 107
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance p1, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not initialize local repo keystore: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 115
    :goto_1
    :try_start_5
    invoke-static {v2}, Lorg/fdroid/fdroid/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 116
    throw v0

    :cond_0
    :goto_2
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStoreFile:Ljava/io/File;

    .line 119
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Keystore doesn\'t exist, creating..."

    .line 123
    invoke-static {v1, p1}, Lorg/fdroid/fdroid/Utils;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 124
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    :cond_1
    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 132
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {p1, v0, v5}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1

    if-nez p1, :cond_2

    .line 138
    invoke-static {}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->generateRandomKeypair()Ljava/security/KeyPair;

    move-result-object p1

    .line 145
    new-instance v5, Lorg/bouncycastle/asn1/x500/X500Name;

    const-string v6, "O=Kerplapp,OU=GuardianProject"

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {p1, v5}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->generateSelfSignedCertChain(Ljava/security/KeyPair;Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 148
    invoke-direct {p0, v0, p1, v5}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->addToStore(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/cert/Certificate;)V

    .line 159
    :cond_2
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p1

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 161
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 162
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    aget-object p1, p1, v3

    .line 163
    new-instance v0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;

    check-cast p1, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v0, p1, v2}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;-><init>(Ljavax/net/ssl/X509KeyManager;Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager-IA;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/KeyManager;

    aput-object v0, p1, v3

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyManagers:[Ljavax/net/ssl/KeyManager;
    :try_end_5
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    :goto_3
    const-string v0, "Error loading keystore"

    .line 170
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void
.end method

.method private addToStore(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/cert/Certificate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/security/cert/Certificate;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    iget-object p3, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 261
    invoke-virtual {p2}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p2

    const-string v3, ""

    .line 262
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 261
    invoke-virtual {p3, p1, p2, v4, v1}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    iget-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 264
    new-instance p2, Ljava/io/FileOutputStream;

    iget-object p3, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStoreFile:Ljava/io/File;

    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 272
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p1

    iget-object p2, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 274
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 275
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    aget-object p1, p1, v2

    .line 276
    new-instance p2, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;

    check-cast p1, Ljavax/net/ssl/X509KeyManager;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager;-><init>(Ljavax/net/ssl/X509KeyManager;Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$KerplappKeyManager-IA;)V

    new-array p1, v0, [Ljavax/net/ssl/KeyManager;

    aput-object p2, p1, v2

    iput-object p1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-void
.end method

.method public static generateRandomKeypair()Ljava/security/KeyPair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "RSA"

    .line 283
    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    const/16 v1, 0x800

    .line 284
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 285
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public static generateSelfSignedCertChain(Ljava/security/KeyPair;Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 290
    invoke-static {p0, p1, v0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->generateSelfSignedCertChain(Ljava/security/KeyPair;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static generateSelfSignedCertChain(Ljava/security/KeyPair;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Lorg/bouncycastle/operator/OperatorCreationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 296
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    .line 297
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object p0

    .line 298
    new-instance v2, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;

    const-string v3, "SHA1withRSA"

    invoke-direct {v2, v3}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lorg/bouncycastle/operator/jcajce/JcaContentSignerBuilder;->build(Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/ContentSigner;

    move-result-object v1

    .line 300
    new-instance v8, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 301
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p0

    invoke-direct {v8, p0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 303
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    .line 308
    new-instance v2, Ljava/util/GregorianCalendar;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    .line 309
    invoke-virtual {v2, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x1

    .line 310
    invoke-virtual {v2, v4, v4}, Ljava/util/Calendar;->add(II)V

    .line 311
    new-instance v5, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v5, p0, v3}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    .line 312
    new-instance v6, Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-direct {v6, p0, v3}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;Ljava/util/Locale;)V

    .line 314
    new-instance p0, Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 316
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    if-eqz p2, :cond_0

    .line 323
    new-instance p1, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v2, 0x7

    invoke-direct {v0, v2, p2}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 325
    sget-object p2, Lorg/bouncycastle/asn1/x509/X509Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->addExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;ZLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/cert/X509v3CertificateBuilder;

    .line 328
    :cond_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/cert/X509v3CertificateBuilder;->build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object p0

    .line 329
    new-instance p1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;

    invoke-direct {p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;-><init>()V

    invoke-virtual {p1, p0}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateConverter;->getCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore$InitException;
        }
    .end annotation

    sget-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->localRepoKeyStore:Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    invoke-direct {v0, p0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->localRepoKeyStore:Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    :cond_0
    sget-object p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->localRepoKeyStore:Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;

    return-object p0
.end method

.method private getKerplappKeypair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    const-string v1, ""

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "fdroid"

    invoke-virtual {v0, v2, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    .line 235
    instance-of v1, v0, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 236
    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 238
    new-instance v2, Ljava/security/KeyPair;

    check-cast v0, Ljava/security/PrivateKey;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .locals 3

    const-string v0, "fdroid"

    :try_start_0
    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    const-string v2, ""

    .line 246
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    .line 247
    instance-of v1, v1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    .line 248
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LocalRepoKeyStore"

    const-string v2, "Unable to get certificate for local repo"

    .line 251
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyManagers:[Ljavax/net/ssl/KeyManager;

    return-object v0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public getKeyStoreFile()Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStoreFile:Ljava/io/File;

    return-object v0
.end method

.method public setupHTTPSCertificate()V
    .locals 4

    .line 177
    :try_start_0
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->getKerplappKeypair()Ljava/security/KeyPair;

    move-result-object v0

    .line 186
    new-instance v1, Lorg/bouncycastle/asn1/x500/X500Name;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/x500/X500Name;-><init>(Ljava/lang/String;)V

    .line 187
    sget-object v2, Lorg/fdroid/fdroid/FDroidApp;->ipAddressString:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->generateSelfSignedCertChain(Ljava/security/KeyPair;Lorg/bouncycastle/asn1/x500/X500Name;Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    const-string v2, "https"

    .line 189
    invoke-direct {p0, v2, v0, v1}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->addToStore(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LocalRepoKeyStore"

    const-string v2, "Failed to setup HTTPS certificate"

    .line 191
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public signZip(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 209
    :try_start_0
    new-instance v6, Lkellinwood/security/zipsigner/ZipSigner;

    invoke-direct {v6}, Lkellinwood/security/zipsigner/ZipSigner;-><init>()V

    iget-object v0, p0, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->keyStore:Ljava/security/KeyStore;

    const-string v1, "fdroid"

    .line 211
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 213
    invoke-direct {p0}, Lorg/fdroid/fdroid/nearby/LocalRepoKeyStore;->getKerplappKeypair()Ljava/security/KeyPair;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    const-string v1, "kerplapp"

    const-string v4, "SHA1withRSA"

    const/4 v5, 0x0

    move-object v0, v6

    .line 216
    invoke-virtual/range {v0 .. v5}, Lkellinwood/security/zipsigner/ZipSigner;->setKeys(Ljava/lang/String;Ljava/security/cert/X509Certificate;Ljava/security/PrivateKey;Ljava/lang/String;[B)V

    .line 217
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, p2}, Lkellinwood/security/zipsigner/ZipSigner;->signZip(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    const-string p2, "LocalRepoKeyStore"

    const-string v0, "Unable to sign local repo index"

    .line 221
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
