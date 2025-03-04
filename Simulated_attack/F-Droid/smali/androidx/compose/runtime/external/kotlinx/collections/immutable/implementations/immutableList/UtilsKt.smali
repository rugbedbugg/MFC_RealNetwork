.class public abstract Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# direct methods
.method public static final indexSegment(II)I
    .locals 0

    .line 0
    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final persistentVectorOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .locals 1

    .line 18
    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;->getEMPTY()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v0

    return-object v0
.end method

.method public static final presizedBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 0
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static final rootSize(I)I
    .locals 0

    .line 0
    add-int/lit8 p0, p0, -0x1

    and-int/lit8 p0, p0, -0x20

    return p0
.end method
