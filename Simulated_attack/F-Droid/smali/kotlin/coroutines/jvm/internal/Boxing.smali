.class public abstract Lkotlin/coroutines/jvm/internal/Boxing;
.super Ljava/lang/Object;
.source "boxing.kt"


# direct methods
.method public static final boxBoolean(Z)Ljava/lang/Boolean;
    .locals 0

    .line 20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final boxFloat(F)Ljava/lang/Float;
    .locals 1

    .line 40
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p0}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static final boxInt(I)Ljava/lang/Integer;
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static final boxLong(J)Ljava/lang/Long;
    .locals 1

    .line 36
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method
