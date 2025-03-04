.class public final Landroidx/compose/foundation/MagnifierKt$magnifier$$inlined$debugInspectorInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "InspectableValue.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt;->magnifier(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/MagnifierStyle;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $magnifierCenter$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $sourceCenter$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $style$inlined:Landroidx/compose/foundation/MagnifierStyle;

.field final synthetic $zoom$inlined:F


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FLandroidx/compose/foundation/MagnifierStyle;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$$inlined$debugInspectorInfo$1;->$sourceCenter$inlined:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$$inlined$debugInspectorInfo$1;->$magnifierCenter$inlined:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$$inlined$debugInspectorInfo$1;->$zoom$inlined:F

    iput-object p4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$$inlined$debugInspectorInfo$1;->$style$inlined:Landroidx/compose/foundation/MagnifierStyle;

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

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MagnifierKt$magnifier$$inlined$debugInspectorInfo$1;->invoke(Landroidx/compose/ui/platform/InspectorInfo;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 2

    const-string v0, "$this$null"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    invoke-static {p1, v0, v1}, Landroidx/compose/foundation/MagnifierKt;->isPlatformMagnifierSupported$default(IILjava/lang/Object;)Z

    throw v1
.end method
