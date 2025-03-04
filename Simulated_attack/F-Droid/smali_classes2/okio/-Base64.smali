.class public abstract Lokio/-Base64;
.super Ljava/lang/Object;
.source "Base64.kt"


# static fields
.field private static final BASE64:[B

.field private static final BASE64_URL_SAFE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    sget-object v0, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lokio/ByteString;->getData$okio()[B

    move-result-object v1

    sput-object v1, Lokio/-Base64;->BASE64:[B

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    .line 33
    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->getData$okio()[B

    move-result-object v0

    sput-object v0, Lokio/-Base64;->BASE64_URL_SAFE:[B

    return-void
.end method

.method public static final encodeBase64([B[B)Ljava/lang/String;
    .locals 11

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    array-length v0, p0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 121
    new-array v0, v0, [B

    .line 123
    array-length v2, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 126
    aget-byte v6, p0, v3

    add-int/lit8 v7, v3, 0x2

    .line 127
    aget-byte v5, p0, v5

    add-int/lit8 v3, v3, 0x3

    .line 128
    aget-byte v7, p0, v7

    add-int/lit8 v8, v4, 0x1

    and-int/lit16 v9, v6, 0xff

    shr-int/2addr v9, v1

    .line 129
    aget-byte v9, p1, v9

    aput-byte v9, v0, v4

    add-int/lit8 v9, v4, 0x2

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    and-int/lit16 v10, v5, 0xff

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v6, v10

    .line 130
    aget-byte v6, p1, v6

    aput-byte v6, v0, v8

    add-int/lit8 v6, v4, 0x3

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v1

    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    .line 131
    aget-byte v5, p1, v5

    aput-byte v5, v0, v9

    add-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v7, 0x3f

    .line 132
    aget-byte v5, p1, v5

    aput-byte v5, v0, v6

    goto :goto_0

    .line 134
    :cond_0
    array-length v5, p0

    sub-int/2addr v5, v2

    const/16 v2, 0x3d

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    if-eq v5, v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 143
    aget-byte v3, p0, v3

    .line 144
    aget-byte p0, p0, v5

    add-int/lit8 v5, v4, 0x1

    and-int/lit16 v6, v3, 0xff

    shr-int/2addr v6, v1

    .line 145
    aget-byte v6, p1, v6

    aput-byte v6, v0, v4

    add-int/lit8 v6, v4, 0x2

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v7, p0, 0xff

    shr-int/lit8 v7, v7, 0x4

    or-int/2addr v3, v7

    .line 146
    aget-byte v3, p1, v3

    aput-byte v3, v0, v5

    add-int/lit8 v4, v4, 0x3

    and-int/lit8 p0, p0, 0xf

    shl-int/2addr p0, v1

    .line 147
    aget-byte p0, p1, p0

    aput-byte p0, v0, v6

    .line 148
    aput-byte v2, v0, v4

    goto :goto_1

    .line 136
    :cond_2
    aget-byte p0, p0, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit16 v5, p0, 0xff

    shr-int/lit8 v1, v5, 0x2

    .line 137
    aget-byte v1, p1, v1

    aput-byte v1, v0, v4

    add-int/lit8 v1, v4, 0x2

    and-int/lit8 p0, p0, 0x3

    shl-int/lit8 p0, p0, 0x4

    .line 138
    aget-byte p0, p1, p0

    aput-byte p0, v0, v3

    add-int/lit8 v4, v4, 0x3

    .line 139
    aput-byte v2, v0, v1

    .line 140
    aput-byte v2, v0, v4

    .line 151
    :goto_1
    invoke-static {v0}, Lokio/_JvmPlatformKt;->toUtf8String([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic encodeBase64$default([B[BILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lokio/-Base64;->BASE64:[B

    .line 119
    :cond_0
    invoke-static {p0, p1}, Lokio/-Base64;->encodeBase64([B[B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
