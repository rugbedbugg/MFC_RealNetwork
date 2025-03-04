.class public abstract Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaTypesKt;
.super Ljava/lang/Object;
.source "javaTypes.kt"


# direct methods
.method public static final isSuperWildcard(Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;)Z
    .locals 2

    .line 47
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;->getBound()Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaType;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/JavaWildcardType;->isExtends()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
