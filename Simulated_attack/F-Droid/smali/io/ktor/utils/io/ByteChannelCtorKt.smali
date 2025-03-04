.class public abstract Lio/ktor/utils/io/ByteChannelCtorKt;
.super Ljava/lang/Object;
.source "ByteChannelCtor.kt"


# direct methods
.method public static final ByteReadChannel([B)Lio/ktor/utils/io/ByteReadChannel;
    .locals 2

    const-string v0, "content"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lio/ktor/utils/io/ByteChannelKt;->ByteReadChannel([BII)Lio/ktor/utils/io/ByteReadChannel;

    move-result-object p0

    return-object p0
.end method
