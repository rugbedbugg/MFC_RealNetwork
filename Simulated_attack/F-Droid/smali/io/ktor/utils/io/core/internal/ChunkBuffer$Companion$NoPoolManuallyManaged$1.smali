.class public final Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;
.super Lio/ktor/utils/io/pool/NoPoolImpl;
.source "ChunkBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/core/internal/ChunkBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Lio/ktor/utils/io/pool/NoPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public borrow()Lio/ktor/utils/io/core/internal/ChunkBuffer;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This pool doesn\'t support borrow"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic borrow()Ljava/lang/Object;
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;->borrow()Lio/ktor/utils/io/core/internal/ChunkBuffer;

    move-result-object v0

    return-object v0
.end method

.method public recycle(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V
    .locals 1

    .line 0
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic recycle(Ljava/lang/Object;)V
    .locals 0

    .line 160
    check-cast p1, Lio/ktor/utils/io/core/internal/ChunkBuffer;

    invoke-virtual {p0, p1}, Lio/ktor/utils/io/core/internal/ChunkBuffer$Companion$NoPoolManuallyManaged$1;->recycle(Lio/ktor/utils/io/core/internal/ChunkBuffer;)V

    return-void
.end method
