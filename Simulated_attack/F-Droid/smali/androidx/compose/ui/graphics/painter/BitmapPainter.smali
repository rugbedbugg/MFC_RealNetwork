.class public final Landroidx/compose/ui/graphics/painter/BitmapPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "BitmapPainter.kt"


# instance fields
.field private alpha:F

.field private colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private filterQuality:I

.field private final image:Landroidx/compose/ui/graphics/ImageBitmap;

.field private final size:J

.field private final srcOffset:J

.field private final srcSize:J


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/ImageBitmap;JJ)V
    .locals 1

    const-string v0, "image"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    iput-wide p2, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcOffset:J

    iput-wide p4, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcSize:J

    .line 84
    sget-object p1, Landroidx/compose/ui/graphics/FilterQuality;->Companion:Landroidx/compose/ui/graphics/FilterQuality$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/FilterQuality$Companion;->getLow-f-v9h1I()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    .line 86
    invoke-direct {p0, p2, p3, p4, p5}, Landroidx/compose/ui/graphics/painter/BitmapPainter;->validateSize-N5eqBDc(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->size:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->alpha:F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/ImageBitmap;JJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 73
    sget-object p2, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntOffset$Companion;->getZero-nOcc-ac()J

    move-result-wide p2

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    .line 74
    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result p2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p4

    :cond_1
    move-wide v4, p4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/ImageBitmap;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/ui/graphics/painter/BitmapPainter;-><init>(Landroidx/compose/ui/graphics/ImageBitmap;JJ)V

    return-void
.end method

.method private final validateSize-N5eqBDc(JJ)J
    .locals 1

    .line 124
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    move-result v0

    if-ltz v0, :cond_0

    .line 125
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 126
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 127
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    if-ltz p1, :cond_0

    .line 128
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-interface {p2}, Landroidx/compose/ui/graphics/ImageBitmap;->getWidth()I

    move-result p2

    if-gt p1, p2, :cond_0

    .line 129
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    iget-object p2, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-interface {p2}, Landroidx/compose/ui/graphics/ImageBitmap;->getHeight()I

    move-result p2

    if-gt p1, p2, :cond_0

    return-wide p3

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->alpha:F

    const/4 p1, 0x1

    return p1
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 138
    check-cast p1, Landroidx/compose/ui/graphics/painter/BitmapPainter;

    iget-object v3, p1, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcOffset:J

    .line 139
    iget-wide v5, p1, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcOffset:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcSize:J

    .line 140
    iget-wide v5, p1, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcSize:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    .line 141
    iget p1, p1, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    invoke-static {v1, p1}, Landroidx/compose/ui/graphics/FilterQuality;->equals-impl0(II)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->size:J

    .line 110
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcOffset:J

    .line 147
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcSize:J

    .line 148
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    .line 149
    invoke-static {v1}, Landroidx/compose/ui/graphics/FilterQuality;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "<this>"

    move-object/from16 v9, p1

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    iget-wide v3, v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcOffset:J

    iget-wide v5, v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcSize:J

    const-wide/16 v7, 0x0

    .line 98
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v10

    invoke-static {v10}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v10

    .line 99
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v11

    invoke-static {v11, v12}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result v9

    invoke-static {v9}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v9

    .line 97
    invoke-static {v10, v9}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v9

    iget v11, v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->alpha:F

    const/4 v12, 0x0

    iget-object v13, v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 v14, 0x0

    iget v15, v0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    const/16 v16, 0x148

    const/16 v17, 0x0

    .line 93
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawImage-AZ2fEMs$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/ImageBitmap;JJJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IIILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BitmapPainter(image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->image:Landroidx/compose/ui/graphics/ImageBitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", srcOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcOffset:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", srcSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->srcSize:J

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/graphics/painter/BitmapPainter;->filterQuality:I

    invoke-static {v1}, Landroidx/compose/ui/graphics/FilterQuality;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
