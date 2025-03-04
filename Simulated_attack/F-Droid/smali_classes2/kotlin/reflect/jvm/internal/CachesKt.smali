.class public abstract Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "caches.kt"


# static fields
.field private static final CACHE_FOR_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

.field private static final CACHE_FOR_GENERIC_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

.field private static final CACHE_FOR_NULLABLE_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

.field private static final K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

.field private static final K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_CLASS_CACHE$1;

    .line 16
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$K_PACKAGE_CACHE$1;

    .line 17
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_BASE_CLASSIFIERS$1;

    .line 36
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_NULLABLE_BASE_CLASSIFIERS$1;

    .line 40
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_NULLABLE_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;->INSTANCE:Lkotlin/reflect/jvm/internal/CachesKt$CACHE_FOR_GENERIC_CLASSIFIERS$1;

    .line 46
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/CacheByClassKt;->createCache(Lkotlin/jvm/functions/Function1;)Lkotlin/reflect/jvm/internal/CacheByClass;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_GENERIC_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    return-void
.end method

.method public static final getOrCreateKType(Ljava/lang/Class;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_NULLABLE_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 53
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_BASE_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 55
    invoke-virtual {p1, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KType;

    goto :goto_0

    .line 58
    :cond_1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/CachesKt;->getOrCreateKTypeWithTypeArguments(Ljava/lang/Class;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final getOrCreateKTypeWithTypeArguments(Ljava/lang/Class;Ljava/util/List;Z)Lkotlin/reflect/KType;
    .locals 3

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->CACHE_FOR_GENERIC_CLASSIFIERS:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 67
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 69
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/CachesKt;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;

    move-result-object p0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lkotlin/reflect/full/KClassifiers;->createType(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;)Lkotlin/reflect/KType;

    move-result-object p0

    .line 73
    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :cond_1
    :goto_0
    const-string p0, "getOrPut(...)"

    .line 68
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lkotlin/reflect/KType;

    return-object v2
.end method

.method public static final getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_CLASS_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 21
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object p0
.end method

.method public static final getOrCreateKotlinPackage(Ljava/lang/Class;)Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->K_PACKAGE_CACHE:Lkotlin/reflect/jvm/internal/CacheByClass;

    .line 23
    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/KDeclarationContainer;

    return-object p0
.end method
