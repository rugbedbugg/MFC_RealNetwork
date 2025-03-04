.class public final Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;
.super Lio/ktor/utils/io/internal/ReadWriteBufferState;
.source "ReadWriteBufferState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/internal/ReadWriteBufferState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IdleNonEmpty"
.end annotation


# instance fields
.field private final initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;)V
    .locals 3

    const-string v0, "initial"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->backingBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lio/ktor/utils/io/internal/ReadWriteBufferState;->capacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/ktor/utils/io/internal/ReadWriteBufferState;-><init>(Ljava/nio/ByteBuffer;Lio/ktor/utils/io/internal/RingBufferCapacity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    return-void
.end method


# virtual methods
.method public final getInitial()Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;
    .locals 1

    .line 0
    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    return-object v0
.end method

.method public startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 64
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getReadingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->startReading$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Reading;

    move-result-object v0

    return-object v0
.end method

.method public startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;
    .locals 1

    iget-object v0, p0, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->initial:Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;

    .line 65
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$Initial;->getWritingState$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/internal/ReadWriteBufferState$IdleNonEmpty;->startWriting$ktor_io()Lio/ktor/utils/io/internal/ReadWriteBufferState$Writing;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 0
    const-string v0, "IDLE(with buffer)"

    return-object v0
.end method
