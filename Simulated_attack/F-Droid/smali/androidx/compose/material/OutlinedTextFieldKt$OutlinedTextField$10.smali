.class final Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

.field final synthetic $keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

.field final synthetic $label:Lkotlin/jvm/functions/Function2;

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $maxLines:I

.field final synthetic $minLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $readOnly:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $singleLine:Z

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;III)V
    .locals 2

    .line 0
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$onValueChange:Lkotlin/jvm/functions/Function1;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p4

    iput-boolean v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$enabled:Z

    move v1, p5

    iput-boolean v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$readOnly:Z

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$label:Lkotlin/jvm/functions/Function2;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move v1, p11

    iput-boolean v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$isError:Z

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    move/from16 v1, p15

    iput-boolean v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$singleLine:Z

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$maxLines:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$minLines:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v1, p19

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$colors:Landroidx/compose/material/TextFieldColors;

    move/from16 v1, p21

    iput v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$$changed:I

    move/from16 v1, p22

    iput v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$$changed1:I

    move/from16 v1, p23

    iput v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 25

    .line 0
    move-object/from16 v0, p0

    move-object/from16 v21, p1

    iget-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v2, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$onValueChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$enabled:Z

    iget-boolean v5, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$readOnly:Z

    iget-object v6, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    iget-object v7, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$label:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-boolean v11, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$isError:Z

    iget-object v12, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    iget-object v13, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$keyboardOptions:Landroidx/compose/foundation/text/KeyboardOptions;

    iget-object v14, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$keyboardActions:Landroidx/compose/foundation/text/KeyboardActions;

    iget-boolean v15, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$singleLine:Z

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$maxLines:I

    move/from16 v16, v1

    iget v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$minLines:I

    move/from16 v17, v1

    iget-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$colors:Landroidx/compose/material/TextFieldColors;

    move-object/from16 v20, v1

    iget v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v22

    iget v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v23

    iget v1, v0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$10;->$$default:I

    move/from16 v24, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v24}, Landroidx/compose/material/OutlinedTextFieldKt;->OutlinedTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZZLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material/TextFieldColors;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
