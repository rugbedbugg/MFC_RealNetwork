.class public final Lio/ktor/utils/io/core/BytePacketBuilder;
.super Lio/ktor/utils/io/core/Output;
.source "BytePacketBuilder.kt"


# direct methods
.method public constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1

    const-string v0, "pool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/Output;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/ktor/utils/io/pool/ObjectPool;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 28
    sget-object p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object p1

    .line 27
    :cond_0
    invoke-direct {p0, p1}, Lio/ktor/utils/io/core/BytePacketBuilder;-><init>(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method


# virtual methods
.method public append(C)Lio/ktor/utils/io/core/BytePacketBuilder;
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lio/ktor/utils/io/core/Output;->append(C)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/ktor/utils/io/core/BytePacketBuilder;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/BytePacketBuilder;
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/ktor/utils/io/core/BytePacketBuilder;

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/BytePacketBuilder;
    .locals 0

    .line 74
    invoke-super {p0, p1, p2, p3}, Lio/ktor/utils/io/core/Output;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/ktor/utils/io/core/BytePacketBuilder;

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/Output;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(C)Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;)Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BytePacketBuilder;->append(Ljava/lang/CharSequence;II)Lio/ktor/utils/io/core/BytePacketBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final build()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 5

    .line 81
    invoke-virtual {p0}, Lio/ktor/utils/io/core/BytePacketBuilder;->getSize()I

    move-result v0

    .line 83
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->stealAll$ktor_io()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 84
    sget-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    invoke-virtual {v0}, Lio/ktor/utils/io/core/ByteReadPacket$Companion;->getEmpty()Lio/ktor/utils/io/core/ByteReadPacket;

    move-result-object v0

    goto :goto_0

    .line 85
    :cond_0
    new-instance v2, Lio/ktor/utils/io/core/ByteReadPacket;

    int-to-long v3, v0

    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->getPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    invoke-direct {v2, v1, v3, v4, v0}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method protected final closeDestination()V
    .locals 0

    .line 0
    return-void
.end method

.method protected final flush-62zg_DM(Ljava/nio/ByteBuffer;II)V
    .locals 0

    .line 0
    const-string p2, "source"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final getSize()I
    .locals 1

    .line 35
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Output;->get_size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BytePacketBuilder[0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
