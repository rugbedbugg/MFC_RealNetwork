.class public final Lkotlinx/serialization/internal/UShortArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "PrimitiveArraysSerializers.kt"


# instance fields
.field private buffer:[S

.field private position:I


# direct methods
.method private constructor <init>([S)V
    .locals 0

    .line 500
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 503
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 507
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UShortArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method

.method public synthetic constructor <init>([SLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/UShortArrayBuilder;-><init>([S)V

    return-void
.end method


# virtual methods
.method public final append-xj2QHRw$kotlinx_serialization_core(S)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 516
    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 517
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    invoke-static {v0, v1, p1}, Lkotlin/UShortArray;->set-01HTLdE([SIS)V

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortArrayBuilder;->build-amswpOA$kotlinx_serialization_core()[S

    move-result-object v0

    invoke-static {v0}, Lkotlin/UShortArray;->box-impl([S)Lkotlin/UShortArray;

    move-result-object v0

    return-object v0
.end method

.method public build-amswpOA$kotlinx_serialization_core()[S
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 520
    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/UShortArray;->constructor-impl([S)[S

    move-result-object v0

    return-object v0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 511
    invoke-static {v0}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    .line 512
    invoke-static {v0}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/UShortArray;->constructor-impl([S)[S

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->buffer:[S

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 1

    .line 0
    iget v0, p0, Lkotlinx/serialization/internal/UShortArrayBuilder;->position:I

    return v0
.end method
