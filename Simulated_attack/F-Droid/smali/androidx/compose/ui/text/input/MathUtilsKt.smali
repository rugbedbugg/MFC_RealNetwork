.class public abstract Landroidx/compose/ui/text/input/MathUtilsKt;
.super Ljava/lang/Object;
.source "MathUtils.kt"


# direct methods
.method public static final subtractExactOrElse(IILkotlin/jvm/functions/Function0;)I
    .locals 1

    const-string v0, "defaultValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int v0, p0, p1

    xor-int/2addr p1, p0

    xor-int/2addr p0, v0

    and-int/2addr p0, p1

    if-gez p0, :cond_0

    .line 35
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method
