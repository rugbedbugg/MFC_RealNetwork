.class public final Lkotlinx/serialization/internal/BooleanArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "PrimitiveArraysSerializers.kt"


# instance fields
.field private buffer:[Z

.field private position:I


# direct methods
.method public constructor <init>([Z)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    .line 392
    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 396
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/BooleanArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method


# virtual methods
.method public final append$kotlinx_serialization_core(Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 405
    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    .line 406
    invoke-virtual {p0}, Lkotlinx/serialization/internal/BooleanArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->position:I

    aput-boolean p1, v0, v1

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 1

    .line 386
    invoke-virtual {p0}, Lkotlinx/serialization/internal/BooleanArrayBuilder;->build$kotlinx_serialization_core()[Z

    move-result-object v0

    return-object v0
.end method

.method public build$kotlinx_serialization_core()[Z
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    .line 409
    invoke-virtual {p0}, Lkotlinx/serialization/internal/BooleanArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    .line 400
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 401
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->buffer:[Z

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/serialization/internal/BooleanArrayBuilder;->position:I

    return v0
.end method
