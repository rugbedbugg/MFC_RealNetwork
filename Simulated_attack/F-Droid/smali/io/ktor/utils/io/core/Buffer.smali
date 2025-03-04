.class public abstract Lio/ktor/utils/io/core/Buffer;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/Buffer$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/Buffer$Companion;


# instance fields
.field private final capacity:I

.field private limit:I

.field private final memory:Ljava/nio/ByteBuffer;

.field private readPosition:I

.field private startGap:I

.field private writePosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lio/ktor/utils/io/core/Buffer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/Buffer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/Buffer;->Companion:Lio/ktor/utils/io/core/Buffer$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    .line 21
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result p1

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Buffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public final commitWritten(I)V
    .locals 2

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    add-int/2addr v0, p1

    if-ltz p1, :cond_0

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    if-gt v0, v1, :cond_0

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 94
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/BufferKt;->commitWrittenFailed(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final commitWrittenUntilIndex(I)Z
    .locals 2

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-lt p1, v1, :cond_2

    if-lt p1, v0, :cond_1

    if-ne p1, v0, :cond_0

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-int/2addr p1, v1

    .line 74
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 113
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/BufferKt;->commitWrittenFailed(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    :cond_1
    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    const/4 p1, 0x1

    return p1

    :cond_2
    sub-int/2addr p1, v1

    .line 74
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 106
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/BufferKt;->commitWrittenFailed(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final discardExact(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    add-int/2addr v0, p1

    if-ltz p1, :cond_1

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-gt v0, v1, :cond_1

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    return-void

    .line 69
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 86
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/BufferKt;->discardFailed(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final discardUntilIndex$ktor_io(I)V
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    sub-int/2addr p1, v0

    .line 69
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 122
    invoke-static {p1, v0}, Lio/ktor/utils/io/core/BufferKt;->discardFailed(II)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public final getCapacity()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    return v0
.end method

.method public final getLimit()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    return v0
.end method

.method public final getMemory-SK3TCg8()Ljava/nio/ByteBuffer;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getReadPosition()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    return v0
.end method

.method public final getStartGap()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    return v0
.end method

.method public final getWritePosition()I
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    return v0
.end method

.method public final readByte()B
    .locals 2

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget-object v1, p0, Lio/ktor/utils/io/core/Buffer;->memory:Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0

    .line 304
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No readable bytes available."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final releaseEndGap$ktor_io()V
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    return-void
.end method

.method public final releaseGaps$ktor_io()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->releaseStartGap$ktor_io(I)V

    .line 234
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->releaseEndGap$ktor_io()V

    return-void
.end method

.method public final releaseStartGap$ktor_io(I)V
    .locals 2

    if-ltz p1, :cond_2

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    :cond_0
    return-void

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newReadPosition shouldn\'t be ahead of the read position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 243
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newReadPosition shouldn\'t be negative: "

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

.method public final reserveEndGap(I)V
    .locals 3

    if-ltz p1, :cond_4

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    sub-int/2addr v0, p1

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-lt v0, v1, :cond_0

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    return-void

    :cond_0
    if-gez v0, :cond_1

    .line 183
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->endGapReservationFailedDueToCapacity(Lio/ktor/utils/io/core/Buffer;I)V

    :cond_1
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    if-ge v0, v1, :cond_2

    .line 186
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->endGapReservationFailedDueToStartGap(Lio/ktor/utils/io/core/Buffer;I)V

    :cond_2
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iget v2, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-ne v1, v2, :cond_3

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    return-void

    .line 196
    :cond_3
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->endGapReservationFailedDueToContent(Lio/ktor/utils/io/core/Buffer;I)V

    return-void

    .line 174
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endGap shouldn\'t be negative: "

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

.method public final reserveStartGap(I)V
    .locals 2

    if-ltz p1, :cond_3

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    if-lt v0, p1, :cond_0

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    return-void

    :cond_0
    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    if-gt p1, v0, :cond_1

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    return-void

    .line 156
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->startGapReservationFailedDueToLimit(Lio/ktor/utils/io/core/Buffer;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 165
    :cond_2
    invoke-static {p0, p1}, Lio/ktor/utils/io/core/BufferKt;->startGapReservationFailed(Lio/ktor/utils/io/core/Buffer;I)Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1

    .line 147
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGap shouldn\'t be negative: "

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

.method public reset()V
    .locals 0

    .line 327
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->releaseGaps$ktor_io()V

    .line 328
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->resetForWrite()V

    return-void
.end method

.method public final resetForWrite()V
    .locals 2

    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    sub-int/2addr v0, v1

    .line 214
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/core/Buffer;->resetForWrite(I)V

    return-void
.end method

.method public final resetForWrite(I)V
    .locals 1

    .line 0
    iget v0, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->readPosition:I

    iput v0, p0, Lio/ktor/utils/io/core/Buffer;->writePosition:I

    iput p1, p0, Lio/ktor/utils/io/core/Buffer;->limit:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(this, checkRadix(radix))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " used, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " free, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->startGap:I

    .line 59
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v2

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reserved of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/ktor/utils/io/core/Buffer;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
