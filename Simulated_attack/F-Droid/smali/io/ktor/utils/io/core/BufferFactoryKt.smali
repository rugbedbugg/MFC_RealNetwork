.class public abstract Lio/ktor/utils/io/core/BufferFactoryKt;
.super Ljava/lang/Object;
.source "BufferFactory.kt"


# static fields
.field private static final DefaultChunkedBufferPool:Lio/ktor/utils/io/pool/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 53
    new-instance v6, Lio/ktor/utils/io/core/DefaultBufferPool;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lio/ktor/utils/io/core/DefaultBufferPool;-><init>(IILio/ktor/utils/io/bits/Allocator;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v6, Lio/ktor/utils/io/core/BufferFactoryKt;->DefaultChunkedBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getDefaultChunkedBufferPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/core/BufferFactoryKt;->DefaultChunkedBufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method
