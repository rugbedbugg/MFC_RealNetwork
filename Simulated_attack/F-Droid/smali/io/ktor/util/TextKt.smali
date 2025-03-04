.class public abstract Lio/ktor/util/TextKt;
.super Ljava/lang/Object;
.source "Text.kt"


# direct methods
.method public static final caseInsensitive(Ljava/lang/String;)Lio/ktor/util/CaseInsensitiveString;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lio/ktor/util/CaseInsensitiveString;

    invoke-direct {v0, p0}, Lio/ktor/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toLowerCasePreservingASCII(C)C
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    goto :goto_0

    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x80

    if-ge p0, v0, :cond_1

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    :goto_0
    return p0
.end method

.method public static final toLowerCasePreservingASCIIRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    .line 152
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 51
    invoke-static {v4}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCII(C)C

    move-result v5

    if-eq v5, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-object p0

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 60
    invoke-virtual {v3, p0, v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 62
    invoke-static {p0}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result v0

    if-gt v2, v0, :cond_3

    .line 63
    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/ktor/util/TextKt;->toLowerCasePreservingASCII(C)C

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v2, v0, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 59
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
