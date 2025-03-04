.class public final Lio/ktor/utils/io/core/ByteReadPacket;
.super Lio/ktor/utils/io/core/Input;
.source "ByteReadPacket.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/ByteReadPacket$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

.field private static final Empty:Lio/ktor/utils/io/core/ByteReadPacket;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/utils/io/core/ByteReadPacket$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Companion:Lio/ktor/utils/io/core/ByteReadPacket$Companion;

    .line 47
    new-instance v0, Lio/ktor/utils/io/core/ByteReadPacket;

    sget-object v1, Lio/ktor/utils/io/core/internal/ChunkBuffer;->Companion:Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;->getEmptyPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lio/ktor/utils/io/core/ByteReadPacket;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    sput-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Empty:Lio/ktor/utils/io/core/ByteReadPacket;

    return-void
.end method

.method public constructor <init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V
    .locals 1

    const-string v0, "head"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pool"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/core/Input;-><init>(Lio/ktor/utils/io/core/internal/ChunkBuffer;JLio/ktor/utils/io/pool/ObjectPool;)V

    .line 23
    invoke-virtual {p0}, Lio/ktor/utils/io/core/Input;->markNoMoreChunksAvailable()V

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lio/ktor/utils/io/core/ByteReadPacket;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/core/ByteReadPacket;->Empty:Lio/ktor/utils/io/core/ByteReadPacket;

    return-object v0
.end method


# virtual methods
.method protected final closeSource()V
    .locals 0

    .line 0
    return-void
.end method

.method protected final fill()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ByteReadPacket["

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
