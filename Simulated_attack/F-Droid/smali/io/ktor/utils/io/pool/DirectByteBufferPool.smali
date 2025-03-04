.class public final Lio/ktor/utils/io/pool/DirectByteBufferPool;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ByteBufferPools.kt"


# instance fields
.field private final bufferSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    iput p2, p0, Lio/ktor/utils/io/pool/DirectByteBufferPool;->bufferSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic clearInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DirectByteBufferPool;->clearInstance(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method protected clearInstance(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 42
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/DirectByteBufferPool;->produceInstance()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected produceInstance()Ljava/nio/ByteBuffer;
    .locals 1

    iget v0, p0, Lio/ktor/utils/io/pool/DirectByteBufferPool;->bufferSize:I

    .line 38
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic validateInstance(Ljava/lang/Object;)V
    .locals 0

    .line 33
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DirectByteBufferPool;->validateInstance(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected validateInstance(Ljava/nio/ByteBuffer;)V
    .locals 3

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    iget v1, p0, Lio/ktor/utils/io/pool/DirectByteBufferPool;->bufferSize:I

    const-string v2, "Check failed."

    if-ne v0, v1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
