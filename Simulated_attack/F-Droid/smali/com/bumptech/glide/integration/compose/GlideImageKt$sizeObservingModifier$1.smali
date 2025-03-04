.class final Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlideImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/compose/GlideImageKt;->sizeObservingModifier(Landroidx/compose/ui/Modifier;Lcom/bumptech/glide/integration/compose/SizeObserver;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sizeObserver:Lcom/bumptech/glide/integration/compose/SizeObserver;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/compose/SizeObserver;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1;->$sizeObserver:Lcom/bumptech/glide/integration/compose/SizeObserver;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 352
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const-string v0, "$this$layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-static {p3, p4}, Lcom/bumptech/glide/integration/compose/SizesKt;->inferredGlideSize-BRTryo0(J)Lcom/bumptech/glide/integration/ktx/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1;->$sizeObserver:Lcom/bumptech/glide/integration/compose/SizeObserver;

    .line 355
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/integration/compose/SizeObserver;->setSize(Lcom/bumptech/glide/integration/ktx/Size;)V

    .line 357
    :cond_0
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p2

    .line 358
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    new-instance v4, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1$1;

    invoke-direct {v4, p2}, Lcom/bumptech/glide/integration/compose/GlideImageKt$sizeObservingModifier$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope$-CC;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    return-object p1
.end method
