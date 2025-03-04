.class final Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenu-4kj-_NE(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/foundation/ScrollState;Landroidx/compose/ui/window/PopupProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;

.field final synthetic $expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scrollState:Landroidx/compose/foundation/ScrollState;

.field final synthetic $transformOriginState:Landroidx/compose/runtime/MutableState;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

    iput-object p2, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iput-object p4, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p5, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$content:Lkotlin/jvm/functions/Function3;

    iput p6, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 173
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 174
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 174
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material.DropdownMenu.<anonymous> (AndroidMenu.android.kt:172)"

    const v2, -0x2d96d82

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

    iget-object v4, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    iget-object v5, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$scrollState:Landroidx/compose/foundation/ScrollState;

    iget-object v6, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v7, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$content:Lkotlin/jvm/functions/Function3;

    .line 179
    sget p2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    or-int/lit8 p2, p2, 0x30

    iget v0, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$2;->$$dirty:I

    shr-int/lit8 v1, v0, 0x6

    and-int/lit16 v1, v1, 0x380

    or-int/2addr p2, v1

    shl-int/lit8 v1, v0, 0x3

    and-int/lit16 v1, v1, 0x1c00

    or-int/2addr p2, v1

    const v1, 0xe000

    shr-int/lit8 v0, v0, 0x6

    and-int/2addr v0, v1

    or-int v9, p2, v0

    const/4 v10, 0x0

    move-object v8, p1

    .line 174
    invoke-static/range {v3 .. v10}, Landroidx/compose/material/MenuKt;->DropdownMenuContent(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/foundation/ScrollState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
