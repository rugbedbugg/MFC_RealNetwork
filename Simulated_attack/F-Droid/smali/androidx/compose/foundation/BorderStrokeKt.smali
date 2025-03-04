.class public abstract Landroidx/compose/foundation/BorderStrokeKt;
.super Ljava/lang/Object;
.source "BorderStroke.kt"


# direct methods
.method public static final BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;
    .locals 3

    .line 72
    new-instance v0, Landroidx/compose/foundation/BorderStroke;

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
