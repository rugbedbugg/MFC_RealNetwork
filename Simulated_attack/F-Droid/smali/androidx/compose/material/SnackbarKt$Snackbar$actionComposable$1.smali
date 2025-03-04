.class final Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Snackbar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt;->Snackbar-sPrSdHI(Landroidx/compose/material/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJFLandroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $actionColor:J

.field final synthetic $actionLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(JILandroidx/compose/material/SnackbarData;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-wide p1, p0, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->$actionColor:J

    iput p3, p0, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->$$dirty:I

    iput-object p5, p0, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->$actionLabel:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 164
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 165
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 165
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material.Snackbar.<anonymous> (Snackbar.kt:163)"

    const v4, 0x6de142b0

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 166
    :cond_2
    sget-object v5, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    const-wide/16 v6, 0x0

    iget-wide v8, v0, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->$actionColor:J

    const-wide/16 v10, 0x0

    iget v1, v0, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->$$dirty:I

    shr-int/lit8 v1, v1, 0xf

    and-int/lit8 v1, v1, 0x70

    or-int/lit16 v13, v1, 0xc00

    const/4 v14, 0x5

    move-object/from16 v12, p1

    invoke-virtual/range {v5 .. v14}, Landroidx/compose/material/ButtonDefaults;->textButtonColors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;

    move-result-object v22

    .line 165
    new-instance v15, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1$1;

    const/4 v1, 0x0

    invoke-direct {v15, v1}, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1$1;-><init>(Landroidx/compose/material/SnackbarData;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    .line 168
    new-instance v1, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1$2;

    iget-object v2, v0, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1;->$actionLabel:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/compose/material/SnackbarKt$Snackbar$actionComposable$1$2;-><init>(Ljava/lang/String;)V

    const v2, -0x3761b3ed

    const/4 v3, 0x1

    move-object/from16 v4, p1

    invoke-static {v4, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v24

    const/high16 v26, 0x30000000

    const/16 v27, 0x17e

    move-object/from16 v25, p1

    .line 165
    invoke-static/range {v15 .. v27}, Landroidx/compose/material/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
