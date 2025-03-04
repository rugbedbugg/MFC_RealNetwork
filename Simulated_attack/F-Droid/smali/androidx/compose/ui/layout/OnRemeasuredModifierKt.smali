.class public abstract Landroidx/compose/ui/layout/OnRemeasuredModifierKt;
.super Ljava/lang/Object;
.source "OnRemeasuredModifier.kt"


# direct methods
.method public static final onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSizeChanged"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroidx/compose/ui/layout/OnSizeChangedModifier;

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/compose/ui/layout/OnRemeasuredModifierKt$onSizeChanged$$inlined$debugInspectorInfo$1;

    invoke-direct {v1, p1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt$onSizeChanged$$inlined$debugInspectorInfo$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 48
    :goto_0
    invoke-direct {v0, p1, v1}, Landroidx/compose/ui/layout/OnSizeChangedModifier;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 47
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
