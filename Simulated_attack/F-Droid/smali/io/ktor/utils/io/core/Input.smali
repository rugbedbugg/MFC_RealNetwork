.class public abstract Lio/ktor/utils/io/core/Input;
.super Ljava/lang/Object;
.source "Input.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/Input$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/Input$Companion;


# instance fields
.field private _head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

.field private headEndExclusive:I

.field private headMemory:Ljava/nio/ByteBuffer;

.field private headPosition:I

.field private noMoreChunksAvailable:Z

.field private final pool:Lio/ktor/utils/io/pool/ObjectPool;

.field private tailRemaining:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lio/ktor/utils/io/core/Input$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/Input$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/Input;->Companion:Lio/ktor/utils/io/core/Input$Companion;

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V
    .locals 2

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    iput-object p1, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 60
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object p4

    iput-object p4, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result p4

    iput p4, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 66
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget p4, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    sub-int/2addr p1, p4

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    return-void
.end method

.method private final afterRead(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2

    .line 69
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    :cond_0
    return-void
.end method

.method private final appendView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 4

    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 705
    invoke-static {v0}, Lio/ktor/utils/io/core/BuffersKt;->findTail(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 706
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 707
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 711
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v2

    :cond_0
    invoke-virtual {p0, v2, v3}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    goto :goto_0

    .line 709
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "It should be no tail remaining bytes if current tail is EmptyBuffer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :cond_2
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    .line 714
    invoke-static {p1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    :goto_0
    return-void
.end method

.method private final atLeastMinCharactersRequire(I)Ljava/lang/Void;
    .locals 3

    .line 467
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " characters required but no bytes available"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final discardAsMuchAsPossible(II)I
    .locals 3

    :goto_0
    if-nez p1, :cond_0

    return p2

    :cond_0
    const/4 v0, 0x1

    .line 522
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Input;->prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    return p2

    .line 69
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 524
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 525
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    iget v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 527
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->afterRead(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    sub-int/2addr p1, v1

    add-int/2addr p2, v1

    goto :goto_0
.end method

.method private final doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 695
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    return-object v1

    .line 700
    :cond_1
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->appendView(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-object v0
.end method

.method private final ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3

    :goto_0
    if-ne p1, p2, :cond_0

    .line 634
    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1

    .line 637
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 638
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    if-nez v0, :cond_1

    .line 642
    invoke-direct {p0, p2}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    const-wide/16 v0, 0x0

    .line 643
    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    move-object p1, p2

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 647
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget-wide p1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    .line 69
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v1, v1

    sub-long/2addr p1, v1

    .line 648
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    return-object v0

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method private final fixGapAfterReadFallback(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 3

    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 590
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 591
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    const-wide/16 v0, 0x0

    .line 592
    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 59
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    .line 597
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 600
    invoke-direct {p0, p1, v0, v1}, Lio/ktor/utils/io/core/Input;->fixGapAfterReadFallbackUnreserved(Lio/ktor/utils/io/core/internal/ChunkBuffer;II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 602
    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 603
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Buffer;->reserveEndGap(I)V

    .line 604
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 606
    invoke-static {v1, p1, v0}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 607
    invoke-direct {p0, v1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :goto_0
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 610
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method private final fixGapAfterReadFallbackUnreserved(Lio/ktor/utils/io/core/internal/ChunkBuffer;II)V
    .locals 3

    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 617
    invoke-interface {v0}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 618
    invoke-interface {v1}, Lio/ktor/utils/io/pool/ObjectPool;->borrow()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    const/16 v2, 0x8

    .line 620
    invoke-virtual {v0, v2}, Lio/ktor/utils/io/core/Buffer;->reserveEndGap(I)V

    .line 621
    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/Buffer;->reserveEndGap(I)V

    .line 622
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 623
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    sub-int/2addr p2, p3

    .line 625
    invoke-static {v0, p1, p2}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 626
    invoke-static {v1, p1, p3}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    .line 628
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 629
    invoke-static {v1}, Lio/ktor/utils/io/core/BuffersKt;->remainingAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    return-void
.end method

.method private final minShouldBeLess(II)Ljava/lang/Void;
    .locals 3

    .line 470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "min should be less or equal to max but min = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", max = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final minSizeIsTooBig(I)Ljava/lang/Void;
    .locals 3

    .line 764
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minSize of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is too big (should be less than 8)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final prematureEndOfStreamChars(II)Ljava/lang/Void;
    .locals 3

    .line 472
    new-instance v0, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Premature end of stream: expected at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " chars but had only "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-direct {v0, p1}, Lio/ktor/utils/io/core/internal/MalformedUTF8InputException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 7

    .line 77
    :goto_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    return-object p2

    .line 735
    :cond_0
    invoke-virtual {p2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    if-nez v0, :cond_3

    .line 738
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-eq p2, v0, :cond_2

    .line 739
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/core/Input;->releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    :cond_2
    move-object p2, v1

    goto :goto_0

    :cond_3
    sub-int v0, p1, v0

    .line 745
    invoke-static {p2, v1, v0}, Lio/ktor/utils/io/core/BufferAppendKt;->writeBufferAppend(Lio/ktor/utils/io/core/Buffer;Lio/ktor/utils/io/core/Buffer;I)I

    move-result v0

    .line 746
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    iput v3, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget-wide v3, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 747
    invoke-virtual {p0, v3, v4}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 355
    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    if-le v3, v4, :cond_4

    .line 753
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/Buffer;->reserveStartGap(I)V

    goto :goto_1

    .line 749
    :cond_4
    invoke-virtual {p2, v2}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 750
    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->setNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 751
    invoke-virtual {v1, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    .line 69
    :goto_1
    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_5

    return-object p2

    :cond_5
    const/16 v0, 0x8

    if-gt p1, v0, :cond_6

    goto :goto_0

    .line 758
    :cond_6
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->minSizeIsTooBig(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method private final readASCII(Ljava/lang/Appendable;II)I
    .locals 12

    const/4 v0, 0x0

    if-nez p3, :cond_0

    if-nez p2, :cond_0

    return v0

    .line 431
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p2}, Lio/ktor/utils/io/core/Input;->atLeastMinCharactersRequire(I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_2
    if-lt p3, p2, :cond_f

    const/4 v1, 0x1

    .line 824
    invoke-static {p0, v1}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    if-nez v2, :cond_3

    move v3, v0

    goto/16 :goto_6

    :cond_3
    move v3, v0

    move v4, v3

    .line 376
    :cond_4
    :try_start_0
    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v6

    invoke-virtual {v2}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v7

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_8

    .line 26
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v10, v9, 0xff

    const/16 v11, 0x80

    and-int/2addr v9, v11

    if-eq v9, v11, :cond_7

    int-to-char v9, v10

    if-ne v3, p3, :cond_5

    move v9, v0

    goto :goto_1

    .line 443
    :cond_5
    invoke-interface {p1, v9}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v3, v3, 0x1

    move v9, v1

    :goto_1
    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move v0, v1

    goto :goto_7

    :cond_7
    :goto_2
    sub-int/2addr v8, v6

    .line 13
    invoke-virtual {v2, v8}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move v5, v0

    goto :goto_3

    :cond_8
    sub-int/2addr v7, v6

    .line 377
    invoke-virtual {v2, v7}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v1

    :goto_3
    if-eqz v5, :cond_9

    move v5, v1

    goto :goto_4

    :cond_9
    if-ne v3, p3, :cond_a

    move v5, v0

    goto :goto_4

    :cond_a
    move v5, v0

    move v4, v1

    :goto_4
    if-nez v5, :cond_b

    .line 838
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_5

    .line 832
    :cond_b
    :try_start_1
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_4

    :goto_5
    move v0, v4

    :goto_6
    if-eqz v0, :cond_c

    sub-int/2addr p2, v3

    sub-int/2addr p3, v3

    .line 460
    invoke-direct {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Input;->readUtf8(Ljava/lang/Appendable;II)I

    move-result p1

    add-int/2addr v3, p1

    return v3

    :cond_c
    if-lt v3, p2, :cond_d

    return v3

    .line 462
    :cond_d
    invoke-direct {p0, p2, v3}, Lio/ktor/utils/io/core/Input;->prematureEndOfStreamChars(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :catchall_1
    move-exception p1

    :goto_7
    if-eqz v0, :cond_e

    .line 838
    invoke-static {p0, v2}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_e
    throw p1

    .line 432
    :cond_f
    invoke-direct {p0, p2, p3}, Lio/ktor/utils/io/core/Input;->minShouldBeLess(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public static synthetic readText$default(Lio/ktor/utils/io/core/Input;IIILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const p2, 0x7fffffff

    .line 411
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/core/Input;->readText(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: readText"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final readUtf8(Ljava/lang/Appendable;II)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x1

    .line 854
    invoke-static {v1, v4}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_0
    move v7, v4

    const/4 v8, 0x0

    .line 69
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v9

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-int/2addr v9, v10

    if-lt v9, v7, :cond_13

    .line 376
    :try_start_1
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v10

    move v11, v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v10, :cond_10

    .line 26
    invoke-virtual {v7, v11}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    and-int/lit16 v6, v15, 0xff

    and-int/lit16 v4, v15, 0x80

    const/16 v16, -0x1

    if-nez v4, :cond_5

    if-nez v12, :cond_4

    int-to-char v4, v6

    if-ne v8, v3, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    .line 484
    :cond_2
    :try_start_2
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_3

    sub-int/2addr v11, v9

    .line 134
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    const/4 v4, 0x1

    goto/16 :goto_c

    :cond_3
    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_9

    .line 132
    :cond_4
    invoke-static {v12}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedByteCount(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_5
    if-nez v12, :cond_8

    const/16 v4, 0x80

    move v13, v6

    const/4 v6, 0x1

    :goto_4
    const/4 v14, 0x7

    if-ge v6, v14, :cond_6

    and-int v14, v13, v4

    if-eqz v14, :cond_6

    not-int v14, v4

    and-int/2addr v13, v14

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v12, -0x1

    sub-int v6, v10, v11

    if-le v12, v6, :cond_7

    sub-int/2addr v11, v9

    .line 158
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    move/from16 v16, v12

    goto :goto_2

    :cond_7
    move v14, v12

    move v12, v4

    goto :goto_3

    :cond_8
    shl-int/lit8 v4, v13, 0x6

    and-int/lit8 v6, v15, 0x7f

    or-int v13, v4, v6

    add-int/lit8 v12, v12, -0x1

    if-nez v12, :cond_3

    .line 168
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isBmpCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_a

    int-to-char v4, v13

    if-ne v8, v3, :cond_9

    const/4 v4, 0x0

    goto :goto_5

    .line 484
    :cond_9
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_d

    sub-int/2addr v11, v9

    sub-int/2addr v11, v14

    const/4 v4, 0x1

    add-int/2addr v11, v4

    .line 170
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto :goto_2

    .line 173
    :cond_a
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 176
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->highSurrogate(I)I

    move-result v4

    int-to-char v4, v4

    if-ne v8, v3, :cond_b

    const/4 v4, 0x0

    goto :goto_6

    .line 484
    :cond_b
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_e

    .line 177
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->lowSurrogate(I)I

    move-result v4

    int-to-char v4, v4

    if-ne v8, v3, :cond_c

    const/4 v4, 0x0

    goto :goto_7

    .line 484
    :cond_c
    invoke-interface {v0, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x1

    :goto_7
    if-nez v4, :cond_d

    goto :goto_8

    :cond_d
    const/4 v4, 0x1

    const/4 v13, 0x0

    goto :goto_9

    :cond_e
    :goto_8
    sub-int/2addr v11, v9

    sub-int/2addr v11, v14

    const/4 v4, 0x1

    add-int/2addr v11, v4

    .line 179
    :try_start_3
    invoke-virtual {v5, v11}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_c

    :cond_f
    const/4 v4, 0x1

    .line 174
    invoke-static {v13}, Lio/ktor/utils/io/core/internal/UTF8Kt;->malformedCodePoint(I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_10
    sub-int/2addr v10, v9

    .line 377
    invoke-virtual {v5, v10}, Lio/ktor/utils/io/core/Buffer;->discardExact(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v16, 0x0

    :goto_a
    if-nez v16, :cond_11

    move v7, v4

    goto :goto_b

    :cond_11
    if-lez v16, :cond_12

    move/from16 v7, v16

    goto :goto_b

    :cond_12
    const/4 v7, 0x0

    .line 69
    :goto_b
    :try_start_4
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v9

    sub-int v9, v6, v9

    goto :goto_d

    :catchall_2
    move-exception v0

    goto :goto_12

    :goto_c
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    .line 866
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_13
    :goto_d
    if-nez v9, :cond_14

    .line 875
    :try_start_5
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6

    goto :goto_f

    :catchall_3
    move-exception v0

    const/4 v4, 0x0

    goto :goto_12

    :cond_14
    if-lt v9, v7, :cond_16

    .line 59
    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v6

    invoke-virtual {v5}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v9

    sub-int/2addr v6, v9

    const/16 v9, 0x8

    if-ge v6, v9, :cond_15

    goto :goto_e

    :cond_15
    move-object v6, v5

    goto :goto_f

    .line 877
    :cond_16
    :goto_e
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    .line 878
    invoke-static {v1, v7}, Lio/ktor/utils/io/core/internal/UnsafeKt;->prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :goto_f
    if-nez v6, :cond_17

    const/4 v4, 0x0

    goto :goto_10

    :cond_17
    move-object v5, v6

    if-gtz v7, :cond_1

    :goto_10
    if-eqz v4, :cond_18

    .line 888
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_18
    move v6, v8

    :goto_11
    if-lt v6, v2, :cond_19

    return v6

    .line 497
    :cond_19
    invoke-direct {v1, v2, v6}, Lio/ktor/utils/io/core/Input;->prematureEndOfStreamChars(II)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :goto_12
    if-eqz v4, :cond_1a

    .line 888
    invoke-static {v1, v5}, Lio/ktor/utils/io/core/internal/UnsafeKt;->completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    :cond_1a
    throw v0
.end method

.method private final set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    iput-object p1, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    .line 50
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getMemory-SK3TCg8()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 52
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    return-void
.end method


# virtual methods
.method public final canRead()Z
    .locals 4

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    iget v1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public close()V
    .locals 1

    .line 212
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->release()V

    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    .line 216
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->closeSource()V

    return-void
.end method

.method protected abstract closeSource()V
.end method

.method public final discard(I)I
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 315
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->discardAsMuchAsPossible(II)I

    move-result p1

    return p1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative discard is not allowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final discardExact(I)V
    .locals 3

    .line 322
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->discard(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to discard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes due to end of packet"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 559
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final ensureNextHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected abstract fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;
.end method

.method public final fixGapAfterRead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 5

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->getNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->fixGapAfterReadFallback(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 59
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v2

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    sub-int/2addr v2, v3

    rsub-int/lit8 v2, v2, 0x8

    .line 568
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 569
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getStartGap()I

    move-result v3

    if-ge v3, v2, :cond_1

    .line 570
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Input;->fixGapAfterReadFallback(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void

    .line 573
    :cond_1
    invoke-static {v0, v2}, Lio/ktor/utils/io/core/BufferKt;->restoreStartGap(Lio/ktor/utils/io/core/Buffer;I)V

    if-le v1, v2, :cond_2

    .line 576
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->releaseEndGap$ktor_io()V

    .line 578
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 579
    invoke-virtual {p0, v0, v1}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget-wide v3, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    .line 69
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    int-to-long v0, v1

    sub-long/2addr v3, v0

    .line 582
    invoke-virtual {p0, v3, v4}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    .line 583
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 584
    invoke-virtual {p1, v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    :goto_0
    return-void
.end method

.method public final getEndOfInput()Z
    .locals 4

    .line 77
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lio/ktor/utils/io/core/Input;->doFill()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->_head:Lio/ktor/utils/io/core/internal/ChunkBuffer;

    iget v1, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    .line 57
    invoke-virtual {v0, v1}, Lio/ktor/utils/io/core/Buffer;->discardUntilIndex$ktor_io(I)V

    return-object v0
.end method

.method public final getHeadEndExclusive()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    return v0
.end method

.method public final getHeadMemory-SK3TCg8()Ljava/nio/ByteBuffer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/core/Input;->headMemory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getHeadPosition()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    return v0
.end method

.method public final getRemaining()J
    .locals 4

    .line 77
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadEndExclusive()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHeadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected final markNoMoreChunksAvailable()V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/ktor/utils/io/core/Input;->noMoreChunksAvailable:Z

    :cond_0
    return-void
.end method

.method public final prepareRead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 3

    .line 720
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    iget v1, p0, Lio/ktor/utils/io/core/Input;->headEndExclusive:I

    iget v2, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-object v0

    .line 722
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final prepareReadHead$ktor_io(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 554
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/ktor/utils/io/core/Input;->prepareReadLoop(ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final readText(II)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 412
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getEndOfInput()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    return-object p1

    .line 413
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getRemaining()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    int-to-long v2, p2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_2

    long-to-int p1, v0

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 414
    invoke-static {p0, p1, v0, p2, v0}, Lio/ktor/utils/io/core/StringsKt;->readTextExactBytes$default(Lio/ktor/utils/io/core/Input;ILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v0, 0x10

    .line 416
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {v0, p2}, Lkotlin/ranges/RangesKt;->coerceAtMost(II)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 417
    invoke-direct {p0, v1, p1, p2}, Lio/ktor/utils/io/core/Input;->readASCII(Ljava/lang/Appendable;II)I

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StringBuilder(capacity).\u2026builderAction).toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final release()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->getHead()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 198
    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 201
    invoke-direct {p0, v1}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    const-wide/16 v1, 0x0

    .line 202
    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 203
    invoke-static {v0, v1}, Lio/ktor/utils/io/core/BuffersKt;->releaseAll(Lio/ktor/utils/io/core/internal/ChunkBuffer;Lio/ktor/utils/io/pool/ObjectPool;)V

    :cond_0
    return-void
.end method

.method public final releaseHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 5

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->cleanNext()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    .line 775
    :cond_0
    invoke-direct {p0, v0}, Lio/ktor/utils/io/core/Input;->set_head(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    iget-wide v1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    .line 69
    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v3

    invoke-virtual {v0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    .line 776
    invoke-virtual {p0, v1, v2}, Lio/ktor/utils/io/core/Input;->setTailRemaining(J)V

    iget-object v1, p0, Lio/ktor/utils/io/core/Input;->pool:Lio/ktor/utils/io/pool/ObjectPool;

    .line 777
    invoke-virtual {p1, v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->release(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-object v0
.end method

.method public final setHeadPosition(I)V
    .locals 0

    .line 0
    iput p1, p0, Lio/ktor/utils/io/core/Input;->headPosition:I

    return-void
.end method

.method public final setTailRemaining(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lio/ktor/utils/io/core/Input;->tailRemaining:J

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tailRemaining shouldn\'t be negative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
