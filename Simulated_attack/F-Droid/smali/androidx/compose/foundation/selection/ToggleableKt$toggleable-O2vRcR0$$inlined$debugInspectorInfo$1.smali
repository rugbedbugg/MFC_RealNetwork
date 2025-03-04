.class public final Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/selection/ToggleableKt;->toggleable-O2vRcR0(Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $enabled$inlined:Z

.field final synthetic $indication$inlined:Landroidx/compose/foundation/Indication;

.field final synthetic $interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onValueChange$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $role$inlined:Landroidx/compose/ui/semantics/Role;

.field final synthetic $value$inlined:Z


# direct methods
.method public constructor <init>(ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLandroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->$value$inlined:Z

    iput-object p2, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->$interactionSource$inlined:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p3, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->$indication$inlined:Landroidx/compose/foundation/Indication;

    iput-boolean p4, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->$enabled$inlined:Z

    iput-object p5, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->$role$inlined:Landroidx/compose/ui/semantics/Role;

    iput-object p6, p0, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->$onValueChange$inlined:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 135
    invoke-static {p1}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/selection/ToggleableKt$toggleable-O2vRcR0$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 171
    throw p1
.end method
