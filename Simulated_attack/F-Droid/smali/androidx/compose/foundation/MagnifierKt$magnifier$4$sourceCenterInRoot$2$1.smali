.class final Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Magnifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $updatedSourceCenter$delegate:Landroidx/compose/runtime/State;


# direct methods
.method constructor <init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$density:Landroidx/compose/ui/unit/Density;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$updatedSourceCenter$delegate:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 2

    .line 280
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->invoke-F1C5BW0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v0

    return-object v0
.end method

.method public final invoke-F1C5BW0()J
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$updatedSourceCenter$delegate:Landroidx/compose/runtime/State;

    .line 281
    invoke-static {v0}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->access$invoke$lambda$3(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    .line 282
    invoke-static {v2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$sourceCenterInRoot$2$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    .line 283
    invoke-static {v2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->access$invoke$lambda$1(Landroidx/compose/runtime/MutableState;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 285
    :cond_0
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
