.class final synthetic Lcom/bumptech/glide/integration/compose/GlideImageKt$rememberSizeAndModifier$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "GlideImage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/integration/compose/GlideImageKt;->rememberSizeAndModifier(Lcom/bumptech/glide/integration/ktx/Size;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Lcom/bumptech/glide/integration/compose/SizeAndModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    .line 0
    const/4 v1, 0x1

    const-class v3, Lcom/bumptech/glide/integration/compose/SizeObserver;

    const-string v4, "getSize"

    const-string v5, "getSize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 251
    check-cast p1, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/integration/compose/GlideImageKt$rememberSizeAndModifier$1$1;->invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    .line 251
    check-cast v0, Lcom/bumptech/glide/integration/compose/SizeObserver;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/integration/compose/SizeObserver;->getSize(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
