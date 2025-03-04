.class final Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "GlideImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/compose/GlideImageKt;->SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $alpha:F

.field final synthetic $colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field final synthetic $contentDescription:Ljava/lang/String;

.field final synthetic $contentScale:Landroidx/compose/ui/layout/ContentScale;

.field final synthetic $failure:Lkotlin/jvm/functions/Function2;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;

.field final synthetic $requestBuilder:Lcom/bumptech/glide/RequestBuilder;

.field final synthetic $size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    iput-object p2, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    iput-object p3, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$contentDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$alignment:Landroidx/compose/ui/Alignment;

    iput-object p6, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iput p7, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$alpha:F

    iput-object p8, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iput-object p9, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$failure:Lkotlin/jvm/functions/Function2;

    iput p11, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    .line 0
    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$requestBuilder:Lcom/bumptech/glide/RequestBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$size:Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;

    iget-object v2, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$contentDescription:Ljava/lang/String;

    iget-object v4, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$alignment:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$contentScale:Landroidx/compose/ui/layout/ContentScale;

    iget v6, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$alpha:F

    iget-object v7, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object v8, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v9, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$failure:Lkotlin/jvm/functions/Function2;

    iget p2, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$2;->$$changed:I

    or-int/lit8 v11, p2, 0x1

    move-object v10, p1

    invoke-static/range {v0 .. v11}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->access$SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
