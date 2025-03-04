.class public abstract Landroidx/compose/material/InteractiveComponentSizeKt;
.super Ljava/lang/Object;
.source "InteractiveComponentSize.kt"


# static fields
.field private static final LocalMinimumInteractiveComponentEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field private static final minimumInteractiveComponentSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;->INSTANCE:Landroidx/compose/material/InteractiveComponentSizeKt$LocalMinimumInteractiveComponentEnforcement$1;

    .line 75
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    sput-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->LocalMinimumTouchTargetEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    const/16 v0, 0x30

    int-to-float v0, v0

    .line 154
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    .line 127
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/material/InteractiveComponentSizeKt;->minimumInteractiveComponentSize:J

    return-void
.end method

.method public static final synthetic access$getMinimumInteractiveComponentSize$p()J
    .locals 2

    .line 0
    sget-wide v0, Landroidx/compose/material/InteractiveComponentSizeKt;->minimumInteractiveComponentSize:J

    return-wide v0
.end method

.method public static final getLocalMinimumInteractiveComponentEnforcement()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/InteractiveComponentSizeKt;->LocalMinimumInteractiveComponentEnforcement:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method

.method public static final minimumInteractiveComponentSize(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/material/InteractiveComponentSizeKt$minimumInteractiveComponentSize$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/material/InteractiveComponentSizeKt$minimumInteractiveComponentSize$$inlined$debugInspectorInfo$1;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    :goto_0
    sget-object v1, Landroidx/compose/material/InteractiveComponentSizeKt$minimumInteractiveComponentSize$2;->INSTANCE:Landroidx/compose/material/InteractiveComponentSizeKt$minimumInteractiveComponentSize$2;

    .line 47
    invoke-static {p0, v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
