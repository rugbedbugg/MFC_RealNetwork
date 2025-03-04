.class public final Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;
.super Lio/ktor/utils/io/pool/NoPoolImpl;
.source "ChunkBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/core/internal/ChunkBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Lio/ktor/utils/io/pool/NoPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public borrow()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3

    .line 152
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v1, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/bits/DefaultAllocator;->alloc-gFv-Zug(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic borrow()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;->borrow()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lio/ktor/utils/io/bits/DefaultAllocator;->INSTANCE:Lio/ktor/utils/io/bits/DefaultAllocator;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/ktor/utils/io/bits/DefaultAllocator;->free-3GNKZMM(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public bridge synthetic recycle(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;->recycle(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method
