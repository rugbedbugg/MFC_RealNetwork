.class final Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Menu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$dirty:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $enabled:Z

.field final synthetic $this_Row:Landroidx/compose/foundation/layout/RowScope;


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/RowScope;II)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$enabled:Z

    iput-object p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$content:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iput p4, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$changed:I

    iput p5, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 165
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 165
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.DropdownMenuItemContent.<anonymous>.<anonymous> (Menu.kt:163)"

    const v2, 0x46f56d98

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-boolean p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$enabled:Z

    const/4 v0, 0x6

    if-eqz p2, :cond_3

    const p2, -0x73f8f448

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget-object p2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result p2

    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_2

    :cond_3
    const p2, -0x73f8f431

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget-object p2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result p2

    goto :goto_1

    :goto_2
    const/4 v0, 0x1

    new-array v1, v0, [Landroidx/compose/runtime/ProvidedValue;

    .line 166
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    new-instance p2, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1$1;

    iget-object v2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$content:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iget v4, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$changed:I

    iget v5, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty:I

    invoke-direct {p2, v2, v3, v4, v5}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/RowScope;II)V

    const v2, -0x65af6da8

    invoke-static {p1, v2, v0, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p2

    const/16 v0, 0x38

    invoke-static {v1, p2, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_3
    return-void
.end method
