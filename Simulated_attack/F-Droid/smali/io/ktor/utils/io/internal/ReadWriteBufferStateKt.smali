.class public abstract Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;
.super Ljava/lang/Object;
.source "ReadWriteBufferState.kt"


# static fields
.field private static final EmptyByteBuffer:Ljava/nio/ByteBuffer;

.field private static final EmptyCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-string v2, "allocate(0)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    .line 9
    new-instance v1, Lio/ktor/utils/io/internal/RingBufferCapacity;

    invoke-direct {v1, v0}, Lio/ktor/utils/io/internal/RingBufferCapacity;-><init>(I)V

    sput-object v1, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    return-void
.end method

.method public static final getEmptyByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyByteBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public static final getEmptyCapacity()Lio/ktor/utils/io/internal/RingBufferCapacity;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/internal/ReadWriteBufferStateKt;->EmptyCapacity:Lio/ktor/utils/io/internal/RingBufferCapacity;

    return-object v0
.end method
