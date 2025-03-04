.class abstract Lkotlin/text/CharsKt__CharKt;
.super Lkotlin/text/CharsKt__CharJVMKt;
.source "Char.kt"


# direct methods
.method public static final equals(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    .line 237
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    .line 238
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    .line 240
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static isSurrogate(C)Z
    .locals 3

    .line 246
    new-instance v0, Lkotlin/ranges/CharRange;

    const v1, 0xd800

    const v2, 0xdfff

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/CharRange;-><init>(CC)V

    invoke-virtual {v0, p0}, Lkotlin/ranges/CharRange;->contains(C)Z

    move-result p0

    return p0
.end method

.method public static titlecase(C)Ljava/lang/String;
    .locals 0

    .line 215
    invoke-static {p0}, Lkotlin/text/_OneToManyTitlecaseMappingsKt;->titlecaseImpl(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
