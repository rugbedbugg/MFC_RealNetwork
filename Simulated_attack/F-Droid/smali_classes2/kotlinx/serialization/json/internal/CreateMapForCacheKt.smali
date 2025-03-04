.class public abstract Lkotlinx/serialization/json/internal/CreateMapForCacheKt;
.super Ljava/lang/Object;
.source "createMapForCache.kt"


# direct methods
.method public static final createMapForCache(I)Ljava/util/Map;
    .locals 1

    .line 15
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-object v0
.end method
