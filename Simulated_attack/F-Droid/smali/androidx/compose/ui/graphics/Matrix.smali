.class public final Landroidx/compose/ui/graphics/Matrix;
.super Ljava/lang/Object;
.source "Matrix.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Matrix$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/Matrix$Companion;


# instance fields
.field private final values:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/Matrix$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Matrix$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/Matrix;->Companion:Landroidx/compose/ui/graphics/Matrix$Companion;

    return-void
.end method

.method private synthetic constructor <init>([F)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-void
.end method

.method public static final synthetic box-impl([F)Landroidx/compose/ui/graphics/Matrix;
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/ui/graphics/Matrix;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/Matrix;-><init>([F)V

    return-object v0
.end method

.method public static constructor-impl([F)[F
    .locals 1

    .line 0
    const-string v0, "values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic constructor-impl$default([FILkotlin/jvm/internal/DefaultConstructorMarker;)[F
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/16 p0, 0x10

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    .line 31
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/graphics/Matrix;->constructor-impl([F)[F

    move-result-object p0

    return-object p0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static equals-impl([FLjava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Landroidx/compose/ui/graphics/Matrix;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/Matrix;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Matrix;->unbox-impl()[F

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static hashCode-impl([F)I
    .locals 0

    .line 0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result p0

    return p0
.end method

.method public static final map-MK-Hz9U([FJ)J
    .locals 4

    .line 49
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    .line 50
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    const/4 p2, 0x3

    .line 39
    aget p2, p0, p2

    mul-float/2addr p2, v0

    const/4 v1, 0x7

    aget v1, p0, v1

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    const/16 v1, 0xf

    aget v1, p0, v1

    add-float/2addr p2, v1

    const/4 v1, 0x1

    int-to-float v2, v1

    div-float/2addr v2, p2

    .line 53
    invoke-static {v2}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 p2, 0x0

    .line 39
    aget p2, p0, p2

    mul-float/2addr p2, v0

    const/4 v3, 0x4

    aget v3, p0, v3

    mul-float/2addr v3, p1

    add-float/2addr p2, v3

    const/16 v3, 0xc

    aget v3, p0, v3

    add-float/2addr p2, v3

    mul-float/2addr p2, v2

    .line 39
    aget v1, p0, v1

    mul-float/2addr v1, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    const/16 p1, 0xd

    aget p0, p0, p1

    add-float/2addr v1, p0

    mul-float/2addr v2, v1

    .line 55
    invoke-static {p2, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V
    .locals 10

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v0

    .line 82
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getLeft()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v2

    .line 83
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v4

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getTop()F

    move-result v5

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v4

    .line 84
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getRight()F

    move-result v6

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->getBottom()F

    move-result v7

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroidx/compose/ui/graphics/Matrix;->map-MK-Hz9U([FJ)J

    move-result-wide v6

    .line 86
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setLeft(F)V

    .line 87
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setTop(F)V

    .line 88
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v8

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {p0, v8}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setRight(F)V

    .line 89
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/geometry/MutableRect;->setBottom(F)V

    return-void
.end method

.method public static final reset-impl([F)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    if-ne v1, v3, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    :goto_2
    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    .line 42
    aput v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final rotateZ-impl([FF)V
    .locals 20

    move/from16 v0, p1

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 292
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    .line 39
    aget v3, p0, v1

    const/4 v4, 0x4

    .line 39
    aget v5, p0, v4

    mul-float v6, v2, v3

    mul-float v7, v0, v5

    add-float/2addr v6, v7

    neg-float v7, v0

    mul-float/2addr v3, v7

    mul-float/2addr v5, v2

    add-float/2addr v3, v5

    const/4 v5, 0x1

    .line 39
    aget v8, p0, v5

    const/4 v9, 0x5

    .line 39
    aget v10, p0, v9

    mul-float v11, v2, v8

    mul-float v12, v0, v10

    add-float/2addr v11, v12

    mul-float/2addr v8, v7

    mul-float/2addr v10, v2

    add-float/2addr v8, v10

    const/4 v10, 0x2

    .line 39
    aget v12, p0, v10

    const/4 v13, 0x6

    .line 39
    aget v14, p0, v13

    mul-float v15, v2, v12

    mul-float v16, v0, v14

    add-float v15, v15, v16

    mul-float/2addr v12, v7

    mul-float/2addr v14, v2

    add-float/2addr v12, v14

    const/4 v14, 0x3

    .line 39
    aget v16, p0, v14

    const/16 v17, 0x7

    .line 39
    aget v18, p0, v17

    mul-float v19, v2, v16

    mul-float v0, v0, v18

    add-float v19, v19, v0

    mul-float v7, v7, v16

    mul-float v2, v2, v18

    add-float/2addr v7, v2

    .line 42
    aput v6, p0, v1

    .line 42
    aput v11, p0, v5

    .line 42
    aput v15, p0, v10

    .line 42
    aput v19, p0, v14

    .line 42
    aput v3, p0, v4

    .line 42
    aput v8, p0, v9

    .line 42
    aput v12, p0, v13

    .line 42
    aput v7, p0, v17

    return-void
.end method

.method public static final scale-impl([FFFF)V
    .locals 2

    const/4 v0, 0x0

    .line 39
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 42
    aput v1, p0, v0

    const/4 v0, 0x1

    .line 39
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 42
    aput v1, p0, v0

    const/4 v0, 0x2

    .line 39
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 42
    aput v1, p0, v0

    const/4 v0, 0x3

    .line 39
    aget v1, p0, v0

    mul-float/2addr v1, p1

    .line 42
    aput v1, p0, v0

    const/4 p1, 0x4

    .line 39
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 42
    aput v0, p0, p1

    const/4 p1, 0x5

    .line 39
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 42
    aput v0, p0, p1

    const/4 p1, 0x6

    .line 39
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 42
    aput v0, p0, p1

    const/4 p1, 0x7

    .line 39
    aget v0, p0, p1

    mul-float/2addr v0, p2

    .line 42
    aput v0, p0, p1

    const/16 p1, 0x8

    .line 39
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 42
    aput p2, p0, p1

    const/16 p1, 0x9

    .line 39
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 42
    aput p2, p0, p1

    const/16 p1, 0xa

    .line 39
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 42
    aput p2, p0, p1

    const/16 p1, 0xb

    .line 39
    aget p2, p0, p1

    mul-float/2addr p2, p3

    .line 42
    aput p2, p0, p1

    return-void
.end method

.method public static toString-impl([F)Ljava/lang/String;
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n            |"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 39
    aget v1, p0, v1

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 39
    aget v2, p0, v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 39
    aget v2, p0, v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 39
    aget v2, p0, v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "|\n            |"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x7

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x8

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 39
    aget v3, p0, v3

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    .line 39
    aget v2, p0, v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    .line 39
    aget v2, p0, v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    .line 39
    aget v2, p0, v2

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0xf

    .line 39
    aget p0, p0, v1

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "|\n        "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 136
    invoke-static {p0}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final translate-impl([FFFF)V
    .locals 7

    const/4 v0, 0x0

    .line 39
    aget v0, p0, v0

    mul-float/2addr v0, p1

    const/4 v1, 0x4

    .line 39
    aget v1, p0, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    const/16 v1, 0x8

    .line 39
    aget v1, p0, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    const/16 v1, 0xc

    .line 39
    aget v2, p0, v1

    add-float/2addr v0, v2

    const/4 v2, 0x1

    .line 39
    aget v2, p0, v2

    mul-float/2addr v2, p1

    const/4 v3, 0x5

    .line 39
    aget v3, p0, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    const/16 v3, 0x9

    .line 39
    aget v3, p0, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    const/16 v3, 0xd

    .line 39
    aget v4, p0, v3

    add-float/2addr v2, v4

    const/4 v4, 0x2

    .line 39
    aget v4, p0, v4

    mul-float/2addr v4, p1

    const/4 v5, 0x6

    .line 39
    aget v5, p0, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    const/16 v5, 0xa

    .line 39
    aget v5, p0, v5

    mul-float/2addr v5, p3

    add-float/2addr v4, v5

    const/16 v5, 0xe

    .line 39
    aget v6, p0, v5

    add-float/2addr v4, v6

    const/4 v6, 0x3

    .line 39
    aget v6, p0, v6

    mul-float/2addr v6, p1

    const/4 p1, 0x7

    .line 39
    aget p1, p0, p1

    mul-float/2addr p1, p2

    add-float/2addr v6, p1

    const/16 p1, 0xb

    .line 39
    aget p1, p0, p1

    mul-float/2addr p1, p3

    add-float/2addr v6, p1

    const/16 p1, 0xf

    .line 39
    aget p2, p0, p1

    add-float/2addr v6, p2

    .line 42
    aput v0, p0, v1

    .line 42
    aput v2, p0, v3

    .line 42
    aput v4, p0, v5

    .line 42
    aput v6, p0, p1

    return-void
.end method

.method public static synthetic translate-impl$default([FFFFILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 341
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/Matrix;->translate-impl([FFFF)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/Matrix;->equals-impl([FLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->hashCode-impl([F)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    .line 130
    invoke-static {v0}, Landroidx/compose/ui/graphics/Matrix;->toString-impl([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic unbox-impl()[F
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/Matrix;->values:[F

    return-object v0
.end method
