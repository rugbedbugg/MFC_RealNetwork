.class final Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GlideImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/compose/GlideImageKt;->SizedGlideImage(Lcom/bumptech/glide/RequestBuilder;Lcom/bumptech/glide/integration/ktx/ResolvableGlideSize;Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $painter:Lcom/bumptech/glide/integration/compose/GlidePainter;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/integration/compose/GlidePainter;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$1$1;->$painter:Lcom/bumptech/glide/integration/compose/GlidePainter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 324
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$1$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 1

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bumptech/glide/integration/compose/GlideImageKt$SizedGlideImage$1$1;->$painter:Lcom/bumptech/glide/integration/compose/GlidePainter;

    .line 324
    invoke-virtual {v0}, Lcom/bumptech/glide/integration/compose/GlidePainter;->getCurrentDrawable$compose_release()Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bumptech/glide/integration/compose/GlideImageKt;->setDisplayedDrawable(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/runtime/MutableState;)V

    return-void
.end method
