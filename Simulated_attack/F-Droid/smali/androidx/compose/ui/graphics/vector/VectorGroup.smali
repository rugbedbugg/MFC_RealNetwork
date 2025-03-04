.class public final Landroidx/compose/ui/graphics/vector/VectorGroup;
.super Landroidx/compose/ui/graphics/vector/VectorNode;
.source "ImageVector.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final children:Ljava/util/List;

.field private final clipPathData:Ljava/util/List;

.field private final name:Ljava/lang/String;

.field private final pivotX:F

.field private final pivotY:F

.field private final rotation:F

.field private final scaleX:F

.field private final scaleY:F

.field private final translationX:F

.field private final translationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipPathData"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 500
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/VectorNode;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    iput p5, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    iput p6, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    iput p7, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    iput p8, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    iput-object p9, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    iput-object p10, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getChildren$p(Landroidx/compose/ui/graphics/vector/VectorGroup;)Ljava/util/List;
    .locals 0

    .line 448
    iget-object p0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 522
    instance-of v2, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    .line 524
    check-cast p1, Landroidx/compose/ui/graphics/vector/VectorGroup;

    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    .line 525
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    .line 526
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    .line 527
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    .line 528
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    .line 529
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    .line 530
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    .line 531
    iget v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_5

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    .line 532
    iget-object v3, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    .line 533
    iget-object p1, p1, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public final getClipPathData()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPivotX()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    return v0
.end method

.method public final getPivotY()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    return v0
.end method

.method public final getRotation()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    return v0
.end method

.method public final getScaleY()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    return v0
.end method

.method public final getTranslationX()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    return v0
.end method

.method public final getTranslationY()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->name:Ljava/lang/String;

    .line 539
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->rotation:F

    .line 540
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotX:F

    .line 541
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->pivotY:F

    .line 542
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleX:F

    .line 543
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->scaleY:F

    .line 544
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationX:F

    .line 545
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->translationY:F

    .line 546
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->clipPathData:Ljava/util/List;

    .line 547
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/ui/graphics/vector/VectorGroup;->children:Ljava/util/List;

    .line 548
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 510
    new-instance v0, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/vector/VectorGroup$iterator$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup;)V

    return-object v0
.end method
