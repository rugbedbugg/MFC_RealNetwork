.class final Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
.super Ljava/lang/Object;
.source "ImageVector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroupParams"
.end annotation


# instance fields
.field private children:Ljava/util/List;

.field private clipPathData:Ljava/util/List;

.field private name:Ljava/lang/String;

.field private pivotX:F

.field private pivotY:F

.field private rotate:F

.field private scaleX:F

.field private scaleY:F

.field private translationX:F

.field private translationY:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clipPathData"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    iput p2, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    iput p5, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    iput p6, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    iput p7, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    iput p8, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    iput-object p9, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    iput-object p10, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move v8, v3

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v3, p8

    :goto_7
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    .line 399
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getEmptyPath()Ljava/util/List;

    move-result-object v9

    goto :goto_8

    :cond_8
    move-object/from16 v9, p9

    :goto_8
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :cond_9
    move-object/from16 v0, p10

    :goto_9
    move-object p1, p0

    move-object p2, v1

    move p3, v2

    move p4, v4

    move p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v3

    move-object/from16 p10, v9

    move-object/from16 p11, v0

    .line 390
    invoke-direct/range {p1 .. p11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getChildren()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getClipPathData()Ljava/util/List;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->clipPathData:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPivotX()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotX:F

    return v0
.end method

.method public final getPivotY()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->pivotY:F

    return v0
.end method

.method public final getRotate()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->rotate:F

    return v0
.end method

.method public final getScaleX()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleX:F

    return v0
.end method

.method public final getScaleY()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->scaleY:F

    return v0
.end method

.method public final getTranslationX()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationX:F

    return v0
.end method

.method public final getTranslationY()F
    .locals 1

    .line 0
    iget v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->translationY:F

    return v0
.end method
