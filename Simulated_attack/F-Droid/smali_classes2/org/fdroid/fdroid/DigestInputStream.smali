.class public final Lorg/fdroid/fdroid/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000cH\u0016J \u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000cH\u0016J\u0008\u0010\u0014\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lorg/fdroid/fdroid/DigestInputStream;",
        "Ljava/io/FilterInputStream;",
        "inputStream",
        "Ljava/io/InputStream;",
        "messageDigest",
        "Ljava/security/MessageDigest;",
        "(Ljava/io/InputStream;Ljava/security/MessageDigest;)V",
        "getDigestHex",
        "",
        "mark",
        "",
        "readlimit",
        "",
        "markSupported",
        "",
        "read",
        "b",
        "",
        "off",
        "len",
        "reset",
        "download_release"
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
.field private final messageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .locals 1

    const-string v0, "inputStream"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageDigest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/fdroid/fdroid/DigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final getDigestHex()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/fdroid/fdroid/DigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 53
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v1, "digest(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/fdroid/fdroid/HashUtilsKt;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mark(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 22
    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/fdroid/fdroid/DigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    int-to-byte v2, v0

    .line 23
    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 1

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    .line 28
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lorg/fdroid/fdroid/DigestInputStream;->messageDigest:Ljava/security/MessageDigest;

    .line 30
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    :cond_0
    return p3
.end method

.method public reset()V
    .locals 3

    .line 43
    new-instance v0, Lkotlin/NotImplementedError;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method
