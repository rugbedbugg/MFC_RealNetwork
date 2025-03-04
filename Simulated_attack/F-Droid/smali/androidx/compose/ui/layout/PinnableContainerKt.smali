.class public abstract Landroidx/compose/ui/layout/PinnableContainerKt;
.super Ljava/lang/Object;
.source "PinnableContainer.kt"


# static fields
.field private static final LocalPinnableContainer:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroidx/compose/ui/layout/PinnableContainerKt$LocalPinnableContainer$1;->INSTANCE:Landroidx/compose/ui/layout/PinnableContainerKt$LocalPinnableContainer$1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-static {v2, v0, v1, v2}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf$default(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalPinnableContainer()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/layout/PinnableContainerKt;->LocalPinnableContainer:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
