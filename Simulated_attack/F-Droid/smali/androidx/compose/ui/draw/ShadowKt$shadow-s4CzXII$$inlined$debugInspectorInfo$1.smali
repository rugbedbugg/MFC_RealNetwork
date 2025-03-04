.class public final Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $ambientColor$inlined:J

.field final synthetic $clip$inlined:Z

.field final synthetic $elevation$inlined:F

.field final synthetic $shape$inlined:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $spotColor$inlined:J


# direct methods
.method public constructor <init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V
    .locals 0

    .line 0
    iput p1, p0, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;->$elevation$inlined:F

    iput-object p2, p0, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;->$shape$inlined:Landroidx/compose/ui/graphics/Shape;

    iput-boolean p3, p0, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;->$clip$inlined:Z

    iput-wide p4, p0, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;->$ambientColor$inlined:J

    iput-wide p6, p0, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;->$spotColor$inlined:J

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

    invoke-virtual {p0, p1}, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

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
