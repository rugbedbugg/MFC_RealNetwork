.class final Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;
.super Lkotlin/jvm/internal/Lambda;
.source "GlideImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/compose/GlideImageKt;->GlideImage(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lcom/bumptech/glide/integration/compose/Placeholder;Lcom/bumptech/glide/integration/compose/Placeholder;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha:F

.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $model:Ljava/lang/Object;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $requestBuilderTransform:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lcom/bumptech/glide/integration/compose/Placeholder;Lcom/bumptech/glide/integration/compose/Placeholder;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$model:Ljava/lang/Object;

    iput-object p2, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$contentDescription:Ljava/lang/String;

    iput-object p3, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$alignment:Landroidx/compose/ui/Alignment;

    iput-object p5, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput p6, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$alpha:F

    iput-object p7, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iput-object p10, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$requestBuilderTransform:Lkotlin/jvm/functions/Function1;

    iput p11, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$$changed:I

    iput p12, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$model:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$contentDescription:Ljava/lang/String;

    iget-object v2, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$alignment:Landroidx/compose/ui/Alignment;

    iget-object v4, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iget v5, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$alpha:F

    iget-object v6, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$requestBuilderTransform:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$$changed:I

    or-int/lit8 v11, p2, 0x1

    iget v12, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$GlideImage$3;->$$default:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->GlideImage(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lcom/bumptech/glide/integration/compose/Placeholder;Lcom/bumptech/glide/integration/compose/Placeholder;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
