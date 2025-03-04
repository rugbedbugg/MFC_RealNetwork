.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$WhenMappings;
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $border:Lkotlin/jvm/functions/Function2;

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $enabled:Z

.field final synthetic $innerTextField:Lkotlin/jvm/functions/Function2;

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Lkotlin/jvm/functions/Function2;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $shouldOverrideTextStyleColor:Z

.field final synthetic $singleLine:Z

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $transformedText:Ljava/lang/String;

.field final synthetic $type:Landroidx/compose/material/TextFieldType;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Ljava/lang/String;ZILandroidx/compose/material/TextFieldColors;ZLandroidx/compose/foundation/interaction/InteractionSource;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/TextFieldType;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/foundation/layout/PaddingValues;ZLkotlin/jvm/functions/Function2;)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$label:Lkotlin/jvm/functions/Function2;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$transformedText:Ljava/lang/String;

    move v1, p4

    iput-boolean v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$isError:Z

    move v1, p5

    iput v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$colors:Landroidx/compose/material/TextFieldColors;

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$enabled:Z

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    move v1, p9

    iput v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty:I

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$type:Landroidx/compose/material/TextFieldType;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$innerTextField:Lkotlin/jvm/functions/Function2;

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$singleLine:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$shouldOverrideTextStyleColor:Z

    move-object/from16 v1, p17

    iput-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$border:Lkotlin/jvm/functions/Function2;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 119
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    check-cast p2, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v2

    check-cast p3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result v6

    move-object v7, p5

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p6, Ljava/lang/Number;

    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->invoke-RIQooxk(FJJFLandroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke-RIQooxk(FJJFLandroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p6

    move-object/from16 v15, p7

    move/from16 v1, p8

    and-int/lit8 v2, v1, 0xe

    if-nez v2, :cond_1

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v3, v1, 0x70

    move-wide/from16 v8, p2

    if-nez v3, :cond_3

    invoke-interface {v15, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v3, v1, 0x380

    if-nez v3, :cond_5

    move-wide/from16 v3, p4

    invoke-interface {v15, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x100

    goto :goto_3

    :cond_4
    const/16 v5, 0x80

    :goto_3
    or-int/2addr v2, v5

    goto :goto_4

    :cond_5
    move-wide/from16 v3, p4

    :goto_4
    and-int/lit16 v1, v1, 0x1c00

    if-nez v1, :cond_7

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x800

    goto :goto_5

    :cond_6
    const/16 v1, 0x400

    :goto_5
    or-int/2addr v2, v1

    :cond_7
    move v13, v2

    const v1, 0xb6db

    and-int/2addr v1, v13

    const/16 v2, 0x2492

    if-ne v1, v2, :cond_9

    .line 121
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_6

    .line 225
    :cond_8
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_c

    .line 121
    :cond_9
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.CommonDecorationBox.<anonymous> (TextFieldImpl.kt:118)"

    const v5, 0x146073d8

    invoke-static {v5, v13, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_a
    iget-object v5, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$label:Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x1

    if-eqz v5, :cond_b

    iget-boolean v6, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$shouldOverrideTextStyleColor:Z

    .line 122
    new-instance v2, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;

    move-object v1, v2

    move-object v12, v2

    move/from16 v2, p1

    move-wide/from16 v3, p4

    move/from16 v17, v6

    move v6, v13

    move v14, v7

    move/from16 v7, v17

    move-wide/from16 v8, p2

    invoke-direct/range {v1 .. v9}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1;-><init>(FJLkotlin/jvm/functions/Function2;IZJ)V

    const v1, 0x15a0dc9e

    invoke-static {v15, v1, v14, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v8, v1

    goto :goto_7

    :cond_b
    move v14, v7

    const/4 v8, 0x0

    :goto_7
    iget-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$transformedText:Ljava/lang/String;

    .line 137
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    cmpl-float v1, v11, v1

    if-lez v1, :cond_c

    .line 138
    new-instance v9, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;

    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$colors:Landroidx/compose/material/TextFieldColors;

    iget-boolean v4, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$enabled:Z

    iget v5, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty:I

    iget v6, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    iget-object v7, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, v9

    move/from16 v2, p6

    invoke-direct/range {v1 .. v7}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1;-><init>(FLandroidx/compose/material/TextFieldColors;ZIILkotlin/jvm/functions/Function2;)V

    const v1, 0x42ca46ca

    invoke-static {v15, v1, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    move-object v4, v1

    goto :goto_8

    :cond_c
    const/4 v4, 0x0

    .line 152
    :goto_8
    sget-object v1, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    invoke-virtual {v1}, Landroidx/compose/material/Strings$Companion;->getDefaultErrorMessage-UdPEhr4()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v1, v15, v2}, Landroidx/compose/material/Strings_androidKt;->getString-4foXLRw(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 153
    sget-object v3, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    iget-boolean v5, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$isError:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$isError:Z

    const v7, 0x1e7b2b64

    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v5, v9

    .line 1097
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_d

    .line 1098
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v9, v5, :cond_e

    .line 153
    :cond_d
    new-instance v9, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decorationBoxModifier$1$1;

    invoke-direct {v9, v6, v1}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decorationBoxModifier$1$1;-><init>(ZLjava/lang/String;)V

    .line 1100
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_e
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    check-cast v9, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 153
    invoke-static {v3, v1, v9, v14, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v3, -0x409048a5

    .line 157
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$colors:Landroidx/compose/material/TextFieldColors;

    iget-boolean v5, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$enabled:Z

    iget-boolean v6, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$isError:Z

    iget v9, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty:I

    shr-int/lit8 v9, v9, 0x1b

    and-int/lit8 v9, v9, 0xe

    iget v11, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    shl-int/lit8 v12, v11, 0x3

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v9, v12

    shr-int/lit8 v11, v11, 0x3

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v9, v11

    .line 158
    invoke-interface {v3, v5, v6, v15, v9}, Landroidx/compose/material/TextFieldColors;->leadingIconColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 157
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v5

    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    if-eqz v3, :cond_f

    .line 161
    new-instance v9, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1;

    invoke-direct {v9, v5, v6, v3}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedLeading$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v3, 0x59b977f0

    invoke-static {v15, v3, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v5, v3

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    const v3, -0x409046ea

    .line 168
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$colors:Landroidx/compose/material/TextFieldColors;

    iget-boolean v6, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$enabled:Z

    iget-boolean v9, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$isError:Z

    iget v11, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty:I

    shr-int/lit8 v11, v11, 0x1b

    and-int/lit8 v11, v11, 0xe

    iget v12, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    shl-int/lit8 v17, v12, 0x3

    and-int/lit8 v17, v17, 0x70

    or-int v11, v11, v17

    shr-int/lit8 v12, v12, 0x3

    and-int/lit16 v12, v12, 0x380

    or-int/2addr v11, v12

    .line 169
    invoke-interface {v3, v6, v9, v15, v11}, Landroidx/compose/material/TextFieldColors;->trailingIconColor(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 168
    check-cast v3, Landroidx/compose/ui/graphics/Color;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    move-result-wide v11

    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    if-eqz v3, :cond_10

    .line 172
    new-instance v6, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;

    invoke-direct {v6, v11, v12, v3}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$decoratedTrailing$1$1;-><init>(JLkotlin/jvm/functions/Function2;)V

    const v3, -0x70ef3e1c

    invoke-static {v15, v3, v14, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    move-object v6, v3

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    iget-object v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$type:Landroidx/compose/material/TextFieldType;

    .line 177
    sget-object v9, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v9, v3

    if-eq v3, v14, :cond_15

    const/4 v12, 0x2

    if-eq v3, v12, :cond_11

    const v1, -0x40903d9f

    .line 225
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto/16 :goto_b

    :cond_11
    const v3, -0x4090436e

    .line 191
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v3, -0x1d58f75c

    .line 193
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1097
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    .line 1098
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v3, v9, :cond_12

    .line 193
    sget-object v3, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object v3

    const/4 v9, 0x2

    const/4 v11, 0x0

    invoke-static {v3, v11, v9, v11}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    .line 1100
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_12
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 193
    check-cast v3, Landroidx/compose/runtime/MutableState;

    .line 194
    new-instance v9, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;

    iget-object v11, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v2, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$border:Lkotlin/jvm/functions/Function2;

    iget v7, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    invoke-direct {v9, v3, v11, v2, v7}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$drawBorder$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;I)V

    const v2, 0x8568183

    invoke-static {v15, v2, v14, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v11

    iget-object v2, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$innerTextField:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$singleLine:Z

    .line 220
    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const v14, 0x1e7b2b64

    .line 211
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 50
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v9, v14

    .line 1097
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_13

    .line 1098
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v9

    if-ne v14, v9, :cond_14

    .line 211
    :cond_13
    new-instance v14, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$1$1;

    invoke-direct {v14, v10, v3}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3$1$1;-><init>(FLandroidx/compose/runtime/MutableState;)V

    .line 1100
    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    :cond_14
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v9, v14

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty:I

    shr-int/lit8 v14, v3, 0x3

    and-int/lit8 v14, v14, 0x70

    const/high16 v16, 0x30000000

    or-int v14, v14, v16

    const/16 v16, 0x6

    shr-int/lit8 v3, v3, 0x6

    const/high16 v17, 0x380000

    and-int v3, v3, v17

    or-int/2addr v3, v14

    shl-int/lit8 v13, v13, 0x15

    const/high16 v14, 0x1c00000

    and-int/2addr v13, v14

    or-int/2addr v13, v3

    iget v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v14, v3, 0xe

    move-object v3, v4

    move-object v4, v8

    move/from16 v8, p1

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, p7

    .line 203
    invoke-static/range {v1 .. v14}, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)V

    .line 191
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_b

    :cond_15
    const v2, -0x4090459a

    .line 178
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    iget-object v2, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$innerTextField:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$singleLine:Z

    iget-object v9, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget v3, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty:I

    shr-int/lit8 v11, v3, 0x3

    and-int/lit8 v11, v11, 0x70

    const/4 v12, 0x6

    shr-int/2addr v3, v12

    const/high16 v12, 0x380000

    and-int/2addr v3, v12

    or-int/2addr v3, v11

    shl-int/lit8 v11, v13, 0x15

    const/high16 v12, 0x1c00000

    and-int/2addr v11, v12

    or-int/2addr v3, v11

    iget v11, v0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$3;->$$dirty1:I

    shl-int/lit8 v11, v11, 0x12

    const/high16 v12, 0xe000000

    and-int/2addr v11, v12

    or-int/2addr v11, v3

    move-object v3, v8

    move/from16 v8, p1

    move-object/from16 v10, p7

    .line 179
    invoke-static/range {v1 .. v11}, Landroidx/compose/material/TextFieldKt;->TextFieldLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;I)V

    .line 178
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 225
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_16
    :goto_c
    return-void
.end method
