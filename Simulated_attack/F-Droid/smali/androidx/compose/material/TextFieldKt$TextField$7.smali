.class final Landroidx/compose/material/TextFieldKt$TextField$7;
.super Lkotlin/jvm/internal/Lambda;
.source "TextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldKt;->TextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $label:Lkotlin/jvm/functions/Function2;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $singleLine:Z

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/TextFieldColors;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iput-boolean p2, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$enabled:Z

    iput-boolean p3, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$singleLine:Z

    iput-object p4, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iput-object p5, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p6, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$isError:Z

    iput-object p7, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$label:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$colors:Landroidx/compose/material/TextFieldColors;

    iput p12, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$$dirty:I

    iput p13, p0, Landroidx/compose/material/TextFieldKt$TextField$7;->$$dirty1:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 398
    check-cast p1, Lkotlin/jvm/functions/Function2;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TextFieldKt$TextField$7;->invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    const-string v1, "innerTextField"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, p3, 0xe

    move-object/from16 v15, p2

    if-nez v1, :cond_1

    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changedInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int v1, p3, v1

    move v14, v1

    goto :goto_1

    :cond_1
    move/from16 v14, p3

    :goto_1
    and-int/lit8 v1, v14, 0x5b

    const/16 v2, 0x12

    if-ne v1, v2, :cond_3

    .line 400
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 413
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_3

    .line 400
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material.TextField.<anonymous> (TextField.kt:397)"

    const v4, -0x78c634b

    invoke-static {v4, v14, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    sget-object v1, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    iget-object v2, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 401
    invoke-virtual {v2}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$enabled:Z

    iget-boolean v5, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$singleLine:Z

    iget-object v6, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v7, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-boolean v8, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$isError:Z

    iget-object v9, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v12, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v13, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$colors:Landroidx/compose/material/TextFieldColors;

    const/16 v16, 0x0

    move/from16 v17, v14

    move-object/from16 v14, v16

    shl-int/lit8 v16, v17, 0x3

    and-int/lit8 v16, v16, 0x70

    iget v14, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$$dirty:I

    shr-int/lit8 v3, v14, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int v3, v16, v3

    iget v15, v0, Landroidx/compose/material/TextFieldKt$TextField$7;->$$dirty1:I

    shr-int/lit8 v0, v15, 0x3

    and-int/lit16 v0, v0, 0x1c00

    or-int/2addr v0, v3

    shl-int/lit8 v3, v15, 0x9

    const v16, 0xe000

    and-int v3, v3, v16

    or-int/2addr v0, v3

    shr-int/lit8 v3, v15, 0x6

    const/high16 v16, 0x70000

    and-int v3, v3, v16

    or-int/2addr v0, v3

    shl-int/lit8 v3, v15, 0x12

    const/high16 v16, 0x380000

    and-int v3, v3, v16

    or-int/2addr v0, v3

    shl-int/lit8 v3, v14, 0x3

    const/high16 v16, 0x1c00000

    and-int v3, v3, v16

    or-int/2addr v0, v3

    shl-int/lit8 v3, v14, 0x3

    const/high16 v16, 0xe000000

    and-int v3, v3, v16

    or-int/2addr v0, v3

    shl-int/lit8 v3, v14, 0x3

    const/high16 v16, 0x70000000

    and-int v3, v3, v16

    or-int v16, v0, v3

    shr-int/lit8 v0, v14, 0x1b

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xc00

    shr-int/lit8 v3, v15, 0x18

    and-int/lit8 v3, v3, 0x70

    or-int v17, v0, v3

    const/16 v18, 0x1000

    move-object/from16 v3, p1

    move-object/from16 v15, p2

    const/4 v14, 0x0

    .line 400
    invoke-virtual/range {v1 .. v18}, Landroidx/compose/material/TextFieldDefaults;->TextFieldDecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_3
    return-void
.end method
