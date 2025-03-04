.class public abstract Landroidx/compose/ui/graphics/vector/VectorKt;
.super Ljava/lang/Object;
.source "Vector.kt"


# static fields
.field private static final DefaultFillType:I

.field private static final DefaultStrokeLineCap:I

.field private static final DefaultStrokeLineJoin:I

.field private static final DefaultTintBlendMode:I

.field private static final DefaultTintColor:J

.field private static final EmptyPath:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Ljava/util/List;

    .line 58
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineCap:I

    .line 59
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getMiter-LxFBmk8()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineJoin:I

    .line 60
    sget-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultTintBlendMode:I

    .line 61
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultTintColor:J

    .line 62
    sget-object v0, Landroidx/compose/ui/graphics/PathFillType;->Companion:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/PathFillType$Companion;->getNonZero-Rg-k1Os()I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultFillType:I

    return-void
.end method

.method public static final getDefaultFillType()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultFillType:I

    return v0
.end method

.method public static final getDefaultStrokeLineCap()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineCap:I

    return v0
.end method

.method public static final getDefaultStrokeLineJoin()I
    .locals 1

    .line 0
    sget v0, Landroidx/compose/ui/graphics/vector/VectorKt;->DefaultStrokeLineJoin:I

    return v0
.end method

.method public static final getEmptyPath()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/graphics/vector/VectorKt;->EmptyPath:Ljava/util/List;

    return-object v0
.end method
