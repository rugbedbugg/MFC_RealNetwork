.class public abstract Lio/ktor/utils/io/ByteReadChannelKt;
.super Ljava/lang/Object;
.source "ByteReadChannel.kt"


# direct methods
.method public static final cancel(Lio/ktor/utils/io/ByteReadChannel;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 221
    invoke-interface {p0, v0}, Lio/ktor/utils/io/ByteReadChannel;->cancel(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final readAvailable(Lio/ktor/utils/io/ByteReadChannel;[BLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 235
    array-length v0, p1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0, p2}, Lio/ktor/utils/io/ByteReadChannel;->readAvailable([BIILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
