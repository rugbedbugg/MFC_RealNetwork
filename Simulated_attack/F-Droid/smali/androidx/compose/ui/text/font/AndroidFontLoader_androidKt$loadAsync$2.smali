.class final Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidFontLoader.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt;->loadAsync(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $this_loadAsync:Landroidx/compose/ui/text/font/ResourceFont;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->$this_loadAsync:Landroidx/compose/ui/text/font/ResourceFont;

    iput-object p2, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 0
    new-instance p1, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;

    iget-object v0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->$this_loadAsync:Landroidx/compose/ui/text/font/ResourceFont;

    iget-object v1, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->$context:Landroid/content/Context;

    invoke-direct {p1, v0, v1, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;-><init>(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->label:I

    if-nez v0, :cond_0

    .line 81
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->$this_loadAsync:Landroidx/compose/ui/text/font/ResourceFont;

    iget-object v0, p0, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt$loadAsync$2;->$context:Landroid/content/Context;

    invoke-static {p1, v0}, Landroidx/compose/ui/text/font/AndroidFontLoader_androidKt;->access$load(Landroidx/compose/ui/text/font/ResourceFont;Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
