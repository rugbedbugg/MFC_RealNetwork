.class public final Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;
.super Lio/ktor/utils/io/pool/DefaultPool;
.source "ByteArrayPool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/pool/ByteArrayPoolKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/16 v0, 0x80

    .line 7
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic produceInstance()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/ByteArrayPoolKt$ByteArrayPool$1;->produceInstance()[B

    move-result-object v0

    return-object v0
.end method

.method protected produceInstance()[B
    .locals 1

    .line 0
    const/16 v0, 0x1000

    new-array v0, v0, [B

    return-object v0
.end method
