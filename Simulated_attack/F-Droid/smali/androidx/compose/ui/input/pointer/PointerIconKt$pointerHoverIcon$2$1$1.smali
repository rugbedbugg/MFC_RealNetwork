.class final Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerIcon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $icon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field final synthetic $onSetIcon:Lkotlin/jvm/functions/Function1;

.field final synthetic $overrideDescendants:Z

.field final synthetic $pointerIconModifierLocal:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$pointerIconModifierLocal:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iput-boolean p3, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$overrideDescendants:Z

    iput-object p4, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$onSetIcon:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$pointerIconModifierLocal:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iget-boolean v2, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$overrideDescendants:Z

    iget-object v3, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$onSetIcon:Lkotlin/jvm/functions/Function1;

    .line 102
    invoke-virtual {v0, v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->updateValues(Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
