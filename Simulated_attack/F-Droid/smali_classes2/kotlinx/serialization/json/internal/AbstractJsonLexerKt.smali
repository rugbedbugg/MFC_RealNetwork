.class public abstract Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;
.super Ljava/lang/Object;
.source "AbstractJsonLexer.kt"


# direct methods
.method public static final charToTokenClass(C)B
    .locals 1

    const/16 v0, 0x7e

    if-ge p0, v0, :cond_0

    .line 119
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->CHAR_TO_TOKEN:[B

    aget-byte p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final escapeToChar(I)C
    .locals 1

    const/16 v0, 0x75

    if-ge p0, v0, :cond_0

    .line 121
    sget-object v0, Lkotlinx/serialization/json/internal/CharMappings;->ESCAPE_2_CHAR:[C

    aget-char p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
