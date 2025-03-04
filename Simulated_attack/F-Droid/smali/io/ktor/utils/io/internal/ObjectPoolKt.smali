.class public abstract Lio/ktor/utils/io/internal/ObjectPoolKt;
.super Ljava/lang/Object;
.source "ObjectPool.kt"


# static fields
.field private static final BUFFER_OBJECT_POOL_SIZE:I

.field private static final BUFFER_POOL_SIZE:I

.field private static final BUFFER_SIZE:I

.field private static final BufferObjectNoPool:Lio/ktor/utils/io/pool/ObjectPool;

.field private static final BufferObjectPool:Lio/ktor/utils/io/pool/ObjectPool;

.field private static final BufferPool:Lio/ktor/utils/io/pool/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "BufferSize"

    const/16 v1, 0x1000

    .line 6
    invoke-static {v0, v1}, Lio/ktor/utils/io/internal/UtilsKt;->getIOIntProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BUFFER_SIZE:I

    const-string v1, "BufferPoolSize"

    const/16 v2, 0x800

    .line 7
    invoke-static {v1, v2}, Lio/ktor/utils/io/internal/UtilsKt;->getIOIntProperty(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lio/ktor/utils/io/internal/ObjectPoolKt;->BUFFER_POOL_SIZE:I

    const-string v2, "BufferObjectPoolSize"

    const/16 v3, 0x400

    .line 8
    invoke-static {v2, v3}, Lio/ktor/utils/io/internal/UtilsKt;->getIOIntProperty(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lio/ktor/utils/io/internal/ObjectPoolKt;->BUFFER_OBJECT_POOL_SIZE:I

    .line 12
    new-instance v3, Lio/ktor/utils/io/pool/DirectByteBufferPool;

    invoke-direct {v3, v1, v0}, Lio/ktor/utils/io/pool/DirectByteBufferPool;-><init>(II)V

    sput-object v3, Lio/ktor/utils/io/internal/ObjectPoolKt;->BufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 15
    new-instance v0, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;

    invoke-direct {v0, v2}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;-><init>(I)V

    sput-object v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BufferObjectPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 24
    new-instance v0, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectNoPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectNoPool$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BufferObjectNoPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getBUFFER_SIZE()I
    .locals 1

    .line 0
    sget v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BUFFER_SIZE:I

    return v0
.end method

.method public static final getBufferObjectNoPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BufferObjectNoPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public static final getBufferObjectPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BufferObjectPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method public static final getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/internal/ObjectPoolKt;->BufferPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method
