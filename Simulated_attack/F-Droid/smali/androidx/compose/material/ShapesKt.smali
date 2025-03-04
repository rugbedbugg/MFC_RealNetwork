.class public abstract Landroidx/compose/material/ShapesKt;
.super Ljava/lang/Object;
.source "Shapes.kt"


# static fields
.field private static final LocalShapes:Landroidx/compose/runtime/ProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/material/ShapesKt$LocalShapes$1;->INSTANCE:Landroidx/compose/material/ShapesKt$LocalShapes$1;

    .line 100
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/ShapesKt;->LocalShapes:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-void
.end method

.method public static final getLocalShapes()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1

    .line 0
    sget-object v0, Landroidx/compose/material/ShapesKt;->LocalShapes:Landroidx/compose/runtime/ProvidableCompositionLocal;

    return-object v0
.end method
