.class public final Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
.super Ljava/lang/Object;
.source "ImageVector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/ImageVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    }
.end annotation


# instance fields
.field private final autoMirror:Z

.field private final defaultHeight:F

.field private final defaultWidth:F

.field private isConsumed:Z

.field private final name:Ljava/lang/String;

.field private final nodes:Ljava/util/ArrayList;

.field private root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

.field private final tintBlendMode:I

.field private final tintColor:J

.field private final viewportHeight:F

.field private final viewportWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;FFFFJIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "name"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    move/from16 v1, p2

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    move/from16 v1, p3

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    move/from16 v1, p4

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    move/from16 v1, p5

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    move-wide/from16 v1, p6

    iput-wide v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    move/from16 v1, p8

    iput v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    move/from16 v1, p9

    iput-boolean v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    .line 196
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 198
    new-instance v15, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3ff

    const/4 v14, 0x0

    move-object v2, v15

    invoke-direct/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v15, v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 205
    invoke-static {v1, v15}, Landroidx/compose/ui/graphics/vector/ImageVectorKt;->access$push(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    .line 124
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    .line 129
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result v1

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v11, v0

    goto :goto_3

    :cond_3
    move/from16 v11, p9

    :goto_3
    const/4 v12, 0x0

    move-object v2, p0

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    .line 92
    invoke-direct/range {v2 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;FFFFJIZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZ)V

    return-void
.end method

.method public static synthetic addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 292
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v1

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_1

    :cond_1
    move-object/from16 v2, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v4, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move v7, v6

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    move v8, v9

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    .line 299
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineCap()I

    move-result v10

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    .line 300
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultStrokeLineJoin()I

    move-result v11

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    const/high16 v12, 0x40800000    # 4.0f

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    move v13, v9

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v6, p13

    :goto_b
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v9, p14

    :goto_c
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v3

    move/from16 p7, v5

    move-object/from16 p8, v4

    move/from16 p9, v7

    move/from16 p10, v8

    move/from16 p11, v10

    move/from16 p12, v11

    move/from16 p13, v12

    move/from16 p14, v13

    move/from16 p15, v6

    move/from16 p16, v9

    .line 290
    invoke-virtual/range {p2 .. p16}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    return-object v0
.end method

.method private final asVectorGroup(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;
    .locals 12

    .line 373
    new-instance v11, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 374
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getName()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getRotate()F

    move-result v2

    .line 376
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getPivotX()F

    move-result v3

    .line 377
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getPivotY()F

    move-result v4

    .line 378
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getScaleX()F

    move-result v5

    .line 379
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getScaleY()F

    move-result v6

    .line 380
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getTranslationX()F

    move-result v7

    .line 381
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getTranslationY()F

    move-result v8

    .line 382
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getClipPathData()Ljava/util/List;

    move-result-object v9

    .line 383
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getChildren()Ljava/util/List;

    move-result-object v10

    move-object v0, v11

    .line 373
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/vector/VectorGroup;-><init>(Ljava/lang/String;FFFFFFFLjava/util/List;Ljava/util/List;)V

    return-object v11
.end method

.method private final ensureNotConsumed()V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageVector.Builder is single use, create a new instance to create a new ImageVector"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getCurrentGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 202
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/ImageVectorKt;->access$peek(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    return-object v0
.end method


# virtual methods
.method public final addPath-oIyEayM(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 18

    const-string v0, "pathData"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    .line 307
    invoke-direct/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->getCurrentGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getChildren()Ljava/util/List;

    move-result-object v0

    .line 308
    new-instance v15, Landroidx/compose/ui/graphics/vector/VectorPath;

    const/16 v16, 0x0

    move-object v1, v15

    move/from16 v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v17, v15

    move/from16 v15, p14

    invoke-direct/range {v1 .. v16}, Landroidx/compose/ui/graphics/vector/VectorPath;-><init>(Ljava/lang/String;Ljava/util/List;ILandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v17

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final build()Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 14

    .line 334
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 336
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 337
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    goto :goto_0

    .line 340
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v3, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->name:Ljava/lang/String;

    iget v4, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultWidth:F

    iget v5, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->defaultHeight:F

    iget v6, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportWidth:F

    iget v7, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->viewportHeight:F

    iget-object v2, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->root:Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 346
    invoke-direct {p0, v2}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->asVectorGroup(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;

    move-result-object v8

    iget-wide v9, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintColor:J

    iget v11, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->tintBlendMode:I

    iget-boolean v12, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->autoMirror:Z

    const/4 v13, 0x0

    move-object v2, v0

    .line 340
    invoke-direct/range {v2 .. v13}, Landroidx/compose/ui/graphics/vector/ImageVector;-><init>(Ljava/lang/String;FFFFLandroidx/compose/ui/graphics/vector/VectorGroup;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->isConsumed:Z

    return-object v0
.end method

.method public final clearGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 2

    .line 257
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->ensureNotConsumed()V

    iget-object v0, p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->nodes:Ljava/util/ArrayList;

    .line 258
    invoke-static {v0}, Landroidx/compose/ui/graphics/vector/ImageVectorKt;->access$pop(Ljava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    .line 259
    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->getCurrentGroup()Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->asVectorGroup(Landroidx/compose/ui/graphics/vector/ImageVector$Builder$GroupParams;)Landroidx/compose/ui/graphics/vector/VectorGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
