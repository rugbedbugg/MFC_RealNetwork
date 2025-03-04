.class public Lio/ktor/utils/io/ByteBufferChannel;
.super Ljava/lang/Object;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lio/ktor/utils/io/ByteChannel;
.implements Lio/ktor/utils/io/ByteReadChannel;
.implements Lio/ktor/utils/io/ByteWriteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/ByteBufferChannel$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/ByteBufferChannel$Companion;

.field private static final synthetic _closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic _state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic _writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _closed:Ljava/lang/Object;

.field private volatile synthetic _readOp:Ljava/lang/Object;

.field private volatile synthetic _state:Ljava/lang/Object;

.field volatile synthetic _writeOp:Ljava/lang/Object;

.field private volatile attachedJob:Lkotlinx/coroutines/Job;

.field private final autoFlush:Z

.field private volatile joining:Lio/ktor/utils/io/internal/JoiningState;

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;

.field private readPosition:I

.field private final readSession:Lio/ktor/utils/io/internal/ReadSessionImpl;

.field private final readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

.field private final reservedSize:I

.field private volatile totalBytesRead:J

.field private volatile totalBytesWritten:J

.field private writePosition:I

.field private final writeSession:Lio/ktor/utils/io/internal/WriteSessionImpl;

.field private final writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

.field private final writeSuspension:Lkotlin/jvm/functions/Function1;

.field private volatile writeSuspensionSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/ByteBufferChannel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->Companion:Lio/ktor/utils/io/ByteBufferChannel$Companion;

    const-string v0, "_state"

    const-class v1, Lio/ktor/utils/io/ByteBufferChannel;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_closed"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_readOp"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_writeOp"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferObjectNoPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V

    .line 31
    new-instance v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1

    const-string v2, "content.slice()"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;-><init>(Ljava/nio/ByteBuffer;I)V

    iget-object p1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 32
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForRead()V

    .line 33
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object p1

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 34
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 35
    invoke-static {p0}, Lio/ktor/utils/io/ByteWriteChannelKt;->close(Lio/ktor/utils/io/ByteWriteChannel;)Z

    .line 36
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    return-void
.end method

.method public constructor <init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->autoFlush:Z

    iput-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    iput p3, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    .line 39
    sget-object p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_closed:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp:Ljava/lang/Object;

    .line 1589
    new-instance p1, Lio/ktor/utils/io/internal/ReadSessionImpl;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/ReadSessionImpl;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSession:Lio/ktor/utils/io/internal/ReadSessionImpl;

    .line 1827
    new-instance p1, Lio/ktor/utils/io/internal/WriteSessionImpl;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/internal/WriteSessionImpl;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSession:Lio/ktor/utils/io/internal/WriteSessionImpl;

    .line 2193
    new-instance p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2266
    new-instance p1, Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    invoke-direct {p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2271
    new-instance p1, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;

    invoke-direct {p1, p0}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspension:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZLio/ktor/utils/io/pool/ObjectPool;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 26
    invoke-static {}, Lio/ktor/utils/io/internal/ObjectPoolKt;->getBufferObjectPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/16 p3, 0x8

    .line 24
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/ObjectPool;I)V

    return-void
.end method

.method public static final synthetic access$awaitFreeSpaceOrDelegate(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->awaitFreeSpaceOrDelegate(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$flushImpl(Lio/ktor/utils/io/ByteBufferChannel;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->flushImpl(I)V

    return-void
.end method

.method public static final synthetic access$getClosed(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/ClosedElement;
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWriteOp(Lio/ktor/utils/io/ByteBufferChannel;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWriteSuspensionSize$p(Lio/ktor/utils/io/ByteBufferChannel;)I
    .locals 0

    .line 23
    iget p0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspensionSize:I

    return p0
.end method

.method public static final synthetic access$readAvailableSuspend(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailableSuspend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readAvailableSuspend(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailableSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readRemainingSuspend(Lio/ktor/utils/io/ByteBufferChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readRemainingSuspend(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readSuspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readSuspendLoop(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendLoop(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$resumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    return-void
.end method

.method public static final synthetic access$setAttachedJob$p(Lio/ktor/utils/io/ByteBufferChannel;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$shouldResumeReadOp(Lio/ktor/utils/io/ByteBufferChannel;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->shouldResumeReadOp()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$writeFullySuspend(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeFullySuspend(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeSuspend(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeSuspend(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$writeSuspendBlock(Lio/ktor/utils/io/ByteBufferChannel;ILkotlinx/coroutines/CancellableContinuation;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendBlock(ILkotlinx/coroutines/CancellableContinuation;)V

    return-void
.end method

.method public static final synthetic access$writeSuspendPredicate(Lio/ktor/utils/io/ByteBufferChannel;I)Z
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result p0

    return p0
.end method

.method private final awaitFreeSpaceOrDelegate(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1511
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    if-ne v2, p1, :cond_1

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1513
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1511
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1512
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$awaitFreeSpaceOrDelegate$1;->label:I

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 1513
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1514
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    .locals 2

    if-ltz p3, :cond_0

    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    add-int/2addr v0, p3

    .line 903
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    .line 904
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeRead(I)V

    .line 905
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesRead()J

    move-result-wide p1

    int-to-long v0, p3

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesRead$ktor_io(J)V

    .line 906
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    return-void

    .line 901
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    .locals 2

    if-ltz p3, :cond_0

    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    add-int/2addr v0, p3

    .line 895
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    .line 896
    invoke-virtual {p2, p3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeWrite(I)V

    .line 897
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide p1

    int-to-long v0, p3

    add-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    return-void

    .line 893
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final carryIndex(Ljava/nio/ByteBuffer;I)I
    .locals 2

    .line 437
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr p1, v0

    sub-int/2addr p2, p1

    :cond_0
    return p2
.end method

.method private final flushImpl(I)V
    .locals 3

    .line 174
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 175
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v0, v1, :cond_1

    return-void

    .line 179
    :cond_1
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    .line 180
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 18
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 182
    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    .line 188
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    :cond_2
    if-lt v1, p1, :cond_3

    .line 193
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    :cond_3
    return-void
.end method

.method private final getClosed()Lio/ktor/utils/io/internal/ClosedElement;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_closed:Ljava/lang/Object;

    .line 47
    check-cast v0, Lio/ktor/utils/io/internal/ClosedElement;

    return-object v0
.end method

.method private final getReadOp()Lkotlin/coroutines/Continuation;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    .line 58
    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method private final getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 42
    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    return-object v0
.end method

.method private final getWriteOp()Lkotlin/coroutines/Continuation;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp:Ljava/lang/Object;

    .line 66
    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method private final newBuffer()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 2355
    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 2356
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    return-object v0
.end method

.method private final prepareBuffer(Ljava/nio/ByteBuffer;II)V
    .locals 2

    const-string v0, "Failed requirement."

    if-ltz p2, :cond_1

    if-ltz p3, :cond_0

    .line 209
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr v0, v1

    add-int/2addr p3, p2

    .line 212
    invoke-static {p3, v0}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 213
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final readAsMuchAsPossible(Lio/ktor/utils/io/core/Buffer;II)I
    .locals 6

    .line 459
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    move v4, v1

    goto :goto_3

    .line 460
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 466
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    goto :goto_0

    .line 74
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 514
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryReadAtMost(I)I

    move-result v4

    if-gtz v4, :cond_3

    goto :goto_2

    .line 519
    :cond_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 520
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 523
    :cond_4
    :goto_1
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/BufferPrimitivesJvmKt;->writeFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;)V

    .line 525
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/ByteBufferChannel;->bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    .line 466
    :goto_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    :goto_3
    add-int/2addr p2, v4

    sub-int/2addr p3, v4

    if-eqz v1, :cond_5

    .line 361
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 531
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-gtz v0, :cond_0

    :cond_5
    return p2

    .line 466
    :goto_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method private final readAsMuchAsPossible([BII)I
    .locals 7

    .line 459
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 460
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    :try_start_0
    iget v3, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-nez v3, :cond_1

    goto :goto_1

    .line 541
    :cond_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v3

    iget v4, p0, Lio/ktor/utils/io/ByteBufferChannel;->reservedSize:I

    sub-int/2addr v3, v4

    :goto_0
    sub-int v4, p3, v1

    if-eqz v4, :cond_2

    iget v5, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    sub-int v6, v3, v5

    .line 549
    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v2, v4}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryReadAtMost(I)I

    move-result v4

    if-eqz v4, :cond_2

    add-int v6, v5, v4

    .line 552
    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 553
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int v5, p2, v1

    .line 554
    invoke-virtual {v0, p1, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 556
    invoke-direct {p0, v0, v2, v4}, Lio/ktor/utils/io/ByteBufferChannel;->bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 466
    :cond_2
    :goto_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    :goto_2
    return v1

    .line 466
    :goto_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method static synthetic readAsMuchAsPossible$default(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;IIILjava/lang/Object;)I
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 74
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result p3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p4

    sub-int/2addr p3, p4

    .line 502
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible(Lio/ktor/utils/io/core/Buffer;II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readAsMuchAsPossible"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic readAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 712
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible$default(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;IIILjava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    .line 715
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 716
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {p2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 717
    invoke-static/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible$default(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;IIILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_2

    .line 361
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 724
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailableSuspend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 726
    :cond_2
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic readAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 678
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible([BII)I

    move-result v0

    if-nez v0, :cond_1

    .line 681
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 682
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p4

    iget-object p4, p4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {p4}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 683
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible([BII)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-gtz v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_0

    .line 690
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailableSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 692
    :cond_3
    :goto_0
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private final readAvailableSuspend(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 744
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 745
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->L$1:Ljava/lang/Object;

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->label:I

    invoke-direct {p0, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p1, -0x1

    .line 746
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p2, 0x0

    .line 749
    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$3;->label:I

    invoke-virtual {v2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p2
.end method

.method private final readAvailableSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 728
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->I$1:I

    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->I$0:I

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p1, [B

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 729
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->I$0:I

    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->I$1:I

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->label:I

    invoke-direct {p0, v4, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_5

    const/4 p1, -0x1

    .line 730
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_5
    const/4 p4, 0x0

    .line 733
    iput-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readAvailableSuspend$1;->label:I

    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p4
.end method

.method static synthetic readRemaining$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 2062
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->isClosedForWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2063
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p3

    if-nez p3, :cond_0

    .line 2064
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->remainingPacket(J)Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p0

    return-object p0

    .line 2063
    :cond_0
    invoke-static {p3}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    .line 2066
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readRemainingSuspend(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final readRemainingSuspend(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2082
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$3:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/core/Output;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/utils/io/core/BytePacketBuilder;

    iget-object v5, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_0
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 16
    new-instance p3, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v2, 0x0

    invoke-direct {p3, v2, v3, v2}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2085
    :try_start_1
    new-instance v4, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iput-wide p1, v4, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 488
    invoke-static {p3, v3, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object p2, p3

    move-object v2, v4

    move-object p3, p0

    move-object v4, p2

    .line 74
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v5

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-long v5, v5

    .line 2087
    iget-wide v7, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    long-to-int v5, v7

    .line 2088
    invoke-virtual {p1, v5}, Lio/ktor/utils/io/core/Buffer;->resetForWrite(I)V

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, p3

    move-object v6, p1

    .line 2091
    invoke-static/range {v5 .. v10}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible$default(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;IIILjava/lang/Object;)I

    move-result v5

    .line 2092
    iget-wide v6, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_6

    .line 2093
    invoke-virtual {p3}, Lio/ktor/utils/io/ByteBufferChannel;->isClosedForRead()Z

    move-result v5

    if-nez v5, :cond_6

    iput-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readRemainingSuspend$1;->label:I

    invoke-direct {p3, v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v5

    move-object v5, p3

    move-object p3, v11

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    move-object p3, v5

    move v5, v3

    goto :goto_3

    :cond_5
    move-object p3, v5

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_7

    .line 492
    invoke-static {p2, v3, p1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 495
    :cond_7
    :try_start_3
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 2096
    invoke-virtual {p3}, Lio/ktor/utils/io/ByteBufferChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_8

    .line 19
    invoke-virtual {v4}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    move-object p3, v4

    goto :goto_5

    .line 2096
    :cond_8
    throw p1

    .line 495
    :goto_4
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_2
    move-exception p1

    .line 21
    :goto_5
    invoke-virtual {p3}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p1
.end method

.method private final readSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 2157
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    const/4 v1, 0x1

    if-lt v0, p1, :cond_0

    .line 2158
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2160
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2161
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_3

    .line 2162
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 2163
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2165
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getReadOp()Lkotlin/coroutines/Continuation;

    move-result-object p1

    if-nez p1, :cond_2

    .line 2166
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2165
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read operation is already in progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2161
    :cond_3
    invoke-static {p2}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_4
    if-ne p1, v1, :cond_5

    .line 2170
    invoke-direct {p0, v1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2173
    :cond_5
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendLoop(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2230
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 2197
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    .line 2199
    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge p2, p1, :cond_5

    .line 2236
    :try_start_1
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendImpl$1;->label:I

    iget-object p2, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 2238
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->suspensionForSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2239
    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->completeSuspendBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .line 2236
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, p1, :cond_3

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object p1, p0

    goto :goto_3

    :cond_3
    :goto_1
    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    return-object p2

    :goto_3
    const/4 v0, 0x0

    .line 2242
    invoke-direct {p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->setReadOp(Lkotlin/coroutines/Continuation;)V

    .line 2244
    throw p2

    .line 2232
    :cond_5
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final readSuspendLoop(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2176
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->I$0:I

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 2178
    :cond_3
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt p2, p1, :cond_4

    .line 2179
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2181
    :cond_4
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 2182
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2183
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p2

    iget-object p2, p2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 2184
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget p2, p2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lt p2, p1, :cond_5

    move v3, v4

    .line 2185
    :cond_5
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getReadOp()Lkotlin/coroutines/Continuation;

    move-result-object p1

    if-nez p1, :cond_6

    .line 2186
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 2185
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Read operation is already in progress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2182
    :cond_7
    invoke-virtual {p2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2189
    :cond_8
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->I$0:I

    iput v4, v0, Lio/ktor/utils/io/ByteBufferChannel$readSuspendLoop$1;->label:I

    invoke-direct {v2, p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 2360
    invoke-interface {v0, p1}, Lio/ktor/utils/io/pool/ObjectPool;->recycle(Ljava/lang/Object;)V

    return-void
.end method

.method private final remainingPacket(J)Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 9

    .line 16
    new-instance v0, Lio/ktor/utils/io/core/BytePacketBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 488
    :try_start_0
    invoke-static {v0, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v3, v3, p1

    if-lez v3, :cond_0

    long-to-int v3, p1

    .line 2073
    invoke-virtual {v1, v3}, Lio/ktor/utils/io/core/Buffer;->resetForWrite(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v1

    .line 2076
    invoke-static/range {v3 .. v8}, Lio/ktor/utils/io/ByteBufferChannel;->readAsMuchAsPossible$default(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;IIILjava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_1

    .line 2078
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->isClosedForRead()Z

    move-result v3

    if-nez v3, :cond_1

    .line 492
    invoke-static {v0, v2, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 495
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 19
    invoke-virtual {v0}, Lio/ktor/utils/io/core/BytePacketBuilder;->build()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    .line 495
    :goto_2
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21
    :goto_3
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Output;->release()V

    .line 22
    throw p1
.end method

.method private final restoreStateAfterRead()V
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2434
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 317
    move-object v4, v1

    check-cast v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v4, :cond_1

    .line 318
    iget-object v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    .line 319
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    move-object v1, v0

    .line 323
    :cond_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->stopReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v4

    .line 325
    instance-of v5, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v5, :cond_2

    .line 326
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v5

    if-ne v5, v3, :cond_2

    iget-object v3, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 329
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    move-object v6, v4

    move-object v4, v1

    move-object v1, v6

    :cond_2
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2435
    invoke-static {v3, p0, v2, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v4, v0, :cond_4

    .line 336
    check-cast v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 337
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    return-void

    .line 341
    :cond_4
    instance-of v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_5

    .line 342
    iget-object v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 343
    iget-object v1, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 344
    invoke-static {v3, p0, v4, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    .line 347
    check-cast v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 348
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    :cond_5
    return-void
.end method

.method private final resumeClosed(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 2135
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2137
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    .line 2139
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2139
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2143
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_4

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez p1, :cond_3

    .line 2144
    new-instance p1, Lio/ktor/utils/io/ClosedWriteChannelException;

    const-string v1, "Byte channel was closed"

    invoke-direct {p1, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private final resumeReadOp()V
    .locals 3

    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 2100
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/Continuation;

    if-eqz v0, :cond_2

    .line 2101
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 2103
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    .line 2104
    :cond_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final resumeWriteOp()V
    .locals 4

    .line 2115
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2116
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    .line 2127
    invoke-static {v2, p0, v0, v3}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    .line 2128
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :goto_1
    return-void
.end method

.method private final setReadOp(Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp:Ljava/lang/Object;

    return-void
.end method

.method private final setupStateForRead()Ljava/nio/ByteBuffer;
    .locals 4

    :cond_0
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2428
    move-object v1, v0

    check-cast v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 294
    sget-object v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    sget-object v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 296
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 297
    :cond_2
    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    :goto_1
    return-object v3

    .line 301
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 302
    :cond_6
    :goto_2
    iget-object v2, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-nez v2, :cond_7

    return-object v3

    .line 303
    :cond_7
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2430
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getReadBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->readPosition:I

    .line 309
    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    .line 309
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    return-object v0
.end method

.method private final shouldResumeReadOp()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method private final suspensionForSize(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 2197
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 2199
    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge v0, p1, :cond_7

    .line 2214
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2215
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2216
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2217
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2220
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v0

    .line 2221
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v2

    .line 2222
    :goto_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2223
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2225
    :cond_4
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getReadOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2197
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 2199
    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge v0, p1, :cond_0

    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_readOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 3651
    invoke-static {v0, p0, v1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2225
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-nez v2, :cond_5

    .line 2197
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    .line 2199
    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v2, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    if-ge v2, p1, :cond_5

    goto :goto_1

    .line 3652
    :cond_5
    invoke-static {v0, p0, p2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3638
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation is already in progress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2210
    :cond_7
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 2227
    :goto_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final tryReleaseBuffer(Z)Z
    .locals 8

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2440
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 399
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v4

    if-eqz v1, :cond_3

    if-eqz v4, :cond_1

    .line 403
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_0
    if-nez v5, :cond_2

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->resetForWrite()V

    .line 404
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    move-object v1, v0

    .line 408
    :cond_3
    sget-object v5, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_4

    return v6

    .line 409
    :cond_4
    sget-object v7, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v3, v7, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_8

    .line 410
    instance-of v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_8

    .line 411
    iget-object v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 412
    :cond_6
    invoke-virtual {v4}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->forceLockForRelease()V

    .line 413
    :cond_7
    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v1

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_a

    .line 417
    instance-of v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v1, :cond_a

    .line 418
    iget-object v1, v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryLockForRelease()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 419
    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v1

    :goto_1
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2441
    invoke-static {v3, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_9

    .line 428
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object p1

    if-ne p1, v5, :cond_9

    .line 429
    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    :cond_9
    return v6

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic write$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lio/ktor/utils/io/ByteBufferChannel$write$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;

    invoke-direct {v0, p0, p3}, Lio/ktor/utils/io/ByteBufferChannel$write$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1497
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p0, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->I$0:I

    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$1:Ljava/lang/Object;

    check-cast p1, Lkotlin/jvm/functions/Function1;

    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p1

    move p1, p0

    move-object p0, p2

    move-object p2, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-lez p1, :cond_6

    const/16 p3, 0xff8

    if-gt p1, p3, :cond_5

    .line 1502
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable(ILkotlin/jvm/functions/Function1;)I

    move-result p3

    if-ltz p3, :cond_4

    .line 1509
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1507
    :cond_4
    iput-object p0, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->L$1:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$write$1;->label:I

    invoke-direct {p0, p1, p2, v0}, Lio/ktor/utils/io/ByteBufferChannel;->awaitFreeSpaceOrDelegate(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 1499
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Min("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") should\'nt be greater than (4088)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1498
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "min should be positive"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeAsMuchAsPossible(Lio/ktor/utils/io/core/Buffer;)I
    .locals 5

    .line 441
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 442
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 443
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    .line 446
    :try_start_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v3

    if-nez v3, :cond_4

    .line 69
    :goto_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1357
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtMost(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1360
    invoke-static {p1, v0, v3}, Lio/ktor/utils/io/core/BufferUtilsJvmKt;->readFully(Lio/ktor/utils/io/core/Buffer;Ljava/nio/ByteBuffer;I)V

    add-int/2addr v1, v3

    iget v3, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    add-int/2addr v3, v1

    .line 1364
    invoke-direct {p0, v0, v3}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 18
    iget v4, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 1364
    invoke-direct {p0, v0, v3, v4}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1367
    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 453
    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    return v1

    .line 446
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 453
    :cond_6
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method private final writeAsMuchAsPossible([BII)I
    .locals 5

    .line 441
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 442
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 443
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    .line 446
    :try_start_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v3

    if-nez v3, :cond_5

    :goto_0
    sub-int v3, p3, v1

    .line 1380
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtMost(I)I

    move-result v3

    if-eqz v3, :cond_2

    if-lez v3, :cond_1

    add-int v4, p2, v1

    .line 1384
    invoke-virtual {v0, p1, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v1, v3

    iget v3, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    add-int/2addr v3, v1

    .line 1387
    invoke-direct {p0, v0, v3}, Lio/ktor/utils/io/ByteBufferChannel;->carryIndex(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 18
    iget v4, v2, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 1387
    invoke-direct {p0, v0, v3, v4}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const-string p1, "Failed requirement."

    .line 1382
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1390
    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 453
    :cond_4
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    return v1

    .line 446
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 453
    :cond_7
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1
.end method

.method static synthetic writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1432
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible([BII)I

    move-result v0

    if-lez v0, :cond_0

    .line 1433
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1434
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 1097
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible(Lio/ktor/utils/io/core/Buffer;)I

    .line 355
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1103
    invoke-direct {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1100
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static synthetic writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1399
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    if-lez p3, :cond_0

    .line 1405
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible([BII)I

    move-result v0

    if-eqz v0, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 1412
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 1414
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final writeFullySuspend(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1121
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    if-ne v2, p1, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1125
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 1121
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/utils/io/core/Buffer;

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 355
    :goto_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p2

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    if-le p2, v4, :cond_5

    .line 1123
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->L$1:Ljava/lang/Object;

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$3;->label:I

    invoke-virtual {v2, v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 1125
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1127
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible(Lio/ktor/utils/io/core/Buffer;)I

    goto :goto_1

    .line 1129
    :cond_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final writeFullySuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1417
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$1:I

    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$0:I

    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$1:Ljava/lang/Object;

    check-cast p3, [B

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    :goto_1
    if-lez p3, :cond_4

    .line 1422
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->L$1:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$0:I

    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->I$1:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeFullySuspend$5;->label:I

    invoke-virtual {v2, p1, p2, p3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move v4, p3

    move-object p3, p1

    move p1, v4

    :goto_2
    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    add-int/2addr p2, p4

    sub-int/2addr p1, p4

    move-object v4, p3

    move p3, p1

    move-object p1, v4

    goto :goto_1

    .line 1427
    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final writeSuspend(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;

    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 2309
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->I$0:I

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 2310
    :cond_3
    :goto_1
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 314
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->L$0:Ljava/lang/Object;

    iput p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->I$0:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$3;->label:I

    .line 315
    new-instance p2, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v4

    invoke-direct {p2, v4, v3}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 321
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->initCancellability()V

    .line 2312
    invoke-static {v2, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->access$writeSuspendBlock(Lio/ktor/utils/io/ByteBufferChannel;ILkotlinx/coroutines/CancellableContinuation;)V

    .line 323
    invoke-virtual {p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->getResult()Ljava/lang/Object;

    move-result-object p2

    .line 314
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    if-ne p2, v4, :cond_4

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_4
    if-ne p2, v1, :cond_3

    return-object v1

    .line 2316
    :cond_5
    invoke-direct {v2}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2317
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method private final writeSuspend([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p4, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    iget v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;

    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 1437
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    if-ne v2, p1, :cond_1

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    return-object p4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$1:I

    iget p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$0:I

    iget-object p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$1:Ljava/lang/Object;

    check-cast p3, [B

    iget-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel;

    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v4, p3

    move p3, p1

    move-object p1, v4

    goto :goto_1

    :cond_3
    invoke-static {p4}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v2, p0

    .line 1439
    :cond_4
    iput-object v2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->L$1:Ljava/lang/Object;

    iput p2, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$0:I

    iput p3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->I$1:I

    iput v3, v0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspend$1;->label:I

    invoke-virtual {v2, v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    .line 1441
    :cond_5
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1443
    invoke-direct {v2, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->writeAsMuchAsPossible([BII)I

    move-result p4

    if-lez p4, :cond_4

    .line 1444
    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method private final writeSuspendBlock(ILkotlinx/coroutines/CancellableContinuation;)V
    .locals 3

    .line 2321
    :cond_0
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2322
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2323
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    .line 2326
    :cond_3
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lio/ktor/utils/io/ByteBufferChannel;->_writeOp$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    .line 3687
    invoke-static {v0, p0, v1, p2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2326
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3688
    invoke-static {v0, p0, p2, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2328
    :cond_5
    :goto_2
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->flushImpl(I)V

    .line 2330
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->shouldResumeReadOp()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2331
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    :cond_6
    return-void

    .line 3681
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation is already in progress"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final writeSuspendPredicate(I)Z
    .locals 3

    .line 2253
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    .line 2254
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2258
    :cond_0
    iget-object v1, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 18
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    if-ge v1, p1, :cond_1

    .line 2258
    sget-object p1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method


# virtual methods
.method public attachJob(Lkotlinx/coroutines/Job;)V
    .locals 9

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    new-instance v6, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;

    invoke-direct {v6, p0}, Lio/ktor/utils/io/ByteBufferChannel$attachJob$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/Job$DefaultImpls;->invokeOnCompletion$default(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1

    if-nez p1, :cond_0

    .line 164
    new-instance p1, Ljava/util/concurrent/CancellationException;

    const-string v0, "Channel has been cancelled"

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->close(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public close(Ljava/lang/Throwable;)Z
    .locals 4

    .line 118
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    .line 123
    sget-object v0, Lio/ktor/utils/io/internal/ClosedElement;->Companion:Lio/ktor/utils/io/internal/ClosedElement$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement$Companion;->getEmptyCause()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    goto :goto_0

    .line 125
    :cond_1
    new-instance v0, Lio/ktor/utils/io/internal/ClosedElement;

    invoke-direct {v0, p1}, Lio/ktor/utils/io/internal/ClosedElement;-><init>(Ljava/lang/Throwable;)V

    .line 128
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    sget-object v2, Lio/ktor/utils/io/ByteBufferChannel;->_closed$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    .line 129
    invoke-static {v2, p0, v3, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 133
    :cond_2
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    .line 134
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    .line 135
    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    .line 138
    :cond_4
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->resumeClosed(Ljava/lang/Throwable;)V

    .line 140
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_5

    .line 145
    invoke-static {v1, v3, v0, v3}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 147
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 148
    invoke-virtual {v1, p1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Throwable;)V

    return v0

    :cond_6
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 156
    new-instance v1, Lio/ktor/utils/io/ClosedWriteChannelException;

    const-string v2, "Byte channel was closed"

    invoke-direct {v1, v2}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    .line 159
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    iget-object v1, v1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->flush()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->close(Ljava/lang/Object;)V

    return v0
.end method

.method public final copyDirect$ktor_io(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/JoiningState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    instance-of v2, v0, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;

    iget v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;

    invoke-direct {v2, v1, v0}, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;-><init>(Lio/ktor/utils/io/ByteBufferChannel;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v3

    .line 1174
    iget v4, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v5, :cond_2

    const/4 v8, 0x3

    if-ne v4, v8, :cond_1

    iget-boolean v4, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->Z$0:Z

    iget-wide v8, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$0:J

    iget-object v10, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v11, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v11, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v12, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v4, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->Z$0:Z

    iget-wide v8, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$0:J

    iget-object v10, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v11, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$2:Ljava/lang/Object;

    invoke-static {v11}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v11, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v12, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v5

    move v5, v6

    const/4 v7, 0x0

    move-object v6, v0

    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_3
    iget-wide v8, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$1:J

    iget-boolean v4, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->Z$0:Z

    iget-wide v10, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$0:J

    iget-object v12, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$9:Ljava/lang/Object;

    check-cast v12, Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v13, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$8:Ljava/lang/Object;

    check-cast v13, Ljava/nio/ByteBuffer;

    iget-object v14, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$7:Ljava/lang/Object;

    check-cast v14, Lio/ktor/utils/io/internal/RingBufferCapacity;

    iget-object v15, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$6:Ljava/lang/Object;

    check-cast v15, Lio/ktor/utils/io/internal/RingBufferCapacity;

    iget-object v5, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v7, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lio/ktor/utils/io/ByteBufferChannel;

    iget-object v6, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$LongRef;

    move-object/from16 v16, v3

    iget-object v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$2:Ljava/lang/Object;

    invoke-static {v3}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    iget-object v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$1:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteBufferChannel;

    move-object/from16 p1, v3

    iget-object v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lio/ktor/utils/io/ByteBufferChannel;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v14

    move-object/from16 v0, v16

    move-object/from16 v16, v15

    move-object v15, v13

    move-wide v13, v10

    move-object v10, v12

    move-object/from16 v11, p1

    move-object v12, v7

    const/4 v7, 0x0

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    :goto_1
    move-object v12, v3

    goto/16 :goto_12

    :cond_4
    move-object/from16 v16, v3

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/ByteBufferChannel;->isClosedForRead()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1181
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/ByteBufferChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1182
    invoke-virtual/range {p1 .. p1}, Lio/ktor/utils/io/ByteBufferChannel;->getClosedCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->close(Ljava/lang/Throwable;)Z

    :cond_5
    const-wide/16 v2, 0x0

    .line 1184
    invoke-static {v2, v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1191
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result v4

    .line 1194
    :try_start_3
    new-instance v10, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object/from16 v11, p1

    move-wide/from16 v8, p2

    move-object/from16 v7, p4

    move-object v12, v1

    move-object/from16 v3, v16

    .line 1195
    :goto_2
    :try_start_4
    iget-wide v5, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v5, v8

    if-gez v0, :cond_1b

    .line 440
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 441
    invoke-virtual {v12}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_f

    .line 442
    :cond_7
    invoke-direct {v12}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v5

    iget-object v15, v5, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 443
    invoke-virtual {v12}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 446
    :try_start_5
    invoke-direct {v12}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    if-nez v13, :cond_17

    move-wide/from16 p1, v5

    move-wide v13, v8

    move-object v6, v10

    move-object v5, v12

    move-object/from16 v16, v5

    move-object v1, v15

    move-object v8, v1

    move-object v15, v0

    move-object v0, v3

    move-object/from16 v3, v16

    .line 1197
    :goto_3
    :try_start_6
    iget-wide v9, v6, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v9, v9, v13

    if-gez v9, :cond_11

    .line 18
    iget v9, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    if-nez v9, :cond_9

    .line 1200
    iput-object v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$2:Ljava/lang/Object;

    iput-object v6, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$5:Ljava/lang/Object;

    iput-object v8, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$6:Ljava/lang/Object;

    iput-object v1, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$7:Ljava/lang/Object;

    iput-object v15, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$8:Ljava/lang/Object;

    move-object/from16 v10, v16

    iput-object v10, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$9:Ljava/lang/Object;

    iput-wide v13, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$0:J

    iput-boolean v4, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->Z$0:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object/from16 v16, v3

    move/from16 p3, v4

    move-wide/from16 v3, p1

    :try_start_7
    iput-wide v3, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$1:J

    const/4 v9, 0x1

    iput v9, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->label:I

    move-object/from16 p1, v1

    invoke-virtual {v10, v9, v2}, Lio/ktor/utils/io/ByteBufferChannel;->tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v1, v0, :cond_8

    return-object v0

    :cond_8
    move-object/from16 v1, p1

    move-wide/from16 v23, v3

    move/from16 v4, p3

    move-object/from16 v3, v16

    move-object/from16 v16, v8

    move-wide/from16 v8, v23

    .line 1201
    :goto_4
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 p1, v0

    .line 18
    iget v0, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 p2, v2

    move-object/from16 v23, v10

    move v10, v0

    move-object/from16 v0, v23

    move-object/from16 v24, v16

    move-object/from16 v16, v3

    move-object/from16 v25, v5

    move v5, v4

    move-wide v3, v8

    move-object/from16 v9, v24

    move-object v8, v7

    move-object v7, v6

    move-object/from16 v6, v25

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v7, v12

    move-object/from16 v15, v16

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    :goto_5
    move-object v15, v8

    move-object v7, v12

    move-object/from16 v12, v16

    move-wide v8, v3

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    move-object/from16 v16, v3

    move-wide/from16 v3, p1

    goto :goto_5

    :cond_9
    move/from16 p3, v4

    move-object/from16 v10, v16

    move-object/from16 v16, v3

    move-wide/from16 v3, p1

    move-object/from16 p1, v1

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object v0, v10

    move v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move/from16 v5, p3

    .line 1205
    :goto_6
    :try_start_9
    iget v2, v0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    invoke-direct {v0, v15, v2, v10}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    .line 1207
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    move-wide/from16 p3, v3

    .line 459
    :try_start_a
    invoke-direct {v11}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForRead()Ljava/nio/ByteBuffer;

    move-result-object v3

    if-nez v3, :cond_a

    move/from16 v20, v5

    move-object/from16 v17, v6

    :goto_7
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move/from16 v21, v10

    goto/16 :goto_9

    .line 460
    :cond_a
    invoke-direct {v11}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v4

    iget-object v4, v4, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    move-object/from16 v17, v6

    .line 12
    :try_start_b
    iget v6, v4, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    if-nez v6, :cond_b

    .line 466
    :try_start_c
    invoke-direct {v11}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {v11}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move/from16 v20, v5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v15, v9

    move-object v7, v12

    move-object/from16 v12, v16

    move-object/from16 v5, v17

    move-wide/from16 v8, p3

    goto/16 :goto_12

    .line 1213
    :cond_b
    :try_start_d
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    int-to-long v8, v6

    .line 1214
    :try_start_e
    invoke-virtual {v15}, Ljava/nio/Buffer;->remaining()I

    move-result v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move/from16 v20, v5

    int-to-long v5, v6

    move/from16 v21, v10

    move-object/from16 v22, v11

    .line 1215
    :try_start_f
    iget-wide v10, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-long v10, v13, v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    .line 1217
    invoke-virtual {v1, v5}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtMost(I)I

    move-result v5

    if-gtz v5, :cond_c

    move-object/from16 v11, v22

    goto :goto_8

    .line 1223
    :cond_c
    invoke-virtual {v4, v5}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryReadExact(I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1228
    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1230
    invoke-virtual {v15, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput v5, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object/from16 v11, v22

    .line 1234
    :try_start_10
    invoke-direct {v11, v3, v4, v5}, Lio/ktor/utils/io/ByteBufferChannel;->bytesRead(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 466
    :goto_8
    :try_start_11
    invoke-direct {v11}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {v11}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    :goto_9
    iget v3, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gtz v3, :cond_d

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-wide/from16 v9, p3

    move-object v6, v7

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move/from16 v4, v20

    goto/16 :goto_d

    .line 1244
    :cond_d
    invoke-direct {v0, v15, v1, v3}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V

    .line 1245
    iget-wide v3, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget v2, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    sub-int v10, v21, v2

    if-eqz v10, :cond_e

    if-eqz v20, :cond_f

    .line 1248
    :cond_e
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :cond_f
    move-object/from16 v2, p2

    move-object v6, v7

    move-object/from16 v3, v16

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move/from16 v4, v20

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-wide/from16 p1, p3

    goto/16 :goto_3

    :catchall_6
    move-exception v0

    :goto_a
    move-wide/from16 v8, p3

    move-object v7, v12

    move-object/from16 v12, v16

    move-object/from16 v5, v17

    move-object/from16 v15, v19

    goto/16 :goto_12

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object/from16 v11, v22

    goto :goto_b

    :cond_10
    move-object/from16 v11, v22

    .line 1225
    :try_start_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :catchall_9
    move-exception v0

    move-object/from16 v19, v9

    .line 466
    :goto_b
    :try_start_13
    invoke-direct {v11}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterRead()V

    .line 467
    invoke-virtual {v11}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_a
    move-exception v0

    :goto_c
    move-object/from16 v17, v6

    move-object/from16 v19, v9

    goto :goto_a

    :catchall_b
    move-exception v0

    move-wide/from16 p3, v3

    goto :goto_c

    :cond_11
    move-object/from16 v16, v3

    move/from16 p3, v4

    move-wide/from16 v3, p1

    move-wide v9, v3

    move/from16 v4, p3

    .line 449
    :goto_d
    :try_start_14
    invoke-virtual {v8}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_e

    :catchall_c
    move-exception v0

    move-object/from16 v12, v16

    goto/16 :goto_13

    :cond_12
    :goto_e
    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_13
    if-eq v5, v12, :cond_14

    .line 451
    invoke-virtual {v12}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v17

    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v19

    sub-long v19, v19, v9

    add-long v8, v17, v19

    invoke-virtual {v12, v8, v9}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 453
    :cond_14
    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    move-object v3, v0

    move-object v10, v6

    move-wide v8, v13

    move-object/from16 v12, v16

    .line 1266
    :goto_f
    :try_start_15
    iget-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_1b

    .line 1268
    invoke-virtual {v12}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 1270
    invoke-virtual {v11}, Lio/ktor/utils/io/ByteBufferChannel;->getAvailableForRead()I

    move-result v0

    if-nez v0, :cond_16

    .line 1271
    iput-object v12, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$1:Ljava/lang/Object;

    iput-object v7, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$3:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$5:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$7:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$8:Ljava/lang/Object;

    iput-object v0, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->L$9:Ljava/lang/Object;

    iput-wide v8, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->J$0:J

    iput-boolean v4, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->Z$0:Z

    const/4 v1, 0x2

    iput v1, v2, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->label:I

    const/4 v5, 0x1

    invoke-direct {v11, v5, v2}, Lio/ktor/utils/io/ByteBufferChannel;->readSuspendImpl(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_15

    return-object v3

    :cond_15
    :goto_10
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1b

    goto :goto_11

    :cond_16
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 1278
    :goto_11
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-object/from16 v1, p0

    goto/16 :goto_2

    .line 446
    :cond_17
    :try_start_16
    invoke-virtual {v13}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :catchall_d
    move-exception v0

    move-wide v8, v5

    move-object v5, v12

    move-object v7, v5

    .line 449
    :goto_12
    :try_start_17
    invoke-virtual {v15}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    :cond_19
    if-eq v5, v7, :cond_1a

    .line 451
    invoke-virtual {v7}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v1

    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    move-result-wide v3

    sub-long/2addr v3, v8

    add-long/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Lio/ktor/utils/io/ByteBufferChannel;->setTotalBytesWritten$ktor_io(J)V

    .line 453
    :cond_1a
    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {v5}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw v0

    :cond_1b
    if-eqz v4, :cond_1c

    .line 1284
    invoke-virtual {v12}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 1287
    :cond_1c
    iget-wide v0, v10, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    return-object v0

    :catchall_e
    move-exception v0

    move-object/from16 v12, p0

    .line 1289
    :goto_13
    invoke-virtual {v12, v0}, Lio/ktor/utils/io/ByteBufferChannel;->close(Ljava/lang/Throwable;)Z

    .line 1290
    throw v0
.end method

.method public final currentState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 77
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->flushImpl(I)V

    return-void
.end method

.method public getAutoFlush()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->autoFlush:Z

    return v0
.end method

.method public getAvailableForRead()I
    .locals 1

    .line 95
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    iget-object v0, v0, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 12
    iget v0, v0, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForRead$internal:I

    return v0
.end method

.method public getClosedCause()Ljava/lang/Throwable;
    .locals 1

    .line 115
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTotalBytesRead()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesRead:J

    return-wide v0
.end method

.method public getTotalBytesWritten()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesWritten:J

    return-wide v0
.end method

.method public isClosedForRead()Z
    .locals 2

    .line 101
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v0

    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isClosedForWrite()Z
    .locals 1

    .line 104
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public readAvailable(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/internal/ChunkBuffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->readAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readRemaining(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->readRemaining$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final resolveChannelInstance$ktor_io()Lio/ktor/utils/io/ByteBufferChannel;
    .locals 0

    .line 0
    return-object p0
.end method

.method public final restoreStateAfterWrite$ktor_io()V
    .locals 5

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2424
    move-object v2, v1

    check-cast v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 277
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->stopWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    .line 278
    instance-of v3, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-virtual {v3}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 280
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    :cond_1
    sget-object v3, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2425
    invoke-static {v3, p0, v1, v2}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v2, v1, :cond_2

    .line 287
    check-cast v0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    :cond_2
    return-void
.end method

.method public setTotalBytesRead$ktor_io(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesRead:J

    return-void
.end method

.method public setTotalBytesWritten$ktor_io(J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->totalBytesWritten:J

    return-void
.end method

.method public final setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;
    .locals 7

    .line 217
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getWriteOp()Lkotlin/coroutines/Continuation;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    move-object v0, v1

    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/ByteBufferChannel;->_state:Ljava/lang/Object;

    .line 2419
    move-object v3, v2

    check-cast v3, Lio/ktor/utils/io/internal/ReadWriteBufferState;

    .line 232
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_1

    .line 233
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 234
    :cond_1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 237
    :cond_2
    sget-object v4, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleEmpty;

    if-ne v3, v4, :cond_4

    if-nez v0, :cond_3

    .line 238
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->newBuffer()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    move-result-object v0

    .line 239
    :cond_3
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v5

    goto :goto_0

    .line 242
    :cond_4
    sget-object v5, Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;->INSTANCE:Lio/ktor/utils/io/internal/ReadWriteBufferState$Terminated;

    if-ne v3, v5, :cond_6

    if-eqz v0, :cond_5

    .line 243
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    .line 245
    :cond_5
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 249
    :cond_6
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v5

    :goto_0
    sget-object v6, Lio/ktor/utils/io/ByteBufferChannel;->_state$FU:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2420
    invoke-static {v6, p0, v2, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$SafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v2

    if-nez v2, :cond_9

    .line 261
    invoke-virtual {v5}, Lio/ktor/utils/io/internal/ReadWriteBufferState;->getWriteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v0, :cond_8

    if-nez v3, :cond_7

    const-string v3, "old"

    .line 264
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v1, v3

    :goto_1
    if-eq v1, v4, :cond_8

    .line 265
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteBufferChannel;->releaseBuffer(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V

    :cond_8
    iget v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    .line 269
    iget-object v1, v5, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 18
    iget v1, v1, Lio/ktor/utils/io/internal/RingBufferCapacity;->_availableForWrite$internal:I

    .line 269
    invoke-direct {p0, v2, v0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    return-object v2

    .line 255
    :cond_9
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 256
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    .line 258
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 218
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write operation is already in progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteBufferChannel("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tryTerminate$ktor_io()Z
    .locals 2

    .line 384
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lio/ktor/utils/io/ByteBufferChannel;->tryReleaseBuffer(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 390
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeReadOp()V

    .line 391
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->resumeWriteOp()V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final tryWriteSuspend$ktor_io(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 2292
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendPredicate(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2293
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 2294
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_2
    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspensionSize:I

    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->attachedJob:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspension:Lkotlin/jvm/functions/Function1;

    .line 2299
    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_3

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_4

    return-object p1

    :cond_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_5
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspendContinuationCache:Lio/ktor/utils/io/internal/CancellableReusableContinuation;

    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel;->writeSuspension:Lkotlin/jvm/functions/Function1;

    .line 2304
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2305
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/ktor/utils/io/internal/CancellableReusableContinuation;->completeSuspendBlock(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    .line 2302
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_6

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_6
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_7

    return-object p1

    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public write(ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteBufferChannel;->write$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeAvailable(ILkotlin/jvm/functions/Function1;)I
    .locals 5

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p1, :cond_d

    const/16 v0, 0xff8

    if-gt p1, v0, :cond_c

    .line 441
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->setupStateForWrite$ktor_io()Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    goto :goto_2

    .line 442
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getState()Lio/ktor/utils/io/internal/ReadWriteBufferState;

    move-result-object v2

    iget-object v2, v2, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    .line 443
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getTotalBytesWritten()J

    .line 446
    :try_start_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getClosed()Lio/ktor/utils/io/internal/ClosedElement;

    move-result-object v3

    if-nez v3, :cond_9

    .line 1456
    invoke-virtual {v2, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->tryWriteAtLeast(I)I

    move-result p1

    if-gtz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    iget v1, p0, Lio/ktor/utils/io/ByteBufferChannel;->writePosition:I

    .line 1468
    invoke-direct {p0, v0, v1, p1}, Lio/ktor/utils/io/ByteBufferChannel;->prepareBuffer(Ljava/nio/ByteBuffer;II)V

    .line 1470
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v1

    .line 1471
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v3

    .line 1472
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result p2

    if-ne v3, p2, :cond_8

    .line 1475
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result p2

    sub-int v1, p2, v1

    if-ltz v1, :cond_7

    if-ltz v1, :cond_6

    .line 1479
    invoke-direct {p0, v0, v2, v1}, Lio/ktor/utils/io/ByteBufferChannel;->bytesWritten(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;I)V

    if-ge v1, p1, :cond_2

    sub-int/2addr p1, v1

    .line 1482
    invoke-virtual {v2, p1}, Lio/ktor/utils/io/internal/RingBufferCapacity;->completeRead(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 449
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 453
    :cond_4
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    move v4, v1

    move v1, p1

    move p1, v4

    :goto_2
    if-nez v1, :cond_5

    const/4 p1, -0x1

    :cond_5
    return p1

    .line 1477
    :cond_6
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_7
    const-string p1, "Position has been moved backward: pushback is not supported"

    .line 1476
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    const-string p1, "Buffer limit modified"

    .line 1473
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 446
    :cond_9
    invoke-virtual {v3}, Lio/ktor/utils/io/internal/ClosedElement;->getSendException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannelKt;->access$rethrowClosed(Ljava/lang/Throwable;)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    :goto_3
    invoke-virtual {v2}, Lio/ktor/utils/io/internal/RingBufferCapacity;->isFull()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->getAutoFlush()Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->flush()V

    .line 453
    :cond_b
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->restoreStateAfterWrite$ktor_io()V

    .line 454
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteBufferChannel;->tryTerminate$ktor_io()Z

    throw p1

    .line 1450
    :cond_c
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Min("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") shouldn\'t be greater than 4088"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1449
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "min should be positive"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeAvailable$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeFully(Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;Lio/ktor/utils/io/core/Buffer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public writeFully([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteBufferChannel;->writeFully$suspendImpl(Lio/ktor/utils/io/ByteBufferChannel;[BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
