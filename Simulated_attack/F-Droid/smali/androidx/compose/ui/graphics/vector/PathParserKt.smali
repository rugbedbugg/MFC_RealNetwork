.class public abstract Landroidx/compose/ui/graphics/vector/PathParserKt;
.super Ljava/lang/Object;
.source "PathParser.kt"


# static fields
.field private static final EmptyArray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [F

    sput-object v0, Landroidx/compose/ui/graphics/vector/PathParserKt;->EmptyArray:[F

    return-void
.end method

.method public static final toPath(Ljava/util/List;Landroidx/compose/ui/graphics/Path;)Landroidx/compose/ui/graphics/Path;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "target"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->getFillType-Rg-k1Os()I

    move-result v1

    .line 161
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->rewind()V

    .line 162
    invoke-interface {v8, v1}, Landroidx/compose/ui/graphics/Path;->setFillType-oQ8Xj4U(I)V

    .line 173
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 34
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v2

    move v2, v10

    move v3, v2

    move v12, v3

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_1
    if-ge v11, v9, :cond_f

    .line 35
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 36
    move-object v7, v4

    check-cast v7, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 176
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$Close;

    if-eqz v4, :cond_1

    .line 181
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/graphics/Path;->close()V

    .line 182
    invoke-interface {v8, v12, v13}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    move-object v10, v7

    move v2, v12

    move v14, v2

    move v3, v13

    move v15, v3

    goto/16 :goto_9

    .line 193
    :cond_1
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    if-eqz v4, :cond_2

    .line 194
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    move-result v12

    .line 195
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    move-result v13

    .line 196
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;->getY()F

    move-result v1

    invoke-interface {v8, v4, v1}, Landroidx/compose/ui/graphics/Path;->moveTo(FF)V

    move-object v10, v7

    move v14, v12

    move v15, v13

    goto/16 :goto_9

    .line 201
    :cond_2
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    if-eqz v4, :cond_3

    .line 202
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    move-result v5

    invoke-interface {v8, v4, v5}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 203
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDx()F

    move-result v4

    add-float/2addr v14, v4

    .line 204
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;->getDy()F

    move-result v1

    :goto_2
    add-float/2addr v15, v1

    :goto_3
    move-object v10, v7

    goto/16 :goto_9

    .line 207
    :cond_3
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    if-eqz v4, :cond_4

    .line 208
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    move-result v4

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    move-result v5

    invoke-interface {v8, v4, v5}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 209
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getX()F

    move-result v4

    .line 210
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;->getY()F

    move-result v1

    move v15, v1

    move v14, v4

    goto :goto_3

    .line 213
    :cond_4
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    if-eqz v4, :cond_5

    .line 214
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    move-result v4

    invoke-interface {v8, v4, v10}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 215
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;->getDx()F

    move-result v1

    add-float/2addr v14, v1

    goto :goto_3

    .line 218
    :cond_5
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    if-eqz v4, :cond_6

    .line 219
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    move-result v4

    invoke-interface {v8, v4, v15}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 220
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;->getX()F

    move-result v1

    move v14, v1

    goto :goto_3

    .line 223
    :cond_6
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    if-eqz v4, :cond_7

    .line 224
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    move-result v4

    invoke-interface {v8, v10, v4}, Landroidx/compose/ui/graphics/Path;->relativeLineTo(FF)V

    .line 225
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;->getDy()F

    move-result v1

    goto :goto_2

    .line 228
    :cond_7
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    if-eqz v4, :cond_8

    .line 229
    move-object v1, v7

    check-cast v1, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    move-result v4

    invoke-interface {v8, v14, v4}, Landroidx/compose/ui/graphics/Path;->lineTo(FF)V

    .line 230
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;->getY()F

    move-result v1

    move v15, v1

    goto :goto_3

    .line 233
    :cond_8
    instance-of v4, v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    if-eqz v4, :cond_9

    .line 235
    move-object/from16 v16, v7

    check-cast v16, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx1()F

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy1()F

    move-result v3

    .line 236
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    move-result v5

    .line 237
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    move-result v17

    move-object/from16 v1, p1

    move-object v10, v7

    move/from16 v7, v17

    .line 234
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    .line 239
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx2()F

    move-result v1

    add-float/2addr v1, v14

    .line 240
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy2()F

    move-result v2

    add-float/2addr v2, v15

    .line 241
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDx3()F

    move-result v3

    add-float/2addr v14, v3

    .line 242
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;->getDy3()F

    move-result v3

    :goto_4
    add-float/2addr v15, v3

    :goto_5
    move v3, v2

    move v2, v1

    goto/16 :goto_9

    :cond_9
    move-object v10, v7

    .line 245
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    if-eqz v4, :cond_a

    .line 247
    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX1()F

    move-result v2

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY1()F

    move-result v3

    .line 248
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    move-result v4

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    move-result v5

    .line 249
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    move-result v7

    move-object/from16 v1, p1

    .line 246
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 251
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX2()F

    move-result v1

    .line 252
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY2()F

    move-result v2

    .line 253
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getX3()F

    move-result v3

    .line 254
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;->getY3()F

    move-result v4

    :goto_6
    move v14, v3

    move v15, v4

    goto :goto_5

    .line 257
    :cond_a
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    if-eqz v4, :cond_c

    .line 258
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    move-result v1

    if-eqz v1, :cond_b

    sub-float v1, v14, v2

    sub-float v2, v15, v3

    move v3, v2

    move v2, v1

    goto :goto_7

    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 267
    :goto_7
    move-object/from16 v16, v10

    check-cast v16, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    move-result v4

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    move-result v5

    .line 268
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    move-result v7

    move-object/from16 v1, p1

    .line 265
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->relativeCubicTo(FFFFFF)V

    .line 270
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx1()F

    move-result v1

    add-float/2addr v1, v14

    .line 271
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy1()F

    move-result v2

    add-float/2addr v2, v15

    .line 272
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDx2()F

    move-result v3

    add-float/2addr v14, v3

    .line 273
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;->getDy2()F

    move-result v3

    goto :goto_4

    .line 276
    :cond_c
    instance-of v4, v10, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    if-eqz v4, :cond_e

    .line 277
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathNode;->isCurve()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v14, v1

    sub-float/2addr v14, v2

    mul-float/2addr v1, v15

    sub-float/2addr v1, v3

    move v3, v1

    move v2, v14

    goto :goto_8

    :cond_d
    move v2, v14

    move v3, v15

    .line 286
    :goto_8
    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    move-result v4

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    move-result v5

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    move-result v6

    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    move-result v7

    move-object/from16 v1, p1

    .line 284
    invoke-interface/range {v1 .. v7}, Landroidx/compose/ui/graphics/Path;->cubicTo(FFFFFF)V

    .line 288
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX1()F

    move-result v1

    .line 289
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY1()F

    move-result v2

    .line 290
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getX2()F

    move-result v3

    .line 291
    invoke-virtual {v14}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->getY2()F

    move-result v4

    goto/16 :goto_6

    :cond_e
    :goto_9
    add-int/lit8 v11, v11, 0x1

    move-object v1, v10

    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_f
    return-object v8
.end method
