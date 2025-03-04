.class public abstract Landroidx/compose/ui/graphics/CanvasKt;
.super Ljava/lang/Object;
.source "Canvas.kt"


# direct methods
.method public static final Canvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;
    .locals 1

    const-string v0, "image"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->ActualCanvas(Landroidx/compose/ui/graphics/ImageBitmap;)Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method
