.class public final Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;
.super Ljava/lang/Object;
.source "ChunkBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/core/internal/ChunkBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getEmpty()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 1

    .line 148
    invoke-static {}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->access$getEmpty$cp()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final getEmptyPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 135
    invoke-static {}, Lio/ktor/utils/io/core/internal/ChunkBuffer;->access$getEmptyPool$cp()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    return-object v0
.end method

.method public final getPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 130
    invoke-static {}, Lio/ktor/utils/io/core/BufferFactoryKt;->getDefaultChunkedBufferPool()Lio/ktor/utils/io/pool/ObjectPool;

    move-result-object v0

    return-object v0
.end method
