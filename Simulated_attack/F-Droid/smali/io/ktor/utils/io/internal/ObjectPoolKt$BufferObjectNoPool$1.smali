.class public final Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectNoPool$1;
.super Lio/ktor/utils/io/pool/NoPoolImpl;
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
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/ktor/utils/io/pool/NoPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public borrow()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 5

    .line 26
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBUFFER_SIZE()I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "allocateDirect(BUFFER_SIZE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;-><init>(Ljava/nio/ByteBuffer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic borrow()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ObjectPoolKt$BufferObjectNoPool$1;->borrow()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    return-object v0
.end method
