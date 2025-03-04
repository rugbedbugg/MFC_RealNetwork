.class public abstract Landroidx/compose/foundation/layout/OffsetKt;
.super Ljava/lang/Object;
.source "Offset.kt"


# direct methods
.method public static final offset(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v0, Landroidx/compose/foundation/layout/OffsetPxElement;

    .line 105
    new-instance v1, Landroidx/compose/foundation/layout/OffsetKt$offset$2;

    invoke-direct {v1, p1}, Landroidx/compose/foundation/layout/OffsetKt$offset$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v2, 0x1

    .line 106
    invoke-direct {v0, p1, v2, v1}, Landroidx/compose/foundation/layout/OffsetPxElement;-><init>(Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;)V

    .line 105
    invoke-interface {p0, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
