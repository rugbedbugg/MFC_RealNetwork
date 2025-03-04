.class public abstract Lvendored/org/apache/commons/codec/binary/Hex;
.super Ljava/lang/Object;
.source "Hex.java"


# static fields
.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    sput-object v0, Lvendored/org/apache/commons/codec/binary/Hex;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    sput-object v1, Lvendored/org/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lvendored/org/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private static encodeHex([BII[C[CI)V
    .locals 4

    move v0, p1

    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, p5, 0x1

    .line 223
    aget-byte v2, p0, v0

    and-int/lit16 v3, v2, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v3, p3, v3

    aput-char v3, p4, p5

    add-int/lit8 p5, p5, 0x2

    and-int/lit8 v2, v2, 0xf

    .line 224
    aget-char v2, p3, v2

    aput-char v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static encodeHex([B)[C
    .locals 1

    const/4 v0, 0x1

    .line 140
    invoke-static {p0, v0}, Lvendored/org/apache/commons/codec/binary/Hex;->encodeHex([BZ)[C

    move-result-object p0

    return-object p0
.end method

.method public static encodeHex([BZ)[C
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lvendored/org/apache/commons/codec/binary/Hex;->DIGITS_LOWER:[C

    goto :goto_0

    :cond_0
    sget-object p1, Lvendored/org/apache/commons/codec/binary/Hex;->DIGITS_UPPER:[C

    .line 154
    :goto_0
    invoke-static {p0, p1}, Lvendored/org/apache/commons/codec/binary/Hex;->encodeHex([B[C)[C

    move-result-object p0

    return-object p0
.end method

.method protected static encodeHex([B[C)[C
    .locals 7

    .line 169
    array-length v2, p0

    shl-int/lit8 v0, v2, 0x1

    .line 170
    new-array v6, v0, [C

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v6

    .line 171
    invoke-static/range {v0 .. v5}, Lvendored/org/apache/commons/codec/binary/Hex;->encodeHex([BII[C[CI)V

    return-object v6
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 1

    .line 288
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lvendored/org/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
