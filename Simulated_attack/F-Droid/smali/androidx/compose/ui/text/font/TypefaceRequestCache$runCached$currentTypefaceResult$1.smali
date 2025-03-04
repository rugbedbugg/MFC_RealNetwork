.class final Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FontFamilyResolver.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/font/TypefaceRequestCache;->runCached(Landroidx/compose/ui/text/font/TypefaceRequest;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

.field final synthetic this$0:Landroidx/compose/ui/text/font/TypefaceRequestCache;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/TypefaceRequest;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;->this$0:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    iput-object p2, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 185
    check-cast p1, Landroidx/compose/ui/text/font/TypefaceResult;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;->invoke(Landroidx/compose/ui/text/font/TypefaceResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/text/font/TypefaceResult;)V
    .locals 4

    const-string v0, "finalResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;->this$0:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    .line 191
    invoke-virtual {v0}, Landroidx/compose/ui/text/font/TypefaceRequestCache;->getLock$ui_text_release()Landroidx/compose/ui/text/platform/SynchronizedObject;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;->this$0:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    iget-object v2, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;->$typefaceRequest:Landroidx/compose/ui/text/font/TypefaceRequest;

    .line 24
    monitor-enter v0

    .line 192
    :try_start_0
    invoke-interface {p1}, Landroidx/compose/ui/text/font/TypefaceResult;->getCacheable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    invoke-static {v1}, Landroidx/compose/ui/text/font/TypefaceRequestCache;->access$getResultCache$p(Landroidx/compose/ui/text/font/TypefaceRequestCache;)Landroidx/compose/ui/text/caches/LruCache;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Landroidx/compose/ui/text/caches/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 195
    :cond_0
    invoke-static {v1}, Landroidx/compose/ui/text/font/TypefaceRequestCache;->access$getResultCache$p(Landroidx/compose/ui/text/font/TypefaceRequestCache;)Landroidx/compose/ui/text/caches/LruCache;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/caches/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method
