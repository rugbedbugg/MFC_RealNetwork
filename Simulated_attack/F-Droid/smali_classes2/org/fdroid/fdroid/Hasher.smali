.class public Lorg/fdroid/fdroid/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"


# instance fields
.field private final array:[B

.field private digest:Ljava/security/MessageDigest;

.field private hashCache:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lorg/fdroid/fdroid/Hasher;->init(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/Hasher;->array:[B

    return-void
.end method

.method public static hex(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 66
    :goto_0
    invoke-static {p0}, Lorg/fdroid/fdroid/Hasher;->hex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 6

    .line 70
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 71
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 72
    aget-byte v2, p0, v1

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v1, 0x2

    const/16 v5, 0xa

    if-lt v3, v5, :cond_0

    add-int/lit8 v3, v3, 0x57

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x30

    :goto_1
    int-to-byte v3, v3

    .line 74
    aput-byte v3, v0, v4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v4, v4, 0x1

    if-lt v2, v5, :cond_1

    add-int/lit8 v2, v2, 0x57

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x30

    :goto_2
    int-to-byte v2, v2

    .line 76
    aput-byte v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method private init(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 41
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lorg/fdroid/fdroid/Hasher;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static unhex(Ljava/lang/String;)[B
    .locals 6

    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 83
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-gt v3, v2, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x30

    goto :goto_1

    :cond_0
    const/16 v3, 0x61

    if-gt v3, v2, :cond_1

    const/16 v3, 0x66

    if-gt v2, v3, :cond_1

    add-int/lit8 v2, v2, -0x57

    goto :goto_1

    :cond_1
    const/16 v3, 0x41

    if-gt v3, v2, :cond_3

    const/16 v3, 0x46

    if-gt v2, v3, :cond_3

    add-int/lit8 v2, v2, -0x37

    .line 95
    :goto_1
    div-int/lit8 v3, v1, 0x2

    aget-byte v4, v0, v3

    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_2

    shl-int/lit8 v2, v2, 0x4

    :cond_2
    int-to-byte v2, v2

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad hex digit"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/Hasher;->hashCache:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/fdroid/fdroid/Hasher;->digest:Ljava/security/MessageDigest;

    iget-object v1, p0, Lorg/fdroid/fdroid/Hasher;->array:[B

    .line 54
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lorg/fdroid/fdroid/Hasher;->digest:Ljava/security/MessageDigest;

    .line 55
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lorg/fdroid/fdroid/Hasher;->hex([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/fdroid/fdroid/Hasher;->hashCache:Ljava/lang/String;

    return-object v0
.end method
