.class public abstract Lio/ktor/utils/io/pool/ByteArrayPoolKt;
.super Ljava/lang/Object;
.source "ByteArrayPool.kt"


# static fields
.field private static final ByteArrayPool:Lio/ktor/utils/io/pool/ObjectPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;

    invoke-direct {v0}, Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;-><init>()V

    sput-object v0, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->ByteArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-void
.end method

.method public static final getByteArrayPool()Lio/ktor/utils/io/pool/ObjectPool;
    .locals 1

    .line 0
    sget-object v0, Lio/ktor/utils/io/pool/ByteArrayPoolKt;->ByteArrayPool:Lio/ktor/utils/io/pool/ObjectPool;

    return-object v0
.end method
