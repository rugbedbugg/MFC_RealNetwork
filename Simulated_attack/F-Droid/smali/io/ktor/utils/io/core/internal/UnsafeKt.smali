.class public abstract Lio/ktor/utils/io/core/internal/UnsafeKt;
.super Ljava/lang/Object;
.source "Unsafe.kt"


# static fields
.field public static final EmptyByteArray:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lio/ktor/utils/io/core/internal/UnsafeKt;->EmptyByteArray:[B

    return-void
.end method

.method public static final completeReadHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getWritePosition()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 59
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getCapacity()I

    move-result v0

    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getLimit()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 39
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->fixGapAfterRead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lio/ktor/utils/io/core/Buffer;->getReadPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->setHeadPosition(I)V

    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->ensureNext(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    :goto_0
    return-void
.end method

.method public static final prepareReadFirstHead(Lio/ktor/utils/io/core/Input;I)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->prepareReadHead$ktor_io(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final prepareReadNextHead(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p0, :cond_1

    .line 48
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->canRead()Z

    move-result p1

    if-eqz p1, :cond_0

    check-cast p0, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 51
    :cond_1
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Input;->ensureNextHead$ktor_io(Lio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final prepareWriteHead(Lio/ktor/utils/io/core/Output;ILio/ktor/utils/io/core/internal/ChunkBuffer;)Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->afterHeadWrite()V

    .line 59
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/Output;->prepareWriteHead(I)Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object p0

    return-object p0
.end method
