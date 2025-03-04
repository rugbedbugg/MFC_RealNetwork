.class public final Landroidx/compose/ui/text/font/TypefaceRequestCache;
.super Ljava/lang/Object;
.source "FontFamilyResolver.kt"


# instance fields
.field private final lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

.field private final resultCache:Landroidx/compose/ui/text/caches/LruCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {}, Landroidx/compose/ui/text/platform/Synchronization_jvmKt;->createSynchronizedObject()Landroidx/compose/ui/text/platform/SynchronizedObject;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 159
    new-instance v0, Landroidx/compose/ui/text/caches/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/caches/LruCache;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    return-void
.end method

.method public static final synthetic access$getResultCache$p(Landroidx/compose/ui/text/font/TypefaceRequestCache;)Landroidx/compose/ui/text/caches/LruCache;
    .locals 0

    .line 156
    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    return-object p0
.end method


# virtual methods
.method public final getLock$ui_text_release()Landroidx/compose/ui/text/platform/SynchronizedObject;
    .locals 1

    .line 0
    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    return-object v0
.end method

.method public final runCached(Landroidx/compose/ui/text/font/TypefaceRequest;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/State;
    .locals 3

    const-string v0, "typefaceRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolveTypeface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 24
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 166
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/font/TypefaceResult;

    if-eqz v1, :cond_1

    .line 167
    invoke-interface {v1}, Landroidx/compose/ui/text/font/TypefaceResult;->getCacheable()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 168
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 170
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/caches/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/font/TypefaceResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 24
    :cond_1
    :goto_0
    monitor-exit v0

    .line 185
    :try_start_2
    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/text/font/TypefaceRequestCache$runCached$currentTypefaceResult$1;-><init>(Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/TypefaceRequest;)V

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/text/font/TypefaceResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->lock:Landroidx/compose/ui/text/platform/SynchronizedObject;

    .line 24
    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 205
    invoke-virtual {v1, p1}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-interface {p2}, Landroidx/compose/ui/text/font/TypefaceResult;->getCacheable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/text/font/TypefaceRequestCache;->resultCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 206
    invoke-virtual {v1, p1, p2}, Landroidx/compose/ui/text/caches/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 208
    :cond_2
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 24
    monitor-exit v0

    return-object p2

    :goto_2
    monitor-exit v0

    throw p1

    :catch_0
    move-exception p1

    .line 200
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Could not load font"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 24
    :goto_3
    monitor-exit v0

    throw p1
.end method
