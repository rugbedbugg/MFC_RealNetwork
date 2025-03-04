.class public abstract Lio/ktor/utils/io/pool/ObjectPool$DefaultImpls;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/pool/ObjectPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static close(Lio/ktor/utils/io/pool/ObjectPool;)V
    .locals 0

    .line 32
    invoke-interface {p0}, Lio/ktor/utils/io/pool/ObjectPool;->dispose()V

    return-void
.end method
