.class final Landroidx/compose/foundation/BackgroundNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Background.kt"

# interfaces
.implements Landroidx/compose/ui/node/DrawModifierNode;


# instance fields
.field private alpha:F

.field private brush:Landroidx/compose/ui/graphics/Brush;

.field private color:J

.field private lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field private lastOutline:Landroidx/compose/ui/graphics/Outline;

.field private lastShape:Landroidx/compose/ui/graphics/Shape;

.field private lastSize:Landroidx/compose/ui/geometry/Size;

.field private shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method private constructor <init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;)V
    .locals 1

    const-string v0, "shape"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    iput-object p3, p0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    iput p4, p0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    iput-object p5, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundNode;-><init>(JLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Shape;)V

    return-void
.end method

.method private final drawOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 11

    .line 165
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:Landroidx/compose/ui/geometry/Size;

    invoke-static {v0, v1, v2}, Landroidx/compose/ui/geometry/Size;->equals-impl(JLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    iget-object v1, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 166
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 168
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Landroidx/compose/ui/graphics/Shape;->createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;

    move-result-object v0

    :goto_0
    iget-wide v1, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 170
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v3, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3c

    const/4 v10, 0x0

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v10}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-wDX37Ww$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v3, :cond_2

    iget v4, p0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x38

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, v0

    .line 171
    invoke-static/range {v1 .. v9}, Landroidx/compose/ui/graphics/OutlineKt;->drawOutline-hn5TExg$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastOutline:Landroidx/compose/ui/graphics/Outline;

    .line 173
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->lastSize:Landroidx/compose/ui/geometry/Size;

    .line 174
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->lastLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->lastShape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method

.method private final drawRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 27

    move-object/from16 v0, p0

    iget-wide v1, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    .line 159
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v3, v0, Landroidx/compose/foundation/BackgroundNode;->color:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7e

    const/4 v14, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawRect-n-J9OG0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_0
    iget-object v1, v0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    if-eqz v1, :cond_1

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    iget v2, v0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x76

    const/16 v26, 0x0

    move-object/from16 v15, p1

    move-object/from16 v16, v1

    move/from16 v21, v2

    .line 160
    invoke-static/range {v15 .. v26}, Landroidx/compose/ui/graphics/drawscope/DrawScope$-CC;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    .line 149
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 151
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->drawRect(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/foundation/BackgroundNode;->drawOutline(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 155
    :goto_0
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    return-void
.end method

.method public synthetic onMeasureResultChanged()V
    .locals 0

    .line 0
    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNode$-CC;->$default$onMeasureResultChanged(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/foundation/BackgroundNode;->alpha:F

    return-void
.end method

.method public final setBrush(Landroidx/compose/ui/graphics/Brush;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->brush:Landroidx/compose/ui/graphics/Brush;

    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/foundation/BackgroundNode;->color:J

    return-void
.end method

.method public final setShape(Landroidx/compose/ui/graphics/Shape;)V
    .locals 1

    .line 0
    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/BackgroundNode;->shape:Landroidx/compose/ui/graphics/Shape;

    return-void
.end method
