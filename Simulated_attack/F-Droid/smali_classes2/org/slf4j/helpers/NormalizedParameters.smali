.class public abstract Lorg/slf4j/helpers/NormalizedParameters;
.super Ljava/lang/Object;
.source "NormalizedParameters.java"


# direct methods
.method public static getThrowableCandidate([Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 51
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object p0, p0, v1

    .line 56
    instance-of v1, p0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 57
    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static trimmedCopy([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3

    if-eqz p0, :cond_1

    .line 71
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 75
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    .line 77
    new-array v1, v0, [Ljava/lang/Object;

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 80
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1

    .line 72
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "non-sensical empty or null argument array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
