.class public final Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ObjectPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ObjectPoolKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected disposeInstance(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    iget-object p1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->backingBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, p1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic disposeInstance(Ljava/lang/Object;)V
    .locals 0

    .line 15
    check-cast p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;->disposeInstance(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    return-void
.end method

.method protected produceInstance()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 5

    .line 17
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectPool$1;->produceInstance()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    return-object v0
.end method
