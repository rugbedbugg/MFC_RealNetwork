.class public abstract Lcom/bumptech/glide/integration/compose/GlideImageKt;
.super Ljava/lang/Object;
.source "GlideImage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/integration/compose/GlideImageKt$WhenMappings;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field private static final DisplayedDrawableKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final displayedDrawable$delegate:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Lkotlin/reflect/KProperty;

    .line 363
    new-instance v2, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v3, "displayedDrawable"

    const-string v4, "getDisplayedDrawable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Landroidx/compose/runtime/MutableState;"

    const-class v5, Lcom/bumptech/glide/integration/compose/GlideImageKt;

    invoke-direct {v2, v5, v3, v4, v0}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/bumptech/glide/integration/compose/GlideImageKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    .line 362
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "DisplayedDrawable"

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bumptech/glide/integration/compose/GlideImageKt;->DisplayedDrawableKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sput-object v0, Lcom/bumptech/glide/integration/compose/GlideImageKt;->displayedDrawable$delegate:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-void
.end method

.method public static final GlideImage(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lcom/bumptech/glide/integration/compose/Placeholder;Lcom/bumptech/glide/integration/compose/Placeholder;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 25

    move/from16 v12, p12

    const v0, -0x1d935b90

    move-object/from16 v1, p10

    .line 106
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    and-int/lit8 v1, v12, 0x4

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    and-int/lit8 v1, v12, 0x8

    if-eqz v1, :cond_1

    .line 96
    sget-object v1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v1, v12, 0x10

    if-eqz v1, :cond_2

    .line 97
    sget-object v1, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v1, v12, 0x20

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    move v6, v1

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v1, v12, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    move-object v7, v2

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit16 v1, v12, 0x80

    if-eqz v1, :cond_5

    move-object v8, v2

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_6

    move-object v9, v2

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v12, 0x200

    if-eqz v1, :cond_7

    .line 105
    sget-object v1, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$1;->INSTANCE:Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$1;

    move-object v10, v1

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    const v1, 0x1cbd3613

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 107
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    check-cast v1, Landroid/content/Context;

    const v2, 0x44faf204

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 368
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v2, :cond_8

    .line 369
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v11, v2, :cond_9

    .line 107
    :cond_8
    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v11

    const-string v1, "with(it)"

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 107
    move-object v1, v11

    check-cast v1, Lcom/bumptech/glide/RequestManager;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const-string v2, "LocalContext.current.let\u2026(it) { Glide.with(it) } }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    shr-int/lit8 v2, p11, 0x15

    and-int/lit16 v2, v2, 0x380

    or-int/lit8 v2, v2, 0x48

    shr-int/lit8 v11, p11, 0x3

    and-int/lit16 v13, v11, 0x1c00

    or-int/2addr v2, v13

    move-object/from16 p2, p0

    move-object/from16 p3, v1

    move-object/from16 p4, v10

    move-object/from16 p5, v5

    move-object/from16 p6, v0

    move/from16 p7, v2

    .line 109
    invoke-static/range {p2 .. p7}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->rememberRequestBuilderWithDefaults(Ljava/lang/Object;Lcom/bumptech/glide/RequestManager;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v13

    .line 113
    invoke-static {v13}, Lcom/bumptech/glide/integration/compose/SizesKt;->overrideSize(Lcom/bumptech/glide/RequestBuilder;)Lcom/bumptech/glide/integration/ktx/Size;

    move-result-object v1

    and-int/lit8 v2, v11, 0x70

    or-int/lit8 v2, v2, 0x8

    .line 114
    invoke-static {v1, v3, v0, v2}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->rememberSizeAndModifier(Lcom/bumptech/glide/integration/ktx/Size;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/integration/compose/SizeAndModifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/compose/SizeAndModifier;->component1()Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    move-result-object v14

    invoke-virtual {v1}, Lcom/bumptech/glide/integration/compose/SizeAndModifier;->component2()Landroidx/compose/ui/Modifier;

    move-result-object v15

    const v1, 0x1cbd388f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 119
    invoke-static {}, Landroidx/compose/ui/platform/InspectionModeKt;->getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 76
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 119
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 121
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v21, 0x0

    const/16 v22, 0x0

    shl-int/lit8 v1, p11, 0x6

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x48

    shl-int/lit8 v2, p11, 0x3

    const v11, 0xe000

    and-int/2addr v11, v2

    or-int/2addr v1, v11

    const/high16 v11, 0x70000

    and-int/2addr v11, v2

    or-int/2addr v1, v11

    const/high16 v11, 0x380000

    and-int/2addr v11, v2

    or-int/2addr v1, v11

    const/high16 v11, 0x1c00000

    and-int/2addr v2, v11

    or-int v24, v1, v2

    move-object/from16 v16, p1

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v23, v0

    .line 124
    invoke-static/range {v13 .. v24}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v13

    if-nez v13, :cond_a

    goto :goto_8

    :cond_a
    new-instance v14, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lcom/bumptech/glide/integration/compose/Placeholder;Lcom/bumptech/glide/integration/compose/Placeholder;Lkotlin/jvm/functions/Function1;II)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_8
    return-void
.end method

.method private static final SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 22

    move-object/from16 v3, p2

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    const v0, -0x76015fb1

    move-object/from16 v1, p10

    .line 303
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    const/16 v1, 0x48

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    .line 308
    invoke-static {v2, v4, v0, v1}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->rememberGlidePainter(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/integration/compose/GlidePainter;

    move-result-object v12

    if-eqz v9, :cond_0

    .line 312
    invoke-virtual {v12}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getStatus$compose_release()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->showPlaceholder(Lcom/bumptech/glide/integration/ktx/Status;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, -0x4246c7df

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 v1, v11, 0x18

    and-int/lit8 v1, v1, 0xe

    .line 313
    invoke-static {v9, v3, v11, v0, v1}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->SizedGlideImage$boxed(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)V

    .line 312
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_0

    :cond_0
    if-eqz v10, :cond_1

    .line 314
    invoke-virtual {v12}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getStatus$compose_release()Lcom/bumptech/glide/integration/ktx/Status;

    move-result-object v1

    sget-object v5, Lcom/bumptech/glide/integration/ktx/Status;->FAILED:Lcom/bumptech/glide/integration/ktx/Status;

    if-ne v1, v5, :cond_1

    const v1, -0x4246c784

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 v1, v11, 0x1b

    and-int/lit8 v1, v1, 0xe

    .line 315
    invoke-static {v10, v3, v11, v0, v1}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->SizedGlideImage$boxed(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)V

    .line 314
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_0

    :cond_1
    const v1, -0x4246c765    # -0.09044f

    .line 316
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 324
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const v5, 0x44faf204

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 394
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2

    .line 395
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_3

    .line 324
    :cond_2
    new-instance v6, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$1$1;

    invoke-direct {v6, v12}, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$1$1;-><init>(Lcom/bumptech/glide/integration/compose/GlidePainter;)V

    .line 397
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 36
    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 324
    invoke-static {v1, v8, v6, v5, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-interface {v3, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    shr-int/lit8 v1, v11, 0x6

    and-int/lit8 v1, v1, 0x70

    shr-int/lit8 v5, v11, 0x3

    and-int/lit16 v6, v5, 0x1c00

    or-int/2addr v1, v6

    const v6, 0xe000

    and-int/2addr v6, v5

    or-int/2addr v1, v6

    const/high16 v6, 0x70000

    and-int/2addr v6, v5

    or-int/2addr v1, v6

    const/high16 v6, 0x380000

    and-int/2addr v5, v6

    or-int v20, v1, v5

    const/16 v21, 0x0

    move-object/from16 v13, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move-object/from16 v18, p7

    move-object/from16 v19, v0

    .line 317
    invoke-static/range {v12 .. v21}, Landroidx/compose/foundation/ImageKt;->Image(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    .line 316
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    :goto_0
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    new-instance v13, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;-><init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1
    return-void
.end method

.method private static final SizedGlideImage$boxed(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ILandroidx/compose/runtime/Composer;I)V
    .locals 8

    const v0, -0x384f3bed

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 p2, p2, 0x6

    and-int/lit8 p2, p2, 0xe

    const v0, 0x2bb5b5d7

    .line 305
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v0

    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 v2, v1, 0xe

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v1, v2

    const/4 v2, 0x0

    .line 71
    invoke-static {v0, v2, p3, v1}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    shl-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x70

    const v2, -0x4ee9b9da

    .line 72
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 76
    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 431
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 76
    invoke-interface {p3, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 431
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 432
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 76
    invoke-interface {p3, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 432
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 79
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v6

    .line 86
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lkotlin/jvm/functions/Function3;

    move-result-object p1

    shl-int/lit8 v1, v1, 0x9

    and-int/lit16 v1, v1, 0x1c00

    or-int/lit8 v1, v1, 0x6

    .line 442
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v7

    instance-of v7, v7, Landroidx/compose/runtime/Applier;

    if-nez v7, :cond_0

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 461
    :cond_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 444
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 463
    invoke-interface {p3, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 465
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 467
    :goto_0
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 468
    invoke-static {p3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v6

    .line 81
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v6, v0, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 437
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v6, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 83
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual {v5}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 469
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 452
    invoke-static {p3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x70

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v0, p3, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x7ab4aae9

    .line 453
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    shr-int/lit8 p1, v1, 0x9

    const v0, -0x7f65a980

    .line 472
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    and-int/lit8 p1, p1, 0xa

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 455
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 305
    :cond_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    .line 455
    :cond_3
    :goto_1
    sget-object p1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    shr-int/lit8 p1, p2, 0x6

    and-int/lit8 p1, p1, 0x70

    or-int/lit8 p1, p1, 0x6

    and-int/lit8 p1, p1, 0x51

    const/16 p2, 0x10

    if-ne p1, p2, :cond_4

    .line 305
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_4
    and-int/lit8 p1, p4, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 456
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 457
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 458
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 459
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 460
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-void
.end method

.method public static final synthetic access$SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p11}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$contentScaleTransform(Lcom/bumptech/glide/RequestBuilder;Landroidx/compose/ui/layout/ContentScale;)Lcom/bumptech/glide/RequestBuilder;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->contentScaleTransform(Lcom/bumptech/glide/RequestBuilder;Landroidx/compose/ui/layout/ContentScale;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sizeObservingModifier(Landroidx/compose/ui/Modifier;Lcom/bumptech/glide/integration/compose/SizeObserver;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->sizeObservingModifier(Landroidx/compose/ui/Modifier;Lcom/bumptech/glide/integration/compose/SizeObserver;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method private static final contentScaleTransform(Lcom/bumptech/glide/RequestBuilder;Landroidx/compose/ui/layout/ContentScale;)Lcom/bumptech/glide/RequestBuilder;
    .locals 2

    .line 272
    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->Companion:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->getCrop()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    const-string p1, "{\n      optionalCenterCrop()\n    }"

    .line 272
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    goto :goto_1

    .line 275
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->getInside()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/layout/ContentScale$Companion;->getFit()Landroidx/compose/ui/layout/ContentScale;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 281
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalCenterInside()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    const-string p1, "{\n      // Outside compo\u2026ionalCenterInside()\n    }"

    .line 276
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    :cond_2
    :goto_1
    return-object p0
.end method

.method private static final rememberGlidePainter(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/integration/compose/GlidePainter;
    .locals 3

    const p3, -0x24b79b6    # -2.9994788E37f

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const p3, 0x2e20b340

    .line 343
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const p3, -0x1d58f75c

    .line 403
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 405
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    .line 406
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne p3, v1, :cond_0

    .line 410
    sget-object p3, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {p3, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    .line 408
    new-instance v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v1, p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lkotlinx/coroutines/CoroutineScope;)V

    .line 411
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object p3, v1

    .line 25
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 403
    check-cast p3, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 414
    invoke-virtual {p3}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v1, 0x1e7b2b64

    .line 347
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 417
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    .line 418
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_2

    .line 347
    :cond_1
    new-instance v2, Lcom/bumptech/glide/integration/compose/GlidePainter;

    invoke-direct {v2, p0, p1, p3}, Lcom/bumptech/glide/integration/compose/GlidePainter;-><init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Lkotlinx/coroutines/CoroutineScope;)V

    .line 420
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 347
    check-cast v2, Lcom/bumptech/glide/integration/compose/GlidePainter;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v2
.end method

.method private static final rememberRequestBuilderWithDefaults(Ljava/lang/Object;Lcom/bumptech/glide/RequestManager;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/RequestBuilder;
    .locals 4

    const p5, 0x68ff4c21

    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 p5, 0x4

    new-array v0, p5, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    aput-object p3, v0, v2

    const v2, -0x21de6e89

    .line 264
    invoke-interface {p4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move v2, v1

    :goto_0
    if-ge v1, p5, :cond_0

    .line 84
    aget-object v3, v0, v1

    invoke-interface {p4, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 387
    :cond_0
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p5

    if-nez v2, :cond_1

    .line 388
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne p5, v0, :cond_2

    .line 265
    :cond_1
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    const-string p1, "requestManager.load(model)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p3}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->access$contentScaleTransform(Lcom/bumptech/glide/RequestBuilder;Landroidx/compose/ui/layout/ContentScale;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p5, p0

    check-cast p5, Lcom/bumptech/glide/RequestBuilder;

    .line 390
    invoke-interface {p4, p5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    :cond_2
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 264
    check-cast p5, Lcom/bumptech/glide/RequestBuilder;

    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p5
.end method

.method private static final rememberSizeAndModifier(Lcom/bumptech/glide/integration/ktx/Size;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/integration/compose/SizeAndModifier;
    .locals 2

    const p3, -0x700bc87b

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const p3, 0x1e7b2b64

    .line 245
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {p2, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p3, v0

    .line 378
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v0

    if-nez p3, :cond_0

    .line 379
    sget-object p3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p3

    if-ne v0, p3, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    .line 247
    new-instance p3, Lcom/bumptech/glide/integration/compose/SizeAndModifier;

    new-instance v0, Lcom/bumptech/glide/integration/ktx/ImmediateGlideSize;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/integration/ktx/ImmediateGlideSize;-><init>(Lcom/bumptech/glide/integration/ktx/Size;)V

    invoke-direct {p3, v0, p1}, Lcom/bumptech/glide/integration/compose/SizeAndModifier;-><init>(Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;)V

    :goto_0
    move-object v0, p3

    goto :goto_1

    .line 249
    :cond_1
    new-instance p0, Lcom/bumptech/glide/integration/compose/SizeObserver;

    invoke-direct {p0}, Lcom/bumptech/glide/integration/compose/SizeObserver;-><init>()V

    .line 250
    new-instance p3, Lcom/bumptech/glide/integration/compose/SizeAndModifier;

    .line 251
    new-instance v0, Lcom/bumptech/glide/integration/ktx/AsyncGlideSize;

    new-instance v1, Lcom/bumptech/glide/integration/compose/GlideImageKt$rememberSizeAndModifier$1$1;

    invoke-direct {v1, p0}, Lcom/bumptech/glide/integration/compose/GlideImageKt$rememberSizeAndModifier$1$1;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/ktx/AsyncGlideSize;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 252
    invoke-static {p1, p0}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->access$sizeObservingModifier(Landroidx/compose/ui/Modifier;Lcom/bumptech/glide/integration/compose/SizeObserver;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    .line 250
    invoke-direct {p3, v0, p0}, Lcom/bumptech/glide/integration/compose/SizeAndModifier;-><init>(Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;)V

    goto :goto_0

    .line 381
    :goto_1
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 245
    check-cast v0, Lcom/bumptech/glide/integration/compose/SizeAndModifier;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v0
.end method

.method public static final setDisplayedDrawable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/runtime/MutableState;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/bumptech/glide/integration/compose/GlideImageKt;->displayedDrawable$delegate:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    sget-object v1, Lcom/bumptech/glide/integration/compose/GlideImageKt;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    .line 363
    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;->setValue(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private static final showPlaceholder(Lcom/bumptech/glide/integration/ktx/Status;)Z
    .locals 2

    .line 331
    sget-object v0, Lcom/bumptech/glide/integration/compose/GlideImageKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private static final sizeObservingModifier(Landroidx/compose/ui/Modifier;Lcom/bumptech/glide/integration/compose/SizeObserver;)Landroidx/compose/ui/Modifier;
    .locals 1

    .line 352
    new-instance v0, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1;-><init>(Lcom/bumptech/glide/integration/compose/SizeObserver;)V

    invoke-static {p0, v0}, Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
