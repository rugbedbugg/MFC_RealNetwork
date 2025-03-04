.class public abstract Lio/ktor/utils/io/pool/NoPoolImpl;
.super Ljava/lang/Object;
.source "Pool.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/ObjectPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 39
    invoke-static {p0}, Lio/ktor/utils/io/pool/ObjectPool$DefaultImpls;->close(Lio/ktor/utils/io/pool/ObjectPool;)V

    return-void
.end method

.method public dispose()V
    .locals 0

    .line 0
    return-void
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 1

    .line 0
    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
