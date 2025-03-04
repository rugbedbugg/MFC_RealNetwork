.class public abstract Landroidx/compose/ui/platform/InspectionModeKt;
.super Ljava/lang/Object;
.source "InspectionMode.kt"


# static fields
.field private static final LocalInspectionMode:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;->INSTANCE:Landroidx/compose/ui/platform/InspectionModeKt$LocalInspectionMode$1;

    .line 25
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalInspectionMode()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/ui/platform/InspectionModeKt;->LocalInspectionMode:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
