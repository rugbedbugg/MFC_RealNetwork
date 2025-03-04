.class public Lio/ktor/utils/io/core/internal/ChunkBuffer;
.super Lio/ktor/utils/io/core/Buffer;
.source "ChunkBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

.field private static final Empty:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private static final EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;

.field private static final NoPool:Lio/ktor/utils/io/pool/ObjectPool;

.field private static final NoPoolManuallyManaged:Lio/ktor/utils/io/pool/ObjectPool;

.field private static final synthetic nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic nextRef:Ljava/lang/Object;

.field private origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private final parentPool:Lio/ktor/utils/io/pool/ObjectPool;

.field private volatile synthetic refCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    .line 135
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$EmptyPool$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 148
    new-instance v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    sget-object v3, Lio/ktor/utils/io/bits/Memory;->Companion:Lio/ktor/utils/io/bits/Memory$Companion;

    invoke-virtual {v3}, Lio/ktor/utils/io/bits/Memory$Companion;->getEmpty-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Empty:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 150
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPool$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->NoPool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 160
    new-instance v0, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;

    invoke-direct {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->NoPoolManuallyManaged:Lio/ktor/utils/io/pool/ObjectPool;

    const-class v0, Ljava/lang/Object;

    const-string v1, "nextRef"

    const-class v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "refCount"

    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Buffer;-><init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p3, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->parentPool:Lio/ktor/utils/io/pool/ObjectPool;

    if-eq p2, p0, :cond_0

    iput-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    iput-object p2, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A chunk couldn\'t be a view of itself."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/core/internal/ChunkBuffer;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Empty:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public static final synthetic access$getEmptyPool$cp()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->EmptyPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method

.method private final appendNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 47
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This chunk has already a next chunk."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public final getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef:Ljava/lang/Object;

    .line 35
    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public final getOrigin()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-object v0
.end method

.method public final getReferenceCount()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    return v0
.end method

.method public release(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release$ktor_io()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->unlink$ktor_io()V

    .line 68
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->parentPool:Lio/ktor/utils/io/pool/ObjectPool;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 71
    :goto_0
    invoke-interface {p1, p0}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final release$ktor_io()Z
    .locals 3

    :cond_0
    iget v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 193
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 117
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to release: it is already released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final reset()V
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    if-nez v0, :cond_0

    .line 125
    invoke-super {p0}, Lio/ktor/utils/io/core/Buffer;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->nextRef:Ljava/lang/Object;

    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to reset buffer with origin"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 0

    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_0

    .line 40
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->appendNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    return-void
.end method

.method public final unlink$ktor_io()V
    .locals 3

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 77
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->origin:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to unlink: buffer is in use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final unpark$ktor_io()V
    .locals 3

    :cond_0
    iget v0, p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount:I

    if-ltz v0, :cond_2

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    sget-object v2, Lio/ktor/utils/io/core/internal/ChunkBuffer;->refCount$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 189
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance is already in use but somehow appeared in the pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance is already disposed and couldn\'t be borrowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
